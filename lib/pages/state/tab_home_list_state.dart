import 'package:flutter/material.dart';
import 'package:flutter_actions/components/components.dart';
import 'package:flutter_actions/pages/pages.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../net/bean/bean.dart';
import '../../static/static.dart';

extension TabHomeListUtils on State<TabHomePage> {
  ///--------------------------------------------------------------------------------------------------
  ///演示EASY_REFRESH 与 NestedScrollView 这种方式无法正常使用
  // Widget _content2() {
  //   return Stack(
  //     children: [
  //       Padding(
  //         padding: EdgeInsets.only(top: 24.vx),
  //         child: EasyRefreshContainer(
  //           onRefresh: () => Get.find<TabHomeController>().refreshAllData(),
  //           onLoadMore: () =>
  //               Get.find<TabHomeController>().loadMore(tabController!.index),
  //           childBuilder: (_, physics) {
  //             return NestedScrollView(
  //                 physics: physics,
  //                 headerSliverBuilder: (ctx, flag) {
  //                   return _buildHeader(ctx, flag);
  //                 },
  //                 body: TabBarView(
  //                   controller: tabController,
  //                   children: [
  //                     buildScrollPage("驾校", _schoolSliverList()),
  //                     buildScrollPage("教练", _coachSliverList()),
  //                   ],
  //                 ));
  //           },
  //         ),
  //       ),
  //       Positioned(
  //         child: _searchLayout(),
  //         top: 0,
  //       )
  //     ],
  //   );
  // }
  //
  // Widget buildScrollPage(String title, Widget sliver) {
  //   return Builder(builder: (ctx) {
  //     return CustomScrollView(
  //       key: PageStorageKey<String>(title),
  //       slivers: [
  //         SliverOverlapInjector(
  //             handle: NestedScrollView.sliverOverlapAbsorberHandleFor(ctx)),
  //         // 24.vGapSliver,
  //         sliver
  //       ],
  //     );
  //   });
  // }
  //
  // List<Widget> _buildHeader(BuildContext context, bool innerBoxIsScrolled) {
  //   return [
  //     // SliverPersistentHeader(
  //     //   pinned: true,
  //     //   delegate: SliverHeaderFixedDelegate.fixed(
  //     //       child: _searchLayout(), height: 24.vx),
  //     // ),
  //     SliverToBoxAdapter(
  //       child: _adLayout(),
  //     ),
  //     SliverOverlapAbsorber(
  //       sliver: SliverPersistentHeader(
  //         pinned: true,
  //         delegate: SliverHeaderFixedDelegate.fixed(
  //             child: _tabLayout(), height: 40.vx),
  //       ),
  //       handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
  //     ),
  //   ];
  // }

  ///--------------------------------------------------------------------------------------------------

  Widget createSchoolInfoLayout(HomeFilterSchoolItemList schoolItem) {
    var schoolIcon = schoolItem.logo;
    var logo = schoolItem.logoIcon;
    var schoolName = schoolItem.name;
    var vipYear = schoolItem.vipYear;
    var dianpingCount = schoolItem.dianpingCount;
    var score = schoolItem.score;
    var labels = schoolItem.labels;
    var activitys = schoolItem.activity;
    var hasPhone = schoolItem.jiaxiaoPhone != null &&
        schoolItem.jiaxiaoPhone!.privatePhone!.isNotEmpty;
    var jxPhone = "13828814572";
    var brightness = isLightStyle(context);
    var nameColor = brightness ? Colors.black : const Color(0xffdddddd);
    var activityNameColor = brightness? textColor: const Color(0xff8d8d8d);
    return Container(
      // color: bgColor,
      padding: EdgeInsets.only(top: 12.vx, bottom: 8.vx),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 44.vx,
            child: Stack(
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          width: 60.hx,
                          height: 44.hx,
                        ),
                        Positioned(
                            top: 2.vx,
                            left: 0,
                            child: getCacheNetImage(schoolIcon!,
                                width: 60.hx, height: 44.vx, radius: 4.hx)),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Visibility(
                            visible: logo!.isNotEmpty,
                            child: getCacheNetImage(logo,
                                width: 24.hx, height: 12.vx),
                          ),
                        ),
                        Positioned(
                            left: 0,
                            right: 0,
                            top: 0,
                            bottom: 0,
                            child: Container(
                              alignment: Alignment.center,
                              child: Visibility(
                                visible: schoolItem.hasVideo!,
                                child: Image.asset(
                                  ICON_SCHOOL_VIDEO,
                                  width: 20.hx,
                                  height: 20.hx,
                                ),
                              ),
                            ))
                      ],
                    ),
                    8.hGap,
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                schoolName!,
                                style: getTextStyle(
                                    size: 11, isBold: true, color: nameColor),
                              ),
                              4.hGap,
                              indexInRange<String>(0, schoolItem.privileges,
                                  builder: (privilege) => getCacheNetImage(
                                      privilege,
                                      width: 12.hx,
                                      height: 12.hx,
                                      radius: 2)),
                              4.hGap,
                              Stack(
                                children: [
                                  Image.asset(
                                    ICON_VIP_BG,
                                    width: 30.hx,
                                    height: 12.vx,
                                  ),
                                  Positioned(
                                      top: 1.vx,
                                      right: 4.hx,
                                      bottom: 0,
                                      child: Text(
                                        "$vipYear年",
                                        style: getTextStyle(
                                          size: 6,
                                          color: const Color(0xffdbaa58),
                                          isBold: true,
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Row(
                                children: List.generate(
                                    5,
                                    ((index) => Container(
                                          margin: EdgeInsets.only(right: 1.hx),
                                          child: Image.asset(
                                            ICON_SCORE,
                                            width: 8.hx,
                                            height: 8.hx,
                                          ),
                                        ))),
                              ),
                              Text(
                                "$score分",
                                style: getTextStyle(
                                    color: const Color(0xfff78635), size: 8),
                              ),
                              2.hGap,
                              Text("$dianpingCount条评价",
                                  style: getTextStyle(
                                      color: const Color(0xff727272), size: 8))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              indexInRange<
                                      HomeFilterSchoolItemListCourseObject>(
                                  0, schoolItem.courseObject,
                                  builder: (course) {
                                return Row(
                                  children: [
                                    Text(
                                      "${course.originPrice}元起",
                                      style: getTextStyle(
                                          color: const Color(0xff666666),
                                          size: 9,
                                          isBold: true),
                                    ),
                                    10.hGap,
                                    Text(
                                      "${course.type}  ${course.courseClassName}",
                                      style: getTextStyle(
                                          color: const Color(0xff666666),
                                          size: 9,
                                          isBold: true),
                                    )
                                  ],
                                );
                              }),
                              Text(
                                "${schoolItem.countyName}  ${schoolItem.distanceText}",
                                style: getTextStyle(color: textColor, size: 8),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Visibility(
                      visible: hasPhone,
                      child: GestureDetector(
                        onTap: () {
                          //直接拨号
                          // FlutterPhoneDirectCaller.callNumber(jxPhone!);
                          //跳转到拨号盘
                          launchUrl(Uri.parse("tel:$jxPhone"));
                        },
                        child: Container(
                          child: Image.asset(
                            ICON_SCHOOL_PHONE,
                            width: 24.hx,
                            height: 24.hx,
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 68.hx,
              top: 8.vx,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                rowItemBuilder<String>(labels!.length,
                    itemData: (index) => labels[index],
                    itemBuilder: (title) => Container(
                          margin: EdgeInsets.only(right: 4.hx),
                          padding: EdgeInsets.symmetric(
                              horizontal: 2.hx, vertical: 2.vx),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4.hx)),
                              color: const Color(0xffe5f7fe)),
                          child: Text(
                            title,
                            style: getTextStyle(
                                color: const Color(0xff229ddc), size: 8),
                          ),
                        )),
                rowItemBuilder<HomeFilterSchoolItemListActivity>(
                    activitys!.length,
                    itemData: (index) => activitys[index],
                    isRow: false,
                    itemBuilder: (activity) {
                      return Container(
                        margin: EdgeInsets.only(top: 8.vx),
                        child: Row(
                          children: [
                            getCacheNetImage(activity.icon!,
                                width: 12.hx, height: 12.hx),
                            4.hGap,
                            Text(
                              activity.iconTitle!,
                              style: getTextStyle(
                                  color: activityNameColor, size: 9, isBold: true),
                            )
                          ],
                        ),
                      );
                    })
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget createCoachInfoLayout(HomeCoachFilterItemList coachItem) {
    var priceStyle = getTextStyle(
      color: const Color(0xff666666),
      size: 8,
    );
    bool hasActivity = coachItem.activity != null &&
        coachItem.activity!.isNotEmpty &&
        coachItem.activity![0].remainingDays!.isNotEmpty;
    var brightness = isLightStyle(context);
    var nameColor = brightness ? Colors.black : const Color(0xffdddddd);
    return Container(
      margin: EdgeInsets.only(bottom: 8.vx),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              SizedBox(
                  height: 48.vx,
                  child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        20.hGap,
                        getCacheNetImage(coachItem.avatar!,
                            width: 36.hx, height: 36.hx, isCircle: true),
                        10.hGap,
                        Expanded(
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text(
                                coachItem.name!,
                                style: getTextStyle(
                                    color: nameColor, isBold: true),
                              ),
                              // 4.vGap,
                              Row(
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: List.generate(
                                        5,
                                        ((index) => Container(
                                              margin:
                                                  EdgeInsets.only(right: 1.hx),
                                              child: Image.asset(
                                                ICON_SCORE,
                                                width: 8.hx,
                                                height: 8.hx,
                                              ),
                                            ))),
                                  ),
                                  Text(
                                    "${coachItem.score}",
                                    style: getTextStyle(
                                        color: const Color(0xfff78635),
                                        size: 8),
                                  ),
                                  // 2.hGap,
                                  Text("${coachItem.dianpingCount}条评价",
                                      style: getTextStyle(
                                          color: const Color(0xff727272),
                                          size: 8))
                                ],
                              ),
                              4.vGap,
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  indexInRange<
                                          HomeCoachFilterItemListCourseObject>(
                                      0, coachItem.courseObject,
                                      builder: (course) {
                                    return Text(
                                      "${course.price}元起",
                                      style: priceStyle,
                                    );
                                  },
                                      placeholder: Text(
                                        "面议",
                                        style: priceStyle,
                                      )),
                                  10.hGap,
                                  Text(
                                    "  ${coachItem.jiaxiaoName}",
                                    style: priceStyle,
                                  ),
                                ],
                              ),
                            ])),
                      ])),
              Positioned(
                right: 0,
                bottom: 0,
                child: Text(
                  "${coachItem.countyName}  ${coachItem.distanceText}",
                  style: getTextStyle(color: textColor, size: 8),
                ),
              )
            ],
          ),
          6.vGap,
          Row(
            children: [
              hasActivity
                  ? CustomPaint(
                      size: Size(56.hx, 10.vx),
                      painter:
                          EndTimePainter(coachItem.activity![0].remainingDays!),
                    )
                  : SizedBox(
                      width: 56.hx,
                    ),
              10.hGap,
              rowItemBuilder<HomeCoachFilterItemListActivity>(
                  coachItem.activity!.length,
                  itemData: (index) => coachItem.activity![index],
                  isRow: false,
                  itemBuilder: (activity) {
                    return Row(
                      children: [
                        getCacheNetImage(activity.icon!,
                            width: 12.hx, height: 12.hx),
                        4.hGap,
                        Text(
                          activity.iconTitle!,
                          style: getTextStyle(
                              color: textColor, size: 9, isBold: true),
                        )
                      ],
                    );
                  })
            ],
          )
        ],
      ),
    );
  }
}
