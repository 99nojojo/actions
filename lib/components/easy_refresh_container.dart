import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';

class EasyRefreshContainer extends StatefulWidget {
  const EasyRefreshContainer(
      {super.key,
      this.child,
      this.onRefresh,
      this.onLoadMore,
      this.enableRefresh = true,
      this.enableLoadMore = true,
      this.refreshController,
      this.childBuilder});

  final Widget? child;
  final Future<LoadResult> Function()? onRefresh;
  final Future<LoadResult> Function()? onLoadMore;
  final bool enableRefresh;
  final bool enableLoadMore;
  final EasyRefreshController? refreshController;
  final ERChildBuilder? childBuilder;

  @override
  State<EasyRefreshContainer> createState() => _EasyRefreshContainerState();
}

class _EasyRefreshContainerState extends State<EasyRefreshContainer> {
  EasyRefreshController? _refreshController;

  @override
  void initState() {
    _refreshController = widget.refreshController ??
        EasyRefreshController(
          controlFinishRefresh: widget.enableRefresh,
          controlFinishLoad: widget.enableLoadMore,
        );
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh.builder(
      controller: _refreshController,
      refreshOnStart: false,
      resetAfterRefresh: true,
      header: const ClassicHeader(),
      footer: const ClassicFooter(),
      // refreshOnStartHeader: BuilderHeader(
      //     triggerOffset: 70,
      //     clamping: true,
      //     position: IndicatorPosition.behind,
      //     processedDuration: Duration.zero,
      //     builder: (_, state) {
      //       if (state.mode == IndicatorMode.inactive ||
      //           state.mode == IndicatorMode.done) {
      //         return const SizedBox();
      //       }
      //       return Container(
      //         padding: const EdgeInsets.only(bottom: 100),
      //         width: double.infinity,
      //         alignment: Alignment.center,
      //         child: const SpinKitFadingCube(
      //           size: 24,
      //           color: Colors.orangeAccent,
      //         ),
      //       );
      //     }),
      onRefresh: () async {
        await widget.onRefresh?.call();
        if (!mounted) return;
        _refreshController?.finishRefresh();
        _refreshController?.resetFooter();
      },
      onLoad: () async {
        var loadResult = await widget.onLoadMore?.call();
        if (loadResult == null) {
          _refreshController?.finishLoad(IndicatorResult.noMore);
        }
        if (!mounted) return;
        if (loadResult!.success) {
          if (loadResult.hasMore) {
            _refreshController?.finishLoad(IndicatorResult.none);
          } else {
            _refreshController?.finishLoad(IndicatorResult.noMore);
          }
        } else {
          _refreshController?.finishLoad(IndicatorResult.fail);
        }
      },
      childBuilder: ((context, physics) {
        if (widget.child != null) return widget.child!;
        if (widget.childBuilder != null) {
          return widget.childBuilder!.call(context, physics);
        }
        return Container();
      }),
    );
  }
}

class LoadResult {
  final bool success;
  final bool hasMore;

  LoadResult({this.success = true, this.hasMore = true});
}
