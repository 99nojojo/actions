import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:flutter_actions/components/after_layout.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';

class StickyHeaderListLayout extends StatefulWidget {
  const StickyHeaderListLayout(
      {super.key,
      required this.headList,
      required this.bodyList,
      this.headBuilder,
      this.bodySliveBuilder,
      this.showCategory = false,
      this.headerLayout = const SizedBox.shrink(),
      required this.headItemHeight,
      required this.bodyItemHeight,
      this.floatCategory = true});

  final Widget? headerLayout;
  final Map<String, int> headList;
  final List<dynamic> bodyList;
  final double headItemHeight;
  final double bodyItemHeight;
  final Widget Function(dynamic head, double height)? headBuilder;
  final Widget Function(dynamic body, double height)? bodySliveBuilder;
  final bool showCategory;
  final bool floatCategory;

  @override
  State<StickyHeaderListLayout> createState() => _StickyHeaderListLayoutState();
}

class _StickyHeaderListLayoutState extends State<StickyHeaderListLayout> {
  StickyHeaderController? _headerController;
  Map<String, double> categoryLocation = {};
  ScrollController? _controller;
  double totalHeight = 0; //容器的高度
  double headerLayoutHeight = 0;

  BehaviorSubject<String>? categoryController;

  @override
  void initState() {
    super.initState();
    categoryController = BehaviorSubject.seeded("选");
    _controller = ScrollController();
    _headerController = StickyHeaderController()
      ..addListener(() {
        print(_headerController!.stickyHeaderScrollOffset);
      });
    caculateCategoryLocation();
  }

  void changeCategory(String category) {
    double location = categoryLocation[category] as double;
    var currentLocation = location + headerLayoutHeight;
    _controller?.jumpTo(currentLocation);
    if (categoryController!.value != category) {
      categoryController?.add(category);
    }
  }

  void caculateCategoryLocation() {
    var count = widget.headList.length;
    var headHeight = widget.headItemHeight;
    var bodyHeight = widget.bodyItemHeight;
    categoryLocation.putIfAbsent("选", () => 0);
    double lastCategoryLocation = 0;
    for (int i = 1; i <= count; i++) {
      var categoryItem = widget.headList.keys.elementAt(i - 1);
      var subCount = widget.headList.values.elementAt(i - 1);
      categoryLocation.putIfAbsent(categoryItem, () => lastCategoryLocation);
      lastCategoryLocation += (headHeight + (bodyHeight * subCount));
    }
  }

  @override
  Widget build(BuildContext context) {
    var categoryDetial = DefaultStickyHeaderController(
      child: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          var pixels = notification.metrics.pixels - headerLayoutHeight;
          String target = "";
          for (var item in categoryLocation.entries) {
            var category = item.key;
            var location = item.value;
            if (pixels >= location) {
              target = category;
            } else {
              if (categoryController!.value != target) {
                categoryController?.add(target);
              }
              break;
            }
          }
          if (target.isEmpty) {
            categoryController?.add("选");
          }
          return true;
        },
        child: AfterLayout(
          callback: (ral) {
            totalHeight = ral.size.height;
            caculateCategoryLocation();
          },
          child: CustomScrollView(
            controller: _controller,
            cacheExtent: 2 * Get.height,
            slivers: [
              SliverToBoxAdapter(
                child: AfterLayout(
                  callback: (ral) {
                    headerLayoutHeight = ral.size.height;
                  },
                  child: widget.headerLayout,
                ),
              ),
              ...List.generate(widget.headList.length, (index) {
                var header = widget.headBuilder != null
                    ? widget.headBuilder!.call(
                        widget.headList.keys.elementAt(index),
                        widget.headItemHeight)
                    : const SizedBox.shrink();
                var body = widget.bodySliveBuilder != null
                    ? widget.bodySliveBuilder!
                        .call(widget.bodyList[index], widget.bodyItemHeight)
                    : const SliverToBoxAdapter(
                        child: SizedBox.shrink(),
                      );
                return SliverStickyHeader(
                  controller: _headerController,
                  header: header,
                  sliver: body,
                );
              })
            ],
          ),
        ),
      ),
    );
    var categoryTitleLayout = Container(
      width: 20.hx,
      alignment: Alignment.center,
      child: StreamBuilder(
        initialData: categoryController!.value,
        stream: categoryController!.stream,
        builder: (context, snapshot) {
          var categoryText = snapshot.data ?? "选";
          return Listener(
              behavior: HitTestBehavior.deferToChild,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(categoryLocation.keys.length, (index) {
                  var text = categoryLocation.keys.elementAt(index);
                  bool isCheck = text == categoryText;
                  var decoration = isCheck
                      ? const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(100)))
                      : const BoxDecoration();
                  var textColor =
                      isCheck ? Colors.white : const Color(0xff7f7f7f);
                  double textSize = isCheck ? 7 : 8;
                  return GestureDetector(
                    child: Container(
                      decoration: decoration,
                      width: 12.hx,
                      height: 12.hx,
                      alignment: Alignment.center,
                      child: Text(
                        key: ValueKey("$index"),
                        text,
                        style: getTextStyle(size: textSize, color: textColor),
                      ),
                    ),
                    onTap: () => changeCategory(text),
                  );
                }),
              ));
        },
      ),
    );
    return widget.floatCategory
        ? Stack(
            children: [
              categoryDetial,
              widget.showCategory
                  ? Positioned(
                      right: 8.hx,
                      top: 0,
                      bottom: 0,
                      child: categoryTitleLayout)
                  : const SizedBox.shrink()
            ],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Expanded(child: categoryDetial), categoryTitleLayout],
          );
  }
}
