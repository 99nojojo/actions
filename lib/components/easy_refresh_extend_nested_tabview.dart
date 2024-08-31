import 'dart:math';

import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_actions/components/components.dart';

import 'extended_nested_scroll/extended_nested_scroll.dart';

class ER_ExtendNestedTabView extends StatefulWidget {
  static final outerNested = GlobalKey<ExtendedNestedScrollViewState>();

  const ER_ExtendNestedTabView(
      {super.key,
      this.tabs = const [],
      required this.tabViewSlivers,
      this.headerSlivers = const [],
      this.pinnedHeaderSliverHeight = 0,
      this.onRefresh,
      this.onLoadMore,
      this.enableRefresh = true,
      this.enableLoadMore = true,
      this.tabHeader,
      this.tabController,
      this.hasTab = true,
      this.listenTabViewSliver,
      this.easyRefreshController,
      this.cacheExtent});

  final List<Widget> headerSlivers;
  final Widget? tabHeader;
  final List<Widget> tabs;
  final List<Widget> tabViewSlivers;
  final double pinnedHeaderSliverHeight;
  final Future<LoadResult> Function()? onRefresh;
  final Future<LoadResult> Function()? onLoadMore;
  final bool enableRefresh;
  final bool enableLoadMore;
  final TabController? tabController;
  final double? cacheExtent;
  final bool hasTab;
  final EasyRefreshController? easyRefreshController;
  final Function(ScrollNotification)? listenTabViewSliver;

  // 可以通过以下 拿到ExtendedNestedScrollView的body区的滚动控制器
  //  context.findAncestorStateOfType<ExtendedNestedScrollViewState>()!.innerController;

  @override
  State<ER_ExtendNestedTabView> createState() => _ER_ExtendNestedTabViewState();
}

class _ER_ExtendNestedTabViewState extends State<ER_ExtendNestedTabView>
    with TickerProviderStateMixin {
  EasyRefreshController? _easyRefreshController;
  TabController? tabController;
  int tabCount = 0;

  @override
  void initState() {
    _easyRefreshController = widget.easyRefreshController ??
        EasyRefreshController(
            controlFinishLoad: widget.enableLoadMore,
            controlFinishRefresh: widget.enableRefresh);
    if (widget.hasTab) {
      tabCount = widget.tabController == null
          ? widget.tabs.length
          : widget.tabController!.length;
    } else {
      tabCount = 1;
    }

    tabController =
        widget.tabController ?? TabController(length: tabCount, vsync: this);
  }

  @override
  void dispose() {
    _easyRefreshController?.dispose();
    tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh.builder(
        controller: _easyRefreshController,
        header: const ClassicHeader(
            clamping: true,
            position: IndicatorPosition.locator,
            mainAxisAlignment: MainAxisAlignment.end),
        footer: const ClassicFooter(
          infiniteOffset: null,
          position: IndicatorPosition.locator,
        ),
        onRefresh: () async {
          await widget.onRefresh?.call();
          _easyRefreshController?.finishRefresh();
          _easyRefreshController?.resetFooter();
        },
        onLoad: () async {
          if (widget.onLoadMore != null) {
            var loadResult = await widget.onLoadMore?.call();
            if (loadResult!.success) {
              if (loadResult.hasMore) {
                _easyRefreshController?.finishLoad(IndicatorResult.none);
              } else {
                _easyRefreshController?.finishLoad(IndicatorResult.noMore);
              }
            }
          } else {
            _easyRefreshController?.finishLoad(IndicatorResult.none);
          }
        },
        childBuilder: (_, physics) {
          return ScrollConfiguration(
              behavior: const ERScrollBehavior(),
              child: ExtendedNestedScrollView(
                onlyOneScrollInBody: true,
                physics: physics,
                pinnedHeaderSliverHeightBuilder: () =>
                    widget.pinnedHeaderSliverHeight,
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return [
                    const HeaderLocator.sliver(clearExtent: false),
                    ...widget.headerSlivers
                  ];
                },
                body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      widget.tabHeader ??
                          TabBar(
                            controller: tabController,
                            tabs: widget.tabs,
                          ),
                      Expanded(
                          child: TabBarView(
                        controller: tabController,
                        children: List.generate(tabCount, (index) {
                          return ExtendedVisibilityDetector(
                            uniqueKey: Key("tab$index"),
                            child: KeepAlivePage(
                              child: NotificationListener<ScrollNotification>(
                                onNotification: (notification) {
                                  widget.listenTabViewSliver
                                      ?.call(notification);
                                  return false;
                                },
                                child: CustomScrollView(
                                  cacheExtent: widget.cacheExtent,
                                  physics: physics,
                                  slivers: [
                                    widget.tabViewSlivers[index],
                                    widget.enableLoadMore
                                        ? const FooterLocator.sliver()
                                        : const SliverToBoxAdapter(),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                      ))
                    ]),
              ));
        });
  }
}
