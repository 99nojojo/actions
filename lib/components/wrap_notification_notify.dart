// ignore_for_file: unnecessary_type_check

import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WrapWithNotify extends StatefulWidget {
  const WrapWithNotify({
    super.key,
    required this.child,
    this.pageController,
  });

  final Widget child;

  final PageController? pageController;

  @override
  State<WrapWithNotify> createState() => _WrapWithNotifyState();
}

class _WrapWithNotifyState extends State<WrapWithNotify> {
  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
        onNotification: (notification) => handleNotification(notification),
        child: widget.child);
  }

  Drag? drag;
  DragStartDetails? dragStartDetails;

  void setIgnorePointer(bool value) {
    ScrollableState? scrollable = Scrollable.maybeOf(context);
    scrollable?.setIgnorePointer(value);
  }

  bool handleNotification(ScrollNotification notification) {
    final ScrollMetrics metrics = notification.metrics;
    if (metrics.axis == Axis.horizontal) {
      if (notification is ScrollEndNotification) {
        var ignorePointer = metrics.atEdge || metrics.outOfRange;
        setIgnorePointer(ignorePointer);
      }
      return true; //拦截
    }
    return false;
  }
}

// if (notification is UserScrollNotification) {
//   var ignorePointer = metrics.atEdge;
//   debugPrint("是否到达边界:$ignorePointer");
// if (metrics.pixels == metrics.minScrollExtent &&
//     notification.direction == ScrollDirection.reverse) {
//   drag ??= widget.pageController?.position.drag(dragStartDetails!, () {
//     drag = null;
//   });
//   debugPrint("UserScrollNotification reverse:$dragStartDetails");
// } else if (metrics.pixels == metrics.maxScrollExtent &&
//     notification.direction == ScrollDirection.forward) {
//   drag ??= widget.pageController?.position.drag(dragStartDetails!, () {
//     drag = null;
//   });
//   debugPrint("UserScrollNotification forward:$dragStartDetails");
// }
// }
/**
 * 到了边界时，给外边的PageView持有的ScrollPosition发送拖动事件会导致外层PageView中的ScrollableState中
 * 的IgnorePointer的设置为true，这样下一次按下的指针事件由于无法往下传递，内层PageView无法进行命中测试，因此它的
 * 手势识别器无法在手势路由中注册，本次滑动还未抬起时触发的指针事件依然会分发给指针路由中已经注册的手势识别器，
 * 外层PageView与内层PageView的手势识别器虽然都注册了，但因为内层PageView的手势识别器是先注册，而于同一类型识别器
 * 当然是先注册的手势识别器默认竞技成功
 *
 * 一个系列的指针事件只能被唯一的一个手势识别器处理，基于这个无法像安卓那样能够无缝衔接处理滑动冲突
 * 就如DragHideWidget中外层Pageview滑动到边界无法立即滑出"查看更多"，只能通过NotificationListener去
 * 动态给外层的内层的PageView的ScrollPosition去修改滑出效果
 */
