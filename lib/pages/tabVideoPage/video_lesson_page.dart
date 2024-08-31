import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'package:get/get.dart';

import '../../components/components.dart';
import '../../net/bean/bean.dart';
import '../../net/net.dart';

const lessons = ["科一", "科二", "科三", "科四"];
var tabTitleDistance = 16.vx + 13.sp;
var excellentItemHeight = 184.vx;

class VideoLessonPage extends StatefulWidget {
  const VideoLessonPage({super.key});

  @override
  State<VideoLessonPage> createState() => _VideoLessonPageState();
}

class _VideoLessonPageState extends State<VideoLessonPage>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  EasyRefreshController? _refreshController;
  ScrollController? _scrollController;
  var currentTabIndex = -1;
  bool showExcellentTab = false;

  int headerHeight = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: lessons.length, vsync: this);
    _refreshController = EasyRefreshController(
        controlFinishLoad: true, controlFinishRefresh: true);
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _controller?.dispose();
    _refreshController?.dispose();
    super.dispose();
  }

  double tabTitleYDistance(int index) {
    return tabTitleDistance +
        headerHeight +
        (excellentItemHeight + 4.vx) * index; //+ 300.vx
  }

  int indexTabTitle(double distance) {
    var index = (distance - headerHeight) ~/ (excellentItemHeight + 4.vx);
    index = index > 2 ? 2 : index;
    index = index < 0 ? 0 : index;
    print("headerHeight:$headerHeight  index:$index");
    return index;
  }

  _listenTabPosition(ScrollNotification notification) {
    var extent = notification.metrics.extentBefore;
    // print("extent:$extent");
    var tabIndex = indexTabTitle(extent);
    if (currentTabIndex != tabIndex) {
      Get.find<LessonController>().changeLessonCategory(tabIndex);
      currentTabIndex = tabIndex;
    }
  }

  @override
  Widget build(BuildContext context) {
    Get.put(LessonController());
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(top: 12.vx),
          color: const Color(0xfff2f6fa),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TabGroupLayout(
                titles: lessons,
                leftPading: 12.hx,
                itemWidth: 42.hx,
                isScroll: false,
                itemMarginRight: 8.hx,
                itemHeight: 18.vx,
                unCheckTabBgColor: const Color(0xffdef2fe),
                checkTabTextColor: const Color(0xff18a0e9),
                borderRadius: BorderRadius.all(Radius.circular(9.vx)),
                border: Border.all(color: const Color(0xff18a0e9), width: 1.hx),
                onChange: (_, lastIndex, index) {
                  _refreshController?.callRefresh(force: false).then((value) {
                    Get.find<LessonController>().loadData(index);
                  });
                },
              ),
              12.vGap,
              Expanded(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.hx),
                child: EasyRefreshContainer(
                  refreshController: _refreshController,
                  onLoadMore: () async {
                    return LoadResult(success: true, hasMore: false);
                  },
                  onRefresh: () =>
                      Get.find<LessonController>().refreshCurrentTab(),
                  childBuilder: (_, physics) {
                    return NotificationListener<ScrollNotification>(
                        onNotification: (notification) {
                      if (showExcellentTab) {
                        _listenTabPosition(notification);
                      }
                      return false;
                    }, child: Builder(
                      builder: (context) {
                        return CustomScrollView(
                            controller: _scrollController,
                            physics: physics,
                            slivers: [
                              SliverToBoxAdapter(
                                child: Column(children: [
                                  _bannerLayout(),
                                  _calendarLayout(),
                                  _recommendLessonLayout(),
                                ]),
                              ),
                              _excellentTabLayout(),
                              SliverToBoxAdapter(
                                child: AfterLayout(
                                  callback: (layout) {
                                    var height =
                                        layout.position(context)!.dy.toInt();
                                    if (height > headerHeight) {
                                      headerHeight = height;
                                    }
                                  },
                                  child: _lessonLayout(),
                                ),
                              ),
                              SliverToBoxAdapter(
                                child: _squareLayout(),
                              ),
                            ]);
                      },
                    ));
                  },
                ),
              ))
            ],
          )),
    );
  }

  _bannerLayout() {
    return GetX<LessonController>(builder: (controller) {
      return BannerSwiper<LessonBannerItemList>(
          radius: Radius.circular(6.hx),
          height: 140.vx,
          bannerList: controller.bannerList.value,
          itemBuilder: (context, index, data) {
            switch (data.bannerType) {
              case 1: //图片
                return getCacheNetImage(data.image!);
              case 2: //视频
                return                                                             VideoView(
                  videoUrl: data.video!,
                  allowMute: true,
                  showControls: false,
                );
              default:
                return Container();
            }
          });
    });
  }

  _calendarLayout() {
    return GetX<LessonController>(builder: (controller) {
      var calendarList = controller.calendarList.value;
      var length = calendarList.length;
      if (length == 0) return const SizedBox.shrink();
      return Container(
        margin: EdgeInsets.only(
          top: 12.vx,
        ),
        height: 70.vx,
        child: Row(
          children: [
            Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(6.hx))),
              width: 28.hx,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  getVerticalText("直播日历",
                      textStyle: getTextStyle(
                          size: 8, color: Colors.black, isBold: true)),
                  Container(
                    width: 10.hx,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(5.hx))),
                    height: 10.hx,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.arrow_right_sharp,
                      size: 10.hx,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            6.hGap,
            Expanded(
                child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                var data = calendarList[index];
                bool start =
                    data.startTime! <= DateTime.now().millisecondsSinceEpoch;
                print(start);
                return Container(
                  width: 118.hx,
                  margin: EdgeInsets.only(right: 8.hx),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6.hx)),
                      border: Border.all(
                          color:
                              start ? const Color(0xffb7d5dc) : Colors.grey)),
                  child: Column(
                    children: [
                      ListTile(
                        dense: true,
                        horizontalTitleGap: 4.hx,
                        leading: getCacheNetImage(data.teacherAvatar!,
                            width: 26.hx, height: 26.hx, radius: 4.hx),
                        title: Text(
                          data.title!,
                          maxLines: 1,
                          style: getTextStyle(
                              size: 10, color: Colors.black, isBold: true),
                        ),
                        subtitle: Text(
                          "${data.startTime}",
                          maxLines: 1,
                          style: getTextStyle(size: 8, color: Colors.grey),
                        ),
                      ),
                      Container(
                        width: 48.hx,
                        height: 16.vx,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: start
                                    ? Colors.transparent
                                    : const Color(0xff47bcf8)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.vx)),
                            color:
                                start ? const Color(0xff47bcf8) : Colors.white),
                        child: Text(
                          "立即听课",
                          style: getTextStyle(
                              size: 6,
                              color: start
                                  ? Colors.white
                                  : const Color(0xff47bcf8)),
                        ),
                      )
                    ],
                  ),
                );
              },
              itemCount: length,
            ))
          ],
        ),
      );
    });
  }

  _squareLayout() {
    return GetX<LessonController>(builder: ((controller) {
      var squareList = controller.squareList.value;
      var length = squareList.length;
      if (length == 0) return const SizedBox.shrink();
      return Container(
        margin: EdgeInsets.only(top: 12.vx),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(4.hx),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "直播广场",
                    style: getTextStyle(
                      size: 14,
                      color: Colors.black,
                      isBold: true,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "更多直播",
                        style: getTextStyle(color: Colors.black38, size: 11),
                      ),
                      2.hGap,
                      Container(
                        width: 12.hx,
                        height: 12.hx,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color(0xfff6512e),
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.hx))),
                        child: Text(
                          "5",
                          style: getTextStyle(size: 6, color: Colors.white),
                        ),
                      ),
                      2.hGap,
                      const Icon(Icons.arrow_right_sharp)
                    ],
                  )
                ],
              ),
            ),
            6.vGap,
            GridView.builder(
                shrinkWrap: true,
                itemCount: length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 6.vx,
                    crossAxisSpacing: 8.hx,
                    crossAxisCount: 2),
                itemBuilder: (_, index) {
                  var item = squareList[index];
                  var image = item.cover;
                  var avatar = item.anchorData!.avatar;
                  var title = item.title;
                  var desc = item.sessionDesc!.isEmpty
                      ? item.anchorData!.nickName!.substring(0, 3)
                      : item.sessionDesc;
                  return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(6.hx))),
                      height: 115.vx,
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              getCacheNetImage(image!,
                                  height: 70.vx,
                                  fit: BoxFit.cover,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(6.hx),
                                      topRight: Radius.circular(6.hx))),
                              Expanded(
                                  child: Container(
                                padding: EdgeInsets.only(left: 4.hx),
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      title!,
                                      maxLines: 1,
                                      style: getTextStyle(
                                          color: Colors.black, isBold: false),
                                    ),
                                    8.vGap,
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        desc!.length == 3
                                            ? const SizedBox.shrink()
                                            : Container(
                                                padding:
                                                    const EdgeInsets.all(1),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.grey)),
                                                child: Text(
                                                  "回看",
                                                  style: getTextStyle(
                                                      size: 7,
                                                      color: Colors.grey,
                                                      isBold: true),
                                                ),
                                              ),
                                        4.hGap,
                                        Text(
                                          desc,
                                          style: getTextStyle(
                                              size: 10, color: Colors.grey),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ))
                            ],
                          ),
                          Positioned(
                              top: 60.vx,
                              left: 4.hx,
                              child: getCacheNetImage(avatar!,
                                  isCircle: true, width: 16.hx, height: 16.hx))
                        ],
                      ));
                })
          ],
        ),
      );
    }));
  }

  _lessonLayout() {
    return GetX<LessonController>(builder: (controller) {
      var otherLessons = controller.otherLessonList.value;
      var excellentLessons = controller.excellentLessonList.value;
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _excellentLessonLayout(excellentLessons),
          _otherLessonLayout(otherLessons),
        ],
      );
    });
  }

  Widget _recommendLessonLayout() {
    return GetX<LessonController>(builder: (controller) {
      var recommendLessons = controller.recommendLessonList.value;
      var excellentLessons = controller.excellentLessonList.value;
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          recommendLessons.isNotEmpty
              ? Container(
                  margin: EdgeInsets.only(top: 20.vx),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "驾考精华课",
                        style: getTextStyle(
                            size: 14, color: Colors.black, isBold: true),
                      ),
                      6.vGap,
                      BannerSwiper<VideoLessonRecommendLessonList>(
                          bannerList: recommendLessons,
                          itemBuilder: (_, index, data) {
                            List<String>? commentList = data.commentList;
                            return Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.hx)),
                                  gradient: const LinearGradient(colors: [
                                    Color(0xfffeebea),
                                    Color(0xfffefcfa),
                                    Color(0xfffeebea),
                                  ])),
                              height: 104.vx,
                              child: Row(children: [
                                getCacheNetImage(data.image!,
                                    width: 68.hx, height: 84.vx, radius: 4),
                                6.hGap,
                                Expanded(
                                    child: SizedBox(
                                  height: 84.vx,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        FittedBox(
                                          child: Text(
                                            data.title!,
                                            maxLines: 1,
                                            style: getTextStyle(
                                                size: 12,
                                                color: Colors.black,
                                                isBold: true),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "${data.price! / 100}",
                                                  style: getTextStyle(
                                                    size: 14,
                                                    isBold: true,
                                                    color:
                                                        const Color(0xfff35056),
                                                  ),
                                                ),
                                                Container(
                                                  width: 64.hx,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10.vx)),
                                                      gradient:
                                                          const LinearGradient(
                                                              colors: [
                                                            Color(0xfffa5042),
                                                            Color(0xffff665c),
                                                            Color(0xfffe776e),
                                                          ])),
                                                  alignment: Alignment.center,
                                                  height: 20.vx,
                                                  child: Text(
                                                    "立即学习",
                                                    style: getTextStyle(
                                                        size: 10,
                                                        color: Colors.white,
                                                        isBold: true),
                                                  ),
                                                )
                                              ],
                                            ),
                                            6.vGap,
                                            BannerSwiper<String>(
                                                bannerList: commentList.data,
                                                height: 24.vx,
                                                loop: true,
                                                itemBuilder:
                                                    (_, index, content) {
                                                  return Text(
                                                    content,
                                                    style: getTextStyle(
                                                        size: 8,
                                                        color: const Color(
                                                            0xfff35056)),
                                                  );
                                                })
                                          ],
                                        )
                                      ]),
                                ))
                              ]),
                            );
                          })
                    ],
                  ),
                )
              : const SizedBox.shrink(),
          10.vGap,
          excellentLessons.isNotEmpty
              ? Container(
                  margin: EdgeInsets.only(bottom: 10.vx),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "专项精品课",
                        style: getTextStyle(
                            size: 14, color: Colors.black, isBold: true),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "我的课程",
                            style: getTextStyle(size: 12, color: Colors.black),
                          ),
                          const Icon(Icons.arrow_right)
                        ],
                      )
                    ],
                  ),
                )
              : const SizedBox.shrink(),
        ],
      );
    });
  }

  Widget _excellentTabLayout() {
    return GetX<LessonController>(
      builder: (controller) {
        var list = controller.excellentLessonList.value;
        if (list.isEmpty) {
          showExcellentTab = false;
          return const SliverToBoxAdapter(
            child: SizedBox.shrink(),
          );
        }
        showExcellentTab = true;
        var tabTitles = list.map((e) => e.albumName ?? "").toList();
        return Builder(builder: (context) {
          // var bodyScrollController = context
          //     .findAncestorStateOfType<NestedScrollViewState>()!
          //     .innerController;
          return SliverPersistentHeader(
              pinned: true,
              delegate: SliverHeaderFixedDelegate.fixed(
                  height: 28.vx,
                  child: Container(
                    color: const Color(0xfff2f6fa),
                    margin: EdgeInsets.only(bottom: 6.vx),
                    child: GetX<LessonController>(
                      builder: (controller) {
                        var tabIndex = controller.lessonTabPosition.value;
                        return TabGroupLayout(
                          initialIndex: tabIndex,
                          titles: tabTitles,
                          itemWidth: 60.hx,
                          itemMarginRight: 8.hx,
                          itemHeight: 22.vx,
                          checkTabBgColor: const Color(0xffbbdef9),
                          unCheckTabBgColor: Colors.transparent,
                          unCheckTabTextColor: Colors.black,
                          checkTabTextColor: const Color(0xff18a0e9),
                          borderRadius:
                              BorderRadius.all(Radius.circular(11.vx)),
                          onChange: (_, last, index) {
                            var distanceY = tabTitleYDistance(index);
                            _scrollController?.jumpTo(distanceY);
                          },
                        );
                      },
                    ),
                  )));
        });
      },
    );
  }

  Widget _excellentLessonLayout(List<VideoLessonExcellentItemLessonList> list) {
    if (list.isEmpty) return const SizedBox.shrink();
    return Container(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemExtent: excellentItemHeight,
            itemBuilder: (_, index) {
              var item = list[index];
              var topLessonList = item.topLessonListData.data;
              return SizedBox(
                height: excellentItemHeight,
                child: Card(
                  margin: EdgeInsets.only(bottom: 4.vx),
                  color: Colors.white,
                  elevation: 2,
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.hx))),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.albumDesc!,
                            style: getTextStyle(
                                size: 13, color: Colors.black, isBold: true),
                          ),
                          6.vGap,
                          SizedBox(
                              height: 134.vx,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: topLessonList.length,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (_, index) {
                                    var subItem = topLessonList[index];
                                    return Container(
                                      width: 66.hx,
                                      margin: EdgeInsets.only(right: 10.hx),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              getCacheNetImage(subItem.image!,
                                                  width: 66.hx,
                                                  height: 84.vx,
                                                  radius: 6.hx),
                                              6.vGap,
                                              Text(
                                                subItem.title!,
                                                maxLines: 2,
                                                style: getTextStyle(
                                                    size: 9,
                                                    color: const Color.fromARGB(
                                                        255, 90, 60, 60),
                                                    isBold: true),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "${subItem.price!.toDouble() / 100}",
                                            style: getTextStyle(
                                                color: Colors.red,
                                                isBold: true),
                                          )
                                        ],
                                      ),
                                    );
                                  }))
                        ]),
                  ),
                ),
              );
            },
            itemCount: list.length,
          )
        ]));
  }

  Widget _otherLessonLayout(List<VideoLessonOtherLessonList> list) {
    if (list.isEmpty) return const SizedBox.shrink();
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (_, index) {
        var item = list[index];
        var tagList = item.tagList.data;
        var teacherAvatar = item.teacherList![0].avatar;
        var teacherName = item.teacherList![0].name;
        var lessonPrice = item.originalPrice!.toDouble() / 100;
        var isFree = lessonPrice == 0;
        return SizedBox(
            height: 130.vx,
            child: Card(
              color: Colors.white,
              elevation: 2,
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4.hx))),
              child: Padding(
                padding: EdgeInsets.only(top: 10.vx, left: 10.hx, right: 10.hx),
                child: Column(
                  children: [
                    Expanded(
                        //知道高度，不知道宽度
                        child: Row(
                      children: [
                        getCacheNetImage(item.image!,
                            width: 66.hx, height: 84.vx, radius: 4.hx),
                        6.hGap,
                        Expanded(
                            child: SizedBox(
                          height: 84.vx,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    item.title!,
                                    style: getTextStyle(
                                        color: Colors.black, isBold: true),
                                  ),
                                  6.vGap,
                                  SizedBox(
                                    height: 12.vx,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (_, index) {
                                        var tag = tagList[index];
                                        return Container(
                                          margin: EdgeInsets.only(right: 2.hx),
                                          padding: const EdgeInsets.all(1),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(4)),
                                            border:
                                                Border.all(color: Colors.grey),
                                          ),
                                          child: Text(
                                            tag,
                                            style: getTextStyle(
                                                color: Colors.grey, size: 6),
                                          ),
                                        );
                                      },
                                      itemCount: tagList.length,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  getCacheNetImage(teacherAvatar!,
                                      width: 16.hx,
                                      isCircle: true,
                                      height: 16.hx),
                                  6.vGap,
                                  Text(
                                    teacherName!,
                                    style: getTextStyle(
                                        size: 8, color: Colors.grey),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ))
                      ],
                    )),
                    SizedBox(
                      height: 30.vx,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          isFree
                              ? Container(
                                  height: 18.vx,
                                  width: 56.hx,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: const Color(0x5542b7dd),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(9.vx)),
                                  ),
                                  child: Text(
                                    "限时免费",
                                    style: getTextStyle(
                                        size: 10,
                                        color: const Color(0xff42b7dd)),
                                  ),
                                )
                              : Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "$lessonPrice",
                                      style: getTextStyle(
                                          color: const Color(0xffff4936),
                                          isBold: true),
                                    ),
                                    8.hGap,
                                    Container(
                                      height: 14.vx,
                                      width: 56.hx,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(4)),
                                          border: Border.all(
                                              color: const Color(0xff42b7dd))),
                                      child: Text(
                                        "全科VIP免费学",
                                        style: getTextStyle(
                                            size: 8,
                                            color: const Color(0xff42b7dd)),
                                      ),
                                    )
                                  ],
                                ),
                          Container(
                            width: 64.hx,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.vx)),
                                gradient: const LinearGradient(colors: [
                                  Color(0xfffa5042),
                                  Color(0xffff665c),
                                  Color(0xfffe776e),
                                ])),
                            alignment: Alignment.center,
                            height: 20.vx,
                            child: Text(
                              "立即学习",
                              style: getTextStyle(
                                  size: 10, color: Colors.white, isBold: true),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ));
      },
      itemCount: list.length,
    );
  }
}

class LessonController extends GetxController {
  final bannerList = <LessonBannerItemList>[].obs;
  final calendarList = <VideoManagerItemList>[].obs;
  final squareList = <VideoSquareItemList>[].obs;
  //课程
  final otherLessonList = <VideoLessonOtherLessonList>[].obs;
  final recommendLessonList = <VideoLessonRecommendLessonList>[].obs;
  final excellentLessonList = <VideoLessonExcellentItemLessonList>[].obs;
  final lessonCategorys = <String>[].obs;
  final lessonTabPosition = 0.obs;
  int lastPosition = 0;
  @override
  void onReady() {
    super.onReady();
    loadData(0);
  }

  Future<LoadResult> refreshCurrentTab() async {
    await loadData(lastPosition);
    return LoadResult(success: true, hasMore: false);
  }

  void changeLessonCategory(int position) {
    if (lessonTabPosition.value != position) {
      lessonTabPosition.value = position;
    }
  }

  void changePosition(int index) {
    lastPosition = index;
  }

  Future<void> loadData(int index) async {
    lastPosition = index;
    var categoryList = lessonList[index];
    var bannerUrl = categoryList[0];
    if (bannerUrl.isNotEmpty) {
      lessonBannerData(bannerUrl).then((result) {
        bannerList.value = result.data!.itemList.data;
      });
    } else {
      bannerList.value = [];
    }
    var calendarUrl = categoryList[1];
    if (calendarUrl.isNotEmpty) {
      lessonCalendarData(calendarUrl).then((result) {
        calendarList.value = result.data!.itemList.data;
      });
    } else {
      calendarList.value = [];
    }
    var squareUrl = categoryList[2];
    if (squareUrl.isNotEmpty) {
      lessonSquareData(squareUrl).then((result) {
        squareList.value = result.data!.itemList.data;
      });
    } else {
      squareList.value = [];
    }
    var lessonUrl = categoryList[3];
    if (lessonUrl.isNotEmpty) {
      lessonListData(lessonUrl).then((result) {
        otherLessonList.value = result.data!.otherLessonList!.data;
        recommendLessonList.value = result.data!.recommendLessonList!.data;
        excellentLessonList.value = result.data!.excellentItemLessonList!.data;
      });
    } else {
      otherLessonList.value = [];
      recommendLessonList.value = [];
      excellentLessonList.value = [];
    }
  }
}
