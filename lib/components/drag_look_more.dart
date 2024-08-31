import 'dart:async';

import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_actions/components/components.dart';
// import 'package:flutter_actions/routes/route_manager.dart';
import 'package:get/get.dart';

import '../utils/utils.dart';

typedef LookMoreCallBack = FutureOr<T> Function<T>(BuildContext ctx);

class DragLookMoreWidget extends StatefulWidget {
  DragLookMoreWidget(
      {super.key,
      this.height = 156,
      this.hideWidth = 48,
      this.callback,
      this.onPageChanged,
      required this.itemBuilder,
      this.itemCount = 0});

  final double height;

  final double hideWidth;

  final VoidCallback? callback;

  final ValueChanged<int>? onPageChanged;

  final IndexedWidgetBuilder itemBuilder;

  final int itemCount;

  @override
  State<DragLookMoreWidget> createState() => _DragLookMoreWidgetState();
}

class _DragLookMoreWidgetState extends State<DragLookMoreWidget> {
  final GlobalKey<SideScrollViewState> dragHKey =
      GlobalKey<SideScrollViewState>();

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: NotificationListener<ScrollNotification>(
        //备注1
        onNotification: (notification) {
          if (notification is OverscrollNotification) {
            var dragDetails = notification.dragDetails;
            if (dragDetails != null) {
              dragHKey.currentState?.updatePosition(notification.dragDetails!);
            }
          }
          if (notification is ScrollEndNotification) {
            dragHKey.currentState?.updateEndState();
          }
          return false;
        },
        child: PageView.builder(
            allowImplicitScrolling: true,
            key: const PageStorageKey<String>("DragLookMore"),
            itemCount: widget.itemCount,
            onPageChanged: (page) => widget.onPageChanged!(page),
            controller: pageController,
            itemBuilder: (ctx, index) {
              Widget item = widget.itemBuilder.call(ctx, index);
              if (index == widget.itemCount - 1) {
                item = DragHideWidget(
                    key: dragHKey,
                    pageController: pageController,
                    height: widget.height,
                    hideWidth: widget.hideWidth,
                    content: item,
                    hideWidget: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "显示全部",
                        style: getTextStyle(color: Colors.black54, size: 8),
                      ),
                    ),
                    callback: () {
                      widget.callback?.call();
                      (dragHKey.currentState as SideScrollViewState)
                          .animationController
                          .reset();
                    });
              }
              return item;
            }),
      ),
    );
  }
}

class DraRightShowMore extends StatefulWidget {
  const DraRightShowMore(
      {super.key, required this.childBuilder, required this.hideWidth});

  final ERChildBuilder childBuilder;
  final double hideWidth;

  @override
  State<DraRightShowMore> createState() => _DraRightShowMoreState();
}

class _DraRightShowMoreState extends State<DraRightShowMore> {
  late EasyRefreshController _refreshController;

  bool jump = false;
  double jumpOffset = 0;

  @override
  void initState() {
    super.initState();
    jumpOffset = widget.hideWidth * 0.75;
    _refreshController = EasyRefreshController(controlFinishLoad: true);
  }

  void lookMoreImage(IndicatorState state) async {
    if (jump) return;
    jump = state.mode == IndicatorMode.drag && state.offset >= jumpOffset;
    if (jump) {
      // SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      //   Get.toNamed(
      //     RoutePath.JX_IMAGES,
      //   )?.then((value) => jump = false);
      // });
    }
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh.builder(
        controller: _refreshController,
        onLoad: () {
          _refreshController.finishLoad(IndicatorResult.none, true);
          _refreshController.resetFooter();
        },
        header: const NotRefreshHeader(clamping: true),
        footer: BuilderFooter(
            builder: (_, state) {
              lookMoreImage(state);
              return Container(
                alignment: Alignment.centerRight,
                width: widget.hideWidth,
                child: Text(
                  "显示全部",
                  style: getTextStyle(color: Colors.black54, size: 8),
                ),
              );
            },
            position: IndicatorPosition.behind,
            maxOverOffset: widget.hideWidth,
            clamping: false,
            triggerOffset: widget.hideWidth,
            infiniteOffset: null),
        // footer: ClassicFooter(
        //   infiniteOffset: null,//设置为null才能自动恢复原位
        //   triggerOffset: 54,
        //   maxOverOffset: 54,
        //   messageText: "",
        //   dragText: "查看全部",
        //   armedText: "查看全部",
        //   processedText: "查看全部",
        //   position: IndicatorPosition.behind,
        // ),
        childBuilder: (ctx, physic) => widget.childBuilder(ctx, physic));
  }
}
