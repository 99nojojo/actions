import 'package:flutter/material.dart';
import 'package:flutter_actions/components/keframe/keframe.dart';
import 'package:flutter_actions/components/placeholders.dart';
import 'package:shimmer/shimmer.dart';

typedef ItemTap = void Function(int);

class FrameSeparateListView extends StatelessWidget {
  FrameSeparateListView(
      {super.key,
      required this.itemCount,
      this.placeHeight = 64,
      required this.builder,
      this.openOpacity = false,
      this.itemTap});

  final int itemCount;

  final double placeHeight;

  final bool openOpacity;

  final IndexedWidgetBuilder builder;

  final ItemTap? itemTap;

  @override
  Widget build(BuildContext context) {
    return SizeCacheWidget(
        child: SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => FrameSeparateWidget(
                    index: index,
                    placeHolder: Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.grey.shade100,
                        enabled: true,
                        child: ContentPlaceholder(
                          height: placeHeight,
                          lineType: ContentLineType.threeLines,
                        )),
                    child: Builder(
                      builder: (ctx) {
                        Widget widget = builder.call(ctx, index);
                        widget = openOpacity
                            ? OpacityTansWidget(
                                child: widget,
                              )
                            : widget;
                        return InkWell(
                          onTap: () {
                            itemTap?.call(index);
                          },
                          child: widget,
                        );
                      },
                    )),
                childCount: itemCount)));
  }
}
