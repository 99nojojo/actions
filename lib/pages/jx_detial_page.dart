import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_actions/components/components.dart';
import 'package:flutter_actions/framework/framework.dart';
import 'package:flutter_actions/net/net.dart';
import 'package:flutter_actions/routes/routes.dart';
import 'package:flutter_actions/static/res_constant.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';

import '../net/bean/bean.dart';

class DriverSchoolPage extends StatefulWidget {
  const DriverSchoolPage({super.key});

  @override
  State<DriverSchoolPage> createState() => _DriverSchoolPageState();
}

class _DriverSchoolPageState extends BaseState<DriverSchoolPage>
    with TickerProviderStateMixin {
  final questions = ["最快多久可以拿证？", "驾校有什么优惠吗？", "近的训练场在哪里？", "离我最最便宜的班型多少钱？"];

  late BehaviorSubject<String> questionBs;
  late BehaviorSubject<String> categoryBs;
  late ValueNotifier<bool> showIconBg;
  late TabController tabController;
  late PageController pageController;
  late Timer timer;
  final BehaviorSubject<bool> showControllView = BehaviorSubject.seeded(false);
  GlobalKey<SideScrollViewState> dragHKey = GlobalKey<SideScrollViewState>();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 1, vsync: this);
    pageController = PageController();
    showIconBg = ValueNotifier(true);
    questionBs = BehaviorSubject<String>.seeded(questions[0]);
    categoryBs = BehaviorSubject<String>.seeded("");
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      questionBs.value = questions[timer.tick % questions.length];
    });
  }

  @override
  void dispose() {
    timer.cancel();
    categoryBs.close();
    questionBs.close();
    super.dispose();
  }

  @override
  Widget? get loadWidget => Builder(builder: (ctx) {
        var color = Theme.of(context).colorScheme.primaryContainer;
        return Container(
          alignment: Alignment.center,
          color: color,
          child: Image.asset(
            ICON_PAGE_LOADING,
            width: 140.hx,
            height: 54.vx,
          ),
        );
      });

  void showAllRz(String title, List<DriveSchoolDetialLevel2Labels> labels) {
    var content = ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: labels.length,
      itemBuilder: (_, index) {
        var item = labels[index];
        return Padding(
          padding: EdgeInsets.only(top: 4.vx),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomPaint(
                size: Size(12.hx, 12.hx),
                painter: RzIcon(),
              ),
              6.hGap,
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    item.title!,
                    style: getTextStyle(
                        size: 10, isBold: true, color: Colors.black),
                  ),
                  4.vGap,
                  Text(
                    item.desc!,
                    style: getTextStyle(size: 8),
                  ),
                  2.vGap,
                  Image.asset(
                    ICON_LOADING,
                    width: 114.hx,
                    height: 82.vx,
                    fit: BoxFit.cover,
                  )
                  // if(index==0)
                  // else const SizedBox.shrink()
                  // getCacheNetImage(item.icon!,width: 114.hx,height: 82.vx)
                ],
              ))
            ],
          ),
        );
      },
    );
    commonBottomSheet(title, content);
  }

  void showLevel1Labels(
      String title, List<DriveSchoolDetialLevel1Labels> labels) {
    var content = ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (_, index) {
        var item = labels[index];
        return Padding(
          padding: EdgeInsets.only(bottom: 2.vx),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getCacheNetImage(item.icon!, width: 12.hx, height: 12.hx),
              6.hGap,
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title!,
                    style: getTextStyle(
                        size: 10, isBold: true, color: Colors.black),
                  ),
                  2.vGap,
                  Text(
                    item.desc!,
                    style: getTextStyle(size: 9),
                  )
                ],
              ))
            ],
          ),
        );
      },
      itemCount: labels.length,
    );
    commonBottomSheet(title, content);
  }

  Widget? bodyCotent;

  @override
  Widget bodyLayout(BuildContext context) {
    Get.put(DriverSchoolController());
    double safeTopPadding = MediaQuery.of(context).padding.top;
    return GetX<DriverSchoolController>(builder: (controller) {
      var headData = controller.coverCategoryList;
      var categorys = controller.coverCategorys;
      var schoolInfo = controller.schoolInfo.value;
      if (schoolInfo.name!.isEmpty) return const SizedBox.shrink();
      return Scaffold(
        body: Stack(
          children: [
            NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                var pixels = notification.metrics.pixels;
                var showIconbg = pixels <= 70.vx;
                if (showIconbg != showIconBg.value) {
                  showIconBg.value = showIconbg;
                }
                return false;
              },
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: 48.vx,
                  ),
                  child: Column(
                    children: [
                      MediaQuery.removeViewPadding(
                        context: context,
                        removeTop: true,
                        child: headLayout(categorys, headData),
                      ),
                      introLayout(schoolInfo),
                      courseFieldLayout(schoolInfo),
                      coachRankLayout(schoolInfo),
                      dianPingLayout(schoolInfo),
                      detailDtoLayout(schoolInfo)
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                left: 0,
                right: 0,
                top: safeTopPadding,
                child: _topFloatLayout()),
            Positioned(
                left: 0, bottom: 0, right: 0, child: _bottomConsultLayout())
          ],
        ),
      );
    });
  }

  Widget _topFloatLayout() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.hx, vertical: 4.vx),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child: CustomPaint(
              size: Size(22.hx, 22.hx),
              painter: LeftArrowIcon(showIconBg),
            ),
            onTap: () {
              Get.back();
            },
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomPaint(
                size: Size(22.hx, 22.hx),
                painter: CollectIcon(showIconBg),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.hx),
                child: CustomPaint(
                  size: Size(22.hx, 22.hx),
                  painter: ShareIcon(showIconBg),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.hx),
                child: CustomPaint(
                  size: Size(22.hx, 22.hx),
                  painter: SettingIcon(showIconBg),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _bottomConsultLayout() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10.hx, vertical: 8.vx),
      child: Row(
        children: [
          Expanded(
              child: Container(
            height: 32.vx,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16.vx)),
              gradient: const LinearGradient(colors: [
                Color(0xff09cef8),
                Color(0xff07cff3),
                Color(0xff09cef6),
              ]),
            ),
            child: Text(
              "免费咨询",
              style: getTextStyle(size: 10, color: Colors.white, isBold: true),
            ),
          )),
          8.hGap,
          Expanded(
              child: Container(
            height: 32.vx,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16.vx)),
                color: const Color(0xff03a6fe)),
            child: Text(
              "电话咨询",
              style: getTextStyle(size: 10, color: Colors.white, isBold: true),
            ),
          )),
        ],
      ),
    );
  }

  Widget headLayout(Map<String, int> categoryIndex, List<CoverModel> datas) {
    var categorys = categoryIndex.keys.toList();
    return Stack(
      children: [
        DraRightShowMore(
            hideWidth: 60.hx,
            childBuilder: (_, physics) {
              return SizedBox(
                height: 156.vx,
                child: PageView.builder(
                    physics: physics,
                    allowImplicitScrolling: true,
                    key: const PageStorageKey<String>("DragLookMore"),
                    controller: PageController(),
                    itemCount: datas.length,
                    onPageChanged: (page) {
                      var item = datas[page];
                      if (categoryBs.value != item.name) {
                        categoryBs.value = item.name!;
                      }
                    },
                    itemBuilder: (ctx, index) {
                      var item = datas[index];
                      if (item.isVideo!) {
                        return VideoView(
                            key: ValueKey(item.videoUrl),
                            videoUrl: item.videoUrl!,
                            controllerViewShow: (show) {
                              if (show != showControllView.value) {
                                showControllView.value = show;
                              }
                            },
                            isLandscapeVideo: false);
                      } else {
                        Widget image = CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: item.imageUrl!,
                          placeholder: (_, url) {
                            return const ColoredBox(color: Colors.white);
                          },
                        );
                        return image;
                      }
                    }),
              );
            }),
        // DragLookMoreWidget(
        //     height: 156.vx,
        //     hideWidth: 48.hx,
        //     onPageChanged: (page) {
        //       var item = datas[page];
        //       if (categoryBs.value != item.name) {
        //         categoryBs.value = item.name!;
        //       }
        //     },
        //     itemCount: datas.length,
        //     callback: () async {
        //       await Get.toNamed(RoutePath.JX_IMAGES);
        //     },
        //     itemBuilder: (ctx, index) {
        //       var item = datas[index];
        //       if (item.isVideo!) {
        //         return VideoView(
        //             key: ValueKey(item.videoUrl),
        //             videoUrl: item.videoUrl!,
        //             controllerViewShow: (show) {
        //               if (show != showControllView.value) {
        //                 showControllView.value = show;
        //               }
        //             },
        //             isLandscapeVideo: false);
        //       } else {
        //         Widget image = getCacheNetImage(item.imageUrl!);
        //         return image;
        //       }
        //     })
        Positioned(
            left: 10.hx,
            bottom: 8.vx,
            child: StreamBuilder<bool>(
              initialData: showControllView.value,
              stream: showControllView.stream,
              builder: (_, snapt) {
                return AnimatedOpacity(
                  opacity: snapt.data ?? false ? 1 : 0,
                  duration: const Duration(milliseconds: 250),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.hx, vertical: 2.hx),
                    decoration: BoxDecoration(
                        color: const Color(0x884c4c49),
                        borderRadius: BorderRadius.all(Radius.circular(10.vx))),
                    height: 20.vx,
                    child: Row(
                      children: [
                        StreamBuilder<String>(
                            initialData: categoryBs.value,
                            stream: categoryBs.stream,
                            builder: (_, snapt) {
                              var selctCategory = snapt.data;
                              return ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: categorys.length,
                                  itemBuilder: (_, index) {
                                    var categoryTitle = categorys[index];
                                    var decoration =
                                        (categoryTitle == selctCategory) ||
                                                (selctCategory!.isEmpty &&
                                                    index == 0)
                                            ? BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(6.vx)),
                                                color: const Color(0xff029ff9))
                                            : null;
                                    return InkWell(
                                      onTap: () {
                                        pageController.jumpToPage(
                                            categoryIndex[categoryTitle]!);
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(right: 4.hx),
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 4.hx, vertical: 2.hx),
                                        decoration: decoration,
                                        child: Text(
                                          categoryTitle,
                                          style: getTextStyle(
                                              size: 8,
                                              isBold: true,
                                              color: Colors.white),
                                        ),
                                      ),
                                    );
                                  });
                            }),
                        Image.asset(
                          ICON_ARROW_RIGHT,
                          width: 12.hx,
                          height: 12.hx,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                );
              },
            )),
      ],
    );
  }

  //简介
  Widget introLayout(DriveSchoolDetialEntity data) {
    var schoolName = data.name;
    var level2Labels = data.level2Labels.data;
    var dianping = data.dianping;
    var level1Labels = data.level1Labels.data;
    var showLevel1 = level1Labels.sublist(0, 2).map((e) => e.title).toList()
      ..add("...");
    return Container(
      padding: EdgeInsets.only(left: 10.hx, right: 10.hx, top: 12.vx),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                schoolName!,
                style:
                    getTextStyle(isBold: true, size: 14, color: Colors.black),
              ),
              6.vGap,
              InkWell(
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(level2Labels.length, (index) {
                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomPaint(
                            size: Size(10.hx, 10.hx),
                            painter: RzIcon(),
                          ),
                          4.hGap,
                          Text(
                            level2Labels[index].title!,
                            style: getTextStyle(size: 10, color: Colors.black),
                          ),
                          4.hGap,
                        ],
                      );
                    })),
                onTap: () => showAllRz(schoolName, level2Labels),
              ),
              8.vGap,
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "${dianping!.score} 分",
                    style: getTextStyle(
                      color: const Color(0xffff4e42),
                      isBold: true,
                      size: 12,
                    ),
                  ),
                  8.hGap,
                  Text(
                    "${dianping.count}条评价",
                    style: getTextStyle(
                      isBold: true,
                      color: const Color(0xff737373),
                      size: 11,
                    ),
                  ),
                  6.hGap,
                  Image.asset(
                    ICON_ARROW_RIGHT,
                    width: 12.hx,
                    height: 12.hx,
                    color: const Color(0xff737373),
                  )
                ],
              ),
              8.vGap,
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xfffef1e4),
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    padding: const EdgeInsets.all(3),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          data.rank!.rank!,
                          style: getTextStyle(
                              size: 8, color: const Color(0xff725528)),
                        ),
                        Image.asset(
                          ICON_ARROW_RIGHT,
                          width: 12.hx,
                          height: 12.hx,
                          color: const Color(0xff737373),
                        )
                      ],
                    ),
                  ),
                  2.hGap,
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xfffef1e4),
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    padding: const EdgeInsets.all(3),
                    child: Text(
                      data.typeLabel!,
                      style:
                          getTextStyle(size: 8, color: const Color(0xff725528)),
                    ),
                  ),
                  2.hGap,
                  InkWell(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(
                        showLevel1.length,
                        (index) => Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 2.hx),
                          constraints: BoxConstraints(minWidth: 20.hx),
                          decoration: const BoxDecoration(
                              color: Color(0xffe5f7f1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4))),
                          padding: const EdgeInsets.all(3),
                          child: Text(
                            showLevel1[index]!,
                            style: getTextStyle(
                                size: 8, color: const Color(0xff18a5f7)),
                          ),
                        ),
                      ),
                    ),
                    onTap: () => showLevel1Labels(schoolName, level1Labels),
                  ),
                ],
              ),
              10.vGap,
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    data.nearestField!.address!,
                    style: getTextStyle(
                        size: 10, color: Colors.black, isBold: true),
                  ),
                  Image.asset(
                    ICON_ARROW_RIGHT,
                    width: 12.hx,
                    height: 12.hx,
                    color: Colors.black,
                  )
                ],
              ),
              SizedBox(
                height: 32.vx,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    StreamBuilder<String>(
                      builder: (_, snapshot) {
                        var title = snapshot.data ?? "";
                        return Text(
                          title,
                          style: getTextStyle(
                            size: 8,
                          ),
                        );
                      },
                      initialData: questionBs.value,
                      stream: questionBs.stream,
                    ),
                    Container(
                      height: 18.vx,
                      width: 36.hx,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color(0xffe5f7f1),
                          borderRadius:
                              BorderRadius.all(Radius.circular(9.vx))),
                      child: Text(
                        "问驾校",
                        style: getTextStyle(
                            size: 9, color: const Color(0xff18a5f7)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned(
              right: 6.hx,
              top: 12.vx,
              child: Image.asset(
                ICON_AD_PHONE,
                width: 32.hx,
                height: 32.hx,
              ))
        ],
      ),
    );
  }

  //班型｜场地
  Widget courseFieldLayout(DriveSchoolDetialEntity data) {
    List<String> tabTxts = [];
    List<Widget> tabPages = [];
    var courseNum = data.courseCount ?? 0;
    if (courseNum > 0) {
      tabTxts.add("班型");
      var courseList = data.courses.data;
      tabPages.add(Column(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(courseList.length, (index) {
              var courseItem = courseList[index];
              return Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 10.hx, vertical: 4.vx),
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      getCacheNetImage(courseItem.image!,
                          width: 70.hx, height: 50.vx, radius: 6),
                      4.hGap,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              courseItem.name!,
                              style: getTextStyle(
                                  size: 10, color: Colors.black, isBold: true),
                            ),
                            Text(
                              courseItem.tags!,
                              style: getTextStyle(
                                  size: 8, color: const Color(0xffa4a4a4)),
                            ),
                            Text(
                              "¥ ${courseItem.price}",
                              style: getTextStyle(
                                  size: 10,
                                  color: const Color(0xffe7828d),
                                  isBold: true),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        ICON_AD_PHONE,
                        width: 28.hx,
                        height: 28.hx,
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
          Expanded(
              child: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "查看全部班型(共$courseNum)",
                  style: getTextStyle(size: 8),
                ),
                4.hGap,
                Image.asset(
                  ICON_ARROW_RIGHT,
                  width: 8.hx,
                  height: 8.hx,
                )
              ],
            ),
          ))
        ],
      ));
    }
    var fieldNum = data.fieldCount ?? 0;
    if (fieldNum > 0) {
      tabTxts.add("场地");
      var fieldList = data.fieldList.data;
      tabPages.add(
        Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.hx),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(fieldList.length, (index) {
                var fieldItem = fieldList[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    4.vGap,
                    Text(
                      "${fieldItem.type}(${fieldItem.totalCount})个",
                      style: getTextStyle(size: 8, color: Colors.grey),
                    ),
                    4.vGap,
                    IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          getCacheNetImage(fieldItem.image!,
                              width: 70.hx, height: 50.vx, radius: 4.hx),
                          4.hGap,
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                fieldItem.name!,
                                style: getTextStyle(
                                    size: 10,
                                    color: Colors.black,
                                    isBold: true),
                              ),
                              Text(
                                fieldItem.address!,
                                style: getTextStyle(
                                    size: 8, color: const Color(0xffa4a4a4)),
                                maxLines: 1,
                              ),
                              Row(
                                children: [
                                  const Spacer(),
                                  Text(
                                    fieldItem.subjects!,
                                    style: getTextStyle(
                                        size: 8,
                                        color: const Color(0xffa4a4a4)),
                                  ),
                                ],
                              )
                            ],
                          )),
                          8.hGap,
                          Image.asset(
                            ICON_AD_PHONE,
                            width: 28.hx,
                            height: 28.hx,
                          )
                        ],
                      ),
                    )
                  ],
                );
              }),
            ),
          ),
          Expanded(
              child: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "查看全部场地(共$fieldNum)",
                  style: getTextStyle(size: 8),
                ),
                4.hGap,
                Image.asset(
                  ICON_ARROW_RIGHT,
                  width: 8.hx,
                  height: 8.hx,
                )
              ],
            ),
          ))
        ]),
      );
    }
    if (courseNum <= 0 || fieldNum <= 0) return const SizedBox();
    return DefaultTabController(
        length: tabTxts.length,
        child: Column(
          children: [
            TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.grey,
                tabs: List.generate(
                    tabTxts.length,
                    (index) => Tab(
                          text: tabTxts[index],
                        ))),
            Container(
              constraints: BoxConstraints(maxHeight: 250.vx),
              child: TabBarView(
                  //没有设置高度会报错，无法自适应孩子内容高度
                  physics: const NeverScrollableScrollPhysics(),
                  children: tabPages),
            )
          ],
        ));
  }

  Widget coachRankLayout(DriveSchoolDetialEntity schoolInfo) {
    var coachList = schoolInfo.rankCoachList.data;
    var coachCount = schoolInfo.coachCount;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.hx),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          lookAllLayout("教练团队($coachCount)"),
          SizedBox(
            height: 118.vx,
            child: ListView.builder(
                itemCount: coachList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  var coachItem = coachList[index];
                  return Container(
                    margin: EdgeInsets.only(right: 4.hx),
                    width: 66.hx,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xffe6f6fe), width: 2),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        getCacheNetImage(coachItem.avatar!,
                            width: 40.hx, height: 40.hx, isCircle: true),
                        Text(
                          coachItem.name!,
                          style: getTextStyle(
                              color: Colors.black, isBold: true, size: 10),
                        ),
                        Text(
                          "学员${coachItem.studentCount}",
                          style: getTextStyle(
                              color: const Color(0xff6f6f6f),
                              isBold: true,
                              size: 8),
                        ),
                        Text(
                          "教龄${coachItem.teachAge}",
                          style: getTextStyle(
                              color: const Color(0xff6f6f6f),
                              isBold: true,
                              size: 8),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }

  Widget dianPingLayout(DriveSchoolDetialEntity schoolInfo) {
    var dianPingCount = schoolInfo.dianping!.count;
    var score = schoolInfo.dianping!.score;
    var dpCommentCountDataList = schoolInfo.dianpingCommentCountDataList.data;
    var dianpingTagList = schoolInfo.dianpingTagList.data;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.hx),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          lookAllLayout("学员评价($dianPingCount)"),
          SizedBox(
            height: 56.vx,
            child: Row(
              children: [
                Text(
                  "$score分",
                  style: getTextStyle(
                    color: const Color(0xff01a8ff),
                    isBold: true,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 12.hx),
                  child: Container(
                    color: const Color(0xffd4ebf8),
                    height: 32.vx,
                    width: 1,
                  ),
                ),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:
                      List.generate(dpCommentCountDataList.length, (index) {
                    var commentCountItem = dpCommentCountDataList[index];
                    return DianPingWidget(
                      tag: commentCountItem.cname!,
                      score: commentCountItem.ratio!,
                    );
                  }),
                ))
              ],
            ),
          ),
          6.vGap,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(dianpingTagList.length, (index) {
              var tagItem = dianpingTagList[index];
              return Container(
                margin: EdgeInsets.only(right: 2.hx),
                padding: EdgeInsets.symmetric(horizontal: 8.hx),
                alignment: Alignment.center,
                height: 18.vx,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(9.vx)),
                    color: const Color(0xffd6d6d6)),
                child: Text(
                  "${tagItem.cname} ${tagItem.count}",
                  style: getTextStyle(size: 8, color: Colors.black45),
                ),
              );
            }),
          ),
          8.vGap,
          GetX<DriverSchoolController>(builder: (controller) {
            var dpList = controller.dpPrewList.value.data;
            if (dpList.isEmpty) return const SizedBox.shrink();
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(dpList.length, (index) {
                var dpItem = dpList[index];
                var imageList = dpItem.imageList.data;
                return Padding(
                  padding: EdgeInsets.only(bottom: 6.vx),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //这里使用ListTitle会出现显示不全问题，后续研究
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            getCacheNetImage(dpItem.author!.avatar!,
                                width: 30.hx, height: 30.hx, isCircle: true),
                            4.hGap,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dpItem.author!.nickname!,
                                  style: getTextStyle(
                                      size: 10,
                                      color: Colors.black,
                                      isBold: true),
                                ),
                                const Spacer(),
                                Text.rich(TextSpan(children: [
                                  TextSpan(
                                      text: "${dpItem.score}分",
                                      style: getTextStyle(
                                          size: 8,
                                          color: const Color(0xfff7813a))),
                                  TextSpan(
                                      text:
                                          "     ${convertYmd(dpItem.createTime!)}    ",
                                      style: getTextStyle(
                                        size: 8,
                                      )),
                                  TextSpan(
                                      text: dpItem.ipLocation!,
                                      style: getTextStyle(
                                        size: 8,
                                      ))
                                ]))
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 34.hx, top: 4.vx, right: 16.hx),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                dpItem.content!,
                                style: getTextStyle(
                                    size: 10, color: Colors.black87),
                              ),
                              6.vGap,
                              imageList.isNotEmpty
                                  ? LayoutBuilder(builder: (_, layout) {
                                      var totalWidth =
                                          layout.biggest.width - 8.hx;
                                      var side = totalWidth / 3;
                                      return Wrap(
                                        spacing: 4.hx,
                                        runSpacing: 4.hx,
                                        children: List.generate(
                                            imageList.length, (index) {
                                          var imageItem = imageList[index];
                                          return InkWell(
                                            child: getCacheNetImage(
                                                imageItem.small!,
                                                width: side,
                                                height: side),
                                            onTap: () {},
                                          );
                                        }),
                                      );
                                    })
                                  : const SizedBox.shrink()
                            ],
                          )),
                    ],
                  ),
                );
              }),
            );
          })
        ],
      ),
    );
  }

  Widget lookAllLayout(String title, [String rightTitle = "查看全部"]) {
    return SizedBox(
      height: 36.vx,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: getTextStyle(color: Colors.black, isBold: true, size: 10),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                rightTitle,
                style: getTextStyle(size: 9),
              ),
              4.hGap,
              Image.asset(
                ICON_ARROW_RIGHT,
                width: 12.hx,
                height: 12.hx,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget detailDtoLayout(DriveSchoolDetialEntity schoolInfo) {
    var detailDto = schoolInfo.detailDto;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.hx, vertical: 12.vx),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          lookAllLayout("驾校简介", "查看详情"),
          12.vGap,
          Text(
            "注册日期: ${detailDto!.registerDate}",
            style: getTextStyle(size: 10, color: Colors.black87),
          ),
          10.vGap,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("教练: ${detailDto.coachCount}名",
                  style: getTextStyle(size: 10, color: Colors.black87)),
              20.hGap,
              Text(
                "近一年学员数: ${detailDto.studentCount}名",
                style: getTextStyle(size: 10, color: Colors.black87),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  void onResume() {
    Get.find<DriverSchoolController>().loadData();
  }
}

class DriverSchoolController extends GetxController {
  final dpPrewList = <DianPingPrewItemList>[].obs;
  final schoolInfo = DriveSchoolDetialEntity().obs;
  final List<CoverModel> coverCategoryList = [];
  final Map<String, int> coverCategorys = {};

  void filterHeaderData(DriveSchoolDetialEntity data) {
    coverCategoryList.clear();
    coverCategorys.clear();
    for (int index = 0; index < data.coverGroupList.data.length; index++) {
      var item = data.coverGroupList.data[index];
      var coverList = item.coverList.data;
      var name = item.name!;
      var type = item.type;
      if (!coverCategorys.keys.contains(name)) {
        coverCategorys.putIfAbsent(name, () => index);
      }
      if (coverList.isNotEmpty) {
        for (var coverItem in coverList) {
          coverCategoryList.add(CoverModel(
              name: name,
              type: type,
              videoUrl: coverItem.videoUrl,
              imageUrl: coverItem.imageUrl,
              isVideo: coverItem.video));
        }
      }
    }
  }

  @override
  void onReady() {
    super.onReady();
    // loadData();
  }

  void loadData() {
    yuandaSchool().then((value) {
      var result = value.data!;
      schoolInfo.value = result;
      filterHeaderData(result);
    });
    dianOingPrew().then((value) {
      dpPrewList.value = value.data!.itemList!.data;
    });
  }
}

class CoverModel {
  String? name = "";
  int? type = 0;
  bool? isVideo = false;
  String? imageUrl = "";
  String? videoUrl = "";

  CoverModel(
      {this.name, this.type, this.imageUrl, this.isVideo, this.videoUrl});
}
