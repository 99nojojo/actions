import 'package:flutter/material.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:rxdart/rxdart.dart';
import 'package:visibility_detector/visibility_detector.dart';

typedef BannerItemtBuilder<D> = Widget Function(
    BuildContext context, int index, dynamic data);

typedef OnIndexChanged<D> = void Function(int index, dynamic data);

class BannerSwiper<T> extends StatefulWidget {
  const BannerSwiper(
      {super.key,
      required this.bannerList,
      required this.itemBuilder,
      this.loop = false,
      this.showIndicator = false,
      this.height = 128,
      this.radius,
      this.pagination,
      this.autoplay = true,
      this.onNotification,
      this.onIndexChanged,
      this.scale,
      this.viewportFraction = 1,
      this.controller});

  final SwiperController? controller;
  final BannerItemtBuilder<T> itemBuilder;
  final List<T> bannerList;
  final bool loop;
  final bool showIndicator;
  final double height;
  final Radius? radius;
  final bool autoplay;
  final double? scale;
  final double viewportFraction;
  final OnIndexChanged<T>? onIndexChanged;
  final NotificationListenerCallback<ScrollNotification>? onNotification;

  final SwiperPlugin? pagination;

  @override
  State<BannerSwiper> createState() => _HomeAdSwiperState();
}

class _HomeAdSwiperState extends State<BannerSwiper> {
  final BehaviorSubject<int> indicatorController = BehaviorSubject.seeded(0);
  late SwiperController controller;

  @override
  void initState() {
    super.initState();
    controller = widget.controller ?? SwiperController();
  }


  @override
  void dispose() {
    indicatorController.close();
    controller.dispose();
    super.dispose();
  }

  void onVisibilityChanged(VisibilityInfo info) {
    var size = info.size;
    if (size.width > 0 && size.height > 0) {
      controller.startAutoplay();
    } else {
      controller.stopAutoplay();
    }
  }

  @override
  Widget build(BuildContext context) {
    var itemCount = widget.bannerList.length;
    Widget swiper = Swiper(
      key: widget.key ?? UniqueKey(),//没有key会报ScrollController not attached to any scroll views.
      loop: widget.loop,
      scale: widget.scale,
      itemWidth: 118.hx,
      autoplay: widget.autoplay,
      controller: controller,
      pagination: widget.pagination,
      viewportFraction: widget.viewportFraction,
      onIndexChanged: (index) {
        if (widget.showIndicator) {
          indicatorController.add(index);
        }
        widget.onIndexChanged?.call(index, widget.bannerList[index]);
      },
      itemCount: itemCount,
      itemBuilder: ((context, index) =>
          widget.itemBuilder(context, index, widget.bannerList[index])),
    );
    swiper = ClipRRect(
      borderRadius: BorderRadius.all(widget.radius ?? Radius.zero),
      child: swiper,
    );
    swiper = widget.height == 0
        ? swiper
        : SizedBox(
            height: widget.height,
            child: swiper,
          );
    //默认是开始自动滚动，定时会发向右的滚动事件，尽量在当前消费，避免上传影响上层控件
    //如果没有屏蔽与extended_nested_scroll_view搭配使用时会干扰对方，导致下拉刷新失败
    swiper = NotificationListener<ScrollNotification>(
      child: swiper,
      onNotification: (notification) {
        widget.onNotification?.call(notification);
        return true; //返回true才是拦截
      },
    );
    swiper = VisibilityDetector(
        key: const Key("BannerSwiper"),
        child: swiper,
        onVisibilityChanged: onVisibilityChanged);
    return itemCount == 0
        ? const SizedBox()
        : widget.showIndicator
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  swiper,
                  6.vGap,
                  StreamBuilder<int>(
                      initialData: indicatorController.value,
                      stream: indicatorController.stream,
                      builder: (_, snaptShopt) {
                        var currentIndex = snaptShopt.data ?? 0;
                        var indicators =
                            List<Widget>.generate(itemCount, (index) {
                          return Container(
                            margin: EdgeInsets.only(left: 4.hx),
                            width: 10.hx,
                            height: 2.vx,
                            color: currentIndex == index
                                ? const Color(0xff21aefb)
                                : const Color(0xffeaeaea),
                          );
                        });
                        return Container(
                          height: 4.vx,
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: indicators,
                          ),
                        );
                      })
                ],
              )
            : swiper;
  }
}
