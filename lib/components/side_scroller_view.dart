import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

const double _minFlingVelocity = 700.0;
const double _closeProgressThreshold = 0.7;

class DragHideWidget extends StatefulWidget {
  DragHideWidget({
    super.key,
    required this.height,
    required this.hideWidth,
    required this.content,
    this.callback,
    this.pageController,
    required this.hideWidget,
  });

  final double height;
  final double hideWidth;
  final Widget content;
  final Widget hideWidget;
  final PageController? pageController;
  VoidCallback? callback;

  @override
  State<DragHideWidget> createState() => SideScrollViewState();
}

class SideScrollViewState extends State<DragHideWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  get isStart => animationController.value == animationController.lowerBound;

  get isEnd => animationController.value == animationController.upperBound;

  Drag? drag;

  @override
  void dispose() {
    animationController.dispose();
    drag = null;
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 250),
        reverseDuration: const Duration(milliseconds: 200));
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed &&
          animationController.value == animationController.upperBound) {
        widget.callback?.call();
      }
    });
    SchedulerBinding.instance.scheduleTask(() {}, Priority.animation);
  }

  double startX = 0;

  void _handleDragStart(DragStartDetails details) {
    startX = details.localPosition.dx;
    if (isStart) {
      drag = widget.pageController?.position.drag(details, () {});
    }
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    var diff = details.localPosition.dx - startX;
    debugPrint("滑动距离：${details.primaryDelta}");
    if (diff > 0 && isStart) {
      //从原点向左滑动驱动外部PageView
      drag?.update(details);
    } else {
      updatePosition(details);
    }
  }

  void updatePosition(DragUpdateDetails details) {
    animationController.value -=
        ((details.primaryDelta! * 0.5) / widget.hideWidth);
  }

  void updateEndState() {
    if (animationController.value > 0) {
      if (animationController.value < _closeProgressThreshold) {
        //这里表示的是慢慢拖动，当内容区域已经隐藏一半才会触发让其自动滚动隐藏
        if (animationController.value > 0.0) {
          animationController.fling(velocity: -1.0); //快速移动到初始位置
        }
      } else {
        //如果不满足以上，就恢复到完全显示状态
        animationController.forward();
      }
    }
  }

  void _handleDragEnd(DragEndDetails details) {
    drag?.end(details);
    if (details.velocity.pixelsPerSecond.dy > _minFlingVelocity) {
      //y方向上每秒速度的像素数。
      final double flingVelocity =
          details.velocity.pixelsPerSecond.dy / widget.hideWidth;
      //向下快速滑动，那么内容区域自动向下滚动直到隐藏
      if (animationController.value > 0.0) {
        animationController.fling(velocity: flingVelocity);
      }
    } else if (animationController.value < _closeProgressThreshold) {
      //这里表示的是慢慢拖动，当内容区域已经隐藏一半才会触发让其自动滚动隐藏
      if (animationController.value > 0.0) {
        animationController.fling(velocity: -1.0); //快速移动到初始位置
      }
    } else {
      //如果不满足以上，就恢复到完全显示状态
      animationController.forward();
    }
  }

  void _handleDragCancel() {
    drag?.cancel();
  }

  bool extentChanged(DraggableScrollableNotification notification) {
    if (notification.extent == notification.maxExtent) {
      widget.callback?.call();
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var totalWidth = screenWidth + widget.hideWidth;
    return NotificationListener<DraggableScrollableNotification>(
      onNotification: extentChanged,
      child: AnimatedBuilder(
          animation: animationController,
          builder: (_, child) {
            var value = animationController.value;
            return ClipRect(
              child: CustomSingleChildLayout(
                delegate: SheetLayout(
                    widget.height, widget.hideWidth, value, totalWidth),
                child: GestureDetector(
                    onHorizontalDragStart: _handleDragStart,
                    onHorizontalDragUpdate: _handleDragUpdate,
                    onHorizontalDragEnd: _handleDragEnd,
                    onHorizontalDragCancel: _handleDragCancel,
                    excludeFromSemantics: true,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: screenWidth,
                          height: widget.height,
                          child: widget.content,
                        ),
                        SizedBox(
                          width: widget.hideWidth,
                          child: widget.hideWidget,
                        )
                      ],
                    )),
              ),
            );
          }),
    );
  }
}

class SheetLayout extends SingleChildLayoutDelegate {
  SheetLayout(this.height, this.hideWidth, this.progress, this.maxWidth);

  final double height;
  final double maxWidth;
  final double hideWidth;
  final double progress; //滑动展示的宽度

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints(
      minWidth: maxWidth,
      maxWidth: maxWidth,
      minHeight: 0,
      maxHeight: height,
    );
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset(
        -progress * hideWidth, size.height / 2 - childSize.height / 2);
  }

  @override
  bool shouldRelayout(SheetLayout oldDelegate) {
    return height != oldDelegate.height ||
        hideWidth != oldDelegate.hideWidth ||
        progress != oldDelegate.progress ||
        maxWidth != oldDelegate.maxWidth;
  }
}
