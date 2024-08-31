import 'package:flutter/material.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'package:rxdart/rxdart.dart';

class ExpandGridView extends StatefulWidget {
  const ExpandGridView(
      {super.key,
      required this.itemCount,
      required this.mainAxisExtent,
      required this.itemBuilder,
      required this.crossAxisCount});

  final int itemCount;
  final double mainAxisExtent;
  final int crossAxisCount;
  final NullableIndexedWidgetBuilder itemBuilder;
  @override
  State<ExpandGridView> createState() => _ExpandGridViewState();
}

class _ExpandGridViewState extends State<ExpandGridView> {
  BehaviorSubject<double>? layoutHeight;

  double singleRowExtend = 0;
  double totalExtend = 0;
  int totalRow = 0;
  bool isExpend = false;

  @override
  void initState() {
    singleRowExtend = widget.mainAxisExtent;
    totalRow = ((widget.itemCount / widget.crossAxisCount) +
            (widget.itemCount % widget.crossAxisCount > 0 ? 1 : 0))
        .toInt();
    totalExtend = totalRow * singleRowExtend;
    layoutHeight = BehaviorSubject.seeded(singleRowExtend);
  }

  @override
  void dispose() {
    layoutHeight?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<double>(
        stream: layoutHeight!.stream,
        initialData: layoutHeight!.value,
        builder: (_, snapt) {
          return AnimatedContainer(
            height: snapt.data,
            duration: const Duration(milliseconds: 250),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: GridView.builder(
                        itemCount: widget.itemCount,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: widget.mainAxisExtent,
                            crossAxisCount: 3),
                        itemBuilder: (context, index) =>
                            widget.itemBuilder(context, index))),
                totalRow > 1
                    ? Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.hx),
                        child: GestureDetector(
                          behavior: HitTestBehavior.deferToChild,
                          child: Container(
                            alignment: Alignment.center,
                            width: widget.mainAxisExtent / 2,
                            height: widget.mainAxisExtent,
                            child: Text(
                              isExpend ? "关" : "开",
                              style:
                                  getTextStyle(size: 10, color: Colors.black),
                            ),
                          ),
                          onTap: () {
                            layoutHeight
                                ?.add(isExpend ? singleRowExtend : totalExtend);
                            isExpend = !isExpend;
                          },
                        ),
                      )
                    : const SizedBox.shrink()
              ],
            ),
          );
        });
  }
}
