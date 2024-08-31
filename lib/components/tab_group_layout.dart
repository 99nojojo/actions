import 'package:flutter/material.dart';

import '../utils/utils.dart';

final defaultBorder = Border.all(width: 0, color: Colors.transparent);

class TabGroupLayout extends StatefulWidget {
  const TabGroupLayout(
      {super.key,
      this.itemWidth = 42,
      this.itemHeight = 18,
      this.itemMarginRight = 10,
      this.titles = const [],
      this.checkTabBgColor = Colors.white,
      this.unCheckTabBgColor = Colors.grey,
      this.unCheckTabTextColor = Colors.black,
      this.checkTabTextColor = Colors.grey,
      this.isScroll = false,
      this.onChange,
      this.border,
      this.borderRadius,
      this.leftPading = 0,
      this.initialIndex = 0});

  final int initialIndex;
  final double itemWidth;
  final double itemHeight;
  final double leftPading;
  final Color checkTabTextColor;
  final Color unCheckTabTextColor;
  final Color checkTabBgColor;
  final Color unCheckTabBgColor;
  final double itemMarginRight;
  final List<String> titles;
  final bool isScroll;
  final Border? border;
  final BorderRadiusGeometry? borderRadius;

  final void Function(String title, int lastIndex, int currentIndex)? onChange;

  @override
  State<TabGroupLayout> createState() => _TabGroupLayoutState();
}

class _TabGroupLayoutState extends State<TabGroupLayout> {
  int currentIndex = 0;
  bool fromClick = false;
  @override
  void initState() {
    super.initState();
    currentIndex = widget.initialIndex;
  }

  @override
  void didUpdateWidget(covariant TabGroupLayout oldWidget) {
    if (widget.initialIndex != oldWidget.initialIndex) {
      currentIndex = widget.initialIndex;
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    currentIndex = widget.initialIndex;
  }

  void checkTab(String title, int position) {
    if (currentIndex != position) {
      if (fromClick) {
        widget.onChange?.call(title, currentIndex, position);
      }
      setState(() {
        currentIndex = position;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double marginRight = !widget.isScroll ? widget.itemMarginRight : 0;
    var tabs = List.generate(
      widget.titles.length,
      (index) {
        var title = widget.titles[index];
        return GestureDetector(
          child: Container(
              margin: EdgeInsets.only(right: marginRight),
              child: generateItem(currentIndex == index, index)),
          onTap: () {
            fromClick = true;
            checkTab(title, index);
            fromClick = false;
          },
        );
      },
    );
    Widget content = widget.isScroll
        ? SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: tabs,
            ),
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: tabs,
          );
    return widget.leftPading > 0
        ? Padding(
            padding: EdgeInsets.only(left: widget.leftPading),
            child: content,
          )
        : content;
  }

  Widget generateItem(bool isSelect, int index) {
    var border = isSelect ? widget.border ?? defaultBorder : defaultBorder;
    var tabBgColor =
        isSelect ? widget.checkTabBgColor : widget.unCheckTabBgColor;
    var textColor =
        isSelect ? widget.checkTabTextColor : widget.unCheckTabTextColor;
    var title = widget.titles[index];
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: tabBgColor, border: border, borderRadius: widget.borderRadius),
      width: widget.itemWidth,
      height: widget.itemHeight,
      child: Text(
        title,
        style: getTextStyle(size: 8, color: textColor),
      ),
    );
  }
}
