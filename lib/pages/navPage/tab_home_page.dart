import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_actions/components/components.dart';
import 'package:flutter_actions/pages/pages.dart';
import 'package:flutter_actions/pages/state/state.dart';
import 'package:flutter_actions/routes/route_manager.dart';
import 'package:flutter_actions/static/res_constant.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'package:get/get.dart';

// import 'package:keframe/keframe.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shimmer/shimmer.dart';
import '../../generated/json/base/json_convert_content.dart';
import '../../net/bean/bean.dart';
import '../../net/net.dart';
import '../../static/static.dart';

class TabHomePage extends StatefulWidget {
  const TabHomePage({super.key});

  @override
  State<TabHomePage> createState() => _TabHomePageState();
}

class _TabHomePageState extends State<TabHomePage>
    with TickerProviderStateMixin {
  TabController? tabController;
  PageController? pageController;
  bool listenerInner = false;

  final BehaviorSubject<int> tabIndexController = BehaviorSubject.seeded(0);

  @override
  void initState() {
    super.initState();
    setSystemStatusBarTransparentBlack();
    tabController = TabController(length: 2, vsync: this);
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

  _adEntrance(String url, String title) {
    if (url.isNotEmpty) {
      Get.to(WebViewPage(url: Uri.parse(url), title: title));
    }
  }

  @override
  Widget build(BuildContext context) {
    Get.put(TabHomeController());
    return Scaffold(
      body: SafeArea(
          child: Stack(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.hx, vertical: 4.vx),
          child: NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                // var metrics = notification.metrics;
                if (notification is ScrollStartNotification) {
                  // print("start");
                  Get.find<TabHomeController>().showFloatCloase(false);
                } else if (notification is ScrollEndNotification) {
                  // print("end");
                  Get.find<TabHomeController>().showFloatCloase(true);
                } else if (notification is UserScrollNotification) {
                  switch (notification.direction) {
                    case ScrollDirection.forward:
                      // print("forward");
                      break;
                    case ScrollDirection.idle:
                      // print("idle");
                      break;
                    case ScrollDirection.reverse:
                      // print("reverse");
                      break;
                  }
                }

                return true;
              },
              child: _content()),
        ),
        GetX<TabHomeController>(
          builder: (controller) {
            var map = controller.adJsonData.value;
            if (map.isEmpty) return const SizedBox.shrink();
            var floatAd = ImageItemEntity.fromJson(map["float"]);
            var marginRight = controller.floatRight.value;
            return Positioned(
                right: marginRight,
                bottom: 36.vx,
                child: GestureDetector(
                  child: SizedBox(
                    width: 82.hx,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          ICON_CLOSE,
                          width: 12.hx,
                          height: 12.hx,
                        ),
                        Container(
                          width: 72.hx,
                          height: 44.vx,
                          margin: EdgeInsets.only(right: 2.hx),
                          child:
                              getCacheNetImage(floatAd.image, fit: BoxFit.fill),
                        ),
                      ],
                    ),
                  ),
                  onTap: () => _adEntrance(floatAd.url, floatAd.title),
                ));
          },
        )
      ])),
    );
  }

  _schoolSliverList() {
    return GetX<TabHomeController>(builder: (controller) {
      var schoolItems = controller.schoolListData.data;
      print("_schoolSliverList schoolItems:${schoolItems.length}");
      if (schoolItems.isEmpty) {
        return const SliverToBoxAdapter(
          child: SizedBox(),
        );
      } else {
        return FrameSeparateListView(
            itemCount: schoolItems.length,
            openOpacity: true,
            itemTap: (index) {
              Get.toNamed(RoutePath.DETIAL);
            },
            placeHeight: 44.vx,
            builder: (_, index) => createSchoolInfoLayout(schoolItems[index]));
      }
    });
  }

  _coachSliverList() {
    return GetX<TabHomeController>(builder: (controller) {
      var coachItems = controller.coacheListData.data;
      print("_coachSliverList coachItems:${coachItems.length}");
      if (coachItems.isEmpty) {
        return const SliverToBoxAdapter(
          child: SizedBox(),
        );
      } else {
        return FrameSeparateListView(
            openOpacity: true,
            itemCount: coachItems.length,
            placeHeight: 48.vx,
            builder: (_, index) => createCoachInfoLayout(coachItems[index]));
      }
    });
  }

  _tabLayout() {
    return GetX<TabHomeController>(builder: (controller) {
      var dataList = controller.tabCategory.data;
      if (dataList.isEmpty) {
        return SizedBox(
          height: 40.vx,
        );
      } else {
        var tabs = List<Tab>.generate(
            dataList.length,
            (index) => Tab(
                  text: dataList[index],
                )).toList();
        return SizedBox(
          height: 40.vx,
          child: TabBar(
            onTap: (index) {},
            controller: tabController,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 6.hx),
            tabs: tabs,
            indicatorColor: Colors.black,
          ),
        );
      }
    });
  }

  _searchLayout() {
    var brightness = isLightStyle(context);
    var nameColor = brightness ? Colors.black : const Color(0xffdddddd);
    var searchBg =
        brightness ? const Color(0xffdddddd) : const Color(0xff1f2222);
    return Container(
      padding: EdgeInsets.only(bottom: 2.vx),
      width: 240.hx,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            child: Row(
              children: [
                Text("泉州",
                    style:
                        getTextStyle(color: nameColor, size: 10, isBold: true)),
              ],
            ),
            onTap: () {},
          ),
          8.hGap,
          Expanded(
              child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 24.vx,
              padding: EdgeInsets.symmetric(horizontal: 8.hx),
              decoration: BoxDecoration(
                  color: searchBg,
                  borderRadius: BorderRadius.all(Radius.circular(12.vx))),
              child: Row(
                children: [
                  Icon(Icons.search, color: nameColor),
                  6.hGap,
                  Text(
                    "搜索驾校/教练",
                    style: getTextStyle(
                        color: const Color(0xff949c9a), size: 10, isBold: true),
                  )
                ],
              ),
            ),
          )),
          8.hGap,
          GestureDetector(
            child: const ImageIcon(AssetImage(ICON_MSG_LINGDANG)),
            onTap: () {},
          )
        ],
      ),
    );
  }

  _adLayout() {
    var brightness = isLightStyle(context);
    var nameColor = brightness ? Colors.black : const Color(0xffe1e1e1);
    return GetX<TabHomeController>(builder: (controller) {
      var map = controller.adJsonData.value;
      if (map.isEmpty) return const SizedBox.shrink();
      var topAdList =
          jsonConvert.convertListNotNull<ImageItemEntity>(map["top"]).data;
      var centerAdList =
          jsonConvert.convertListNotNull<ImageItemEntity>(map["center"]).data;
      var bottomAd = ImageItemEntity.fromJson(map["bottom"]);
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          12.vGap,
          SizedBox(
            height: 48.vx,
            child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemExtent: 48.vx,
                itemCount: topAdList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  var adItem = topAdList[index];
                  return InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        getCacheNetImage(
                          adItem.image,
                          width: 26.hx,
                          height: 26.hx,
                        ),
                        Text(
                          adItem.title,
                          style: getTextStyle(color: nameColor, size: 8),
                        )
                      ],
                    ),
                    onTap: () => _adEntrance(adItem.url, adItem.title),
                  );
                }),
          ),
          Container(
            height: 48.vx,
            margin: EdgeInsets.symmetric(vertical: 8.vx),
            child: GridView.builder(
                itemCount: centerAdList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: centerAdList.length,
                    mainAxisExtent: 48.vx,
                    crossAxisSpacing: 6.hx),
                itemBuilder: (_, index) {
                  var centerItem = centerAdList[index];
                  return GestureDetector(
                    child: getCacheNetImage(centerItem.image,
                        radius: 4.hx, fit: BoxFit.contain),
                    onTap: () => _adEntrance(centerItem.url, centerItem.title),
                  );
                }),
          ),
          Container(
            height: 36.vx,
            child: GestureDetector(
              child: getCacheNetImage(bottomAd.image, fit: BoxFit.fitWidth),
              onTap: () {
                if (bottomAd.url.isNotEmpty) {
                  Get.to(
                    WebViewPage(
                      url: Uri.parse(bottomAd.url),
                      title: bottomAd.title,
                      backListener: () async {
                        return Get.generalDialog(pageBuilder: (_, i, j) {
                          return Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 12.hx),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.hx))),
                                  height: 200.vx,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "1份学车权益带领取",
                                        style: getTextStyle(
                                            size: 16, isBold: true),
                                      ),
                                      Text(
                                        "2000现金补贴",
                                        style: getTextStyle(
                                            color: Colors.amber,
                                            size: 16,
                                            isBold: true),
                                      ),
                                      Container(
                                        height: 36.vx,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 12.hx),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(18.vx)),
                                        ),
                                        child: Text(
                                          "点击领取",
                                          style: getTextStyle(
                                              color: Colors.white,
                                              size: 16,
                                              isBold: true),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                12.vGap,
                                GestureDetector(
                                  child: Image.asset(
                                    ICON_CLOSE,
                                    width: 18.hx,
                                    height: 18.hx,
                                  ),
                                  onTap: () {
                                    Get.back<bool>(result: true);
                                  },
                                )
                              ],
                            ),
                          );
                        });
                      },
                    ),
                  );
                }
              },
            ),
          )
        ],
      );
    });
  }

  Widget _content() {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 24.vx),
          child: ER_ExtendNestedTabView(
              enableLoadMore: true,
              tabController: tabController,
              onRefresh: () => Get.find<TabHomeController>().refreshAllData(),
              onLoadMore: () =>
                  Get.find<TabHomeController>().loadMore(tabController!.index),
              headerSlivers: [
                SliverToBoxAdapter(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // _searchLayout(),
                      // 12.vGap,
                      _adLayout(),
                    ],
                  ),
                ),
              ],
              tabHeader: _tabLayout(),
              tabViewSlivers: [_schoolSliverList(), _coachSliverList()]),
        ),
        Positioned(
          child: _searchLayout(),
          top: 0,
        )
      ],
    );
  }
}

class SchoolAdItem {
  final String logo;
  final String schoolIcon;
  final String schoolName;
  final String schoolDesc;

  SchoolAdItem(
    this.schoolIcon,
    this.logo,
    this.schoolName,
    this.schoolDesc,
  );
}

class TabHomeController extends GetxController {
  final adJsonData = {}.obs;
  final tabCategory = <String>[].obs;
  final schoolListData = <HomeFilterSchoolItemList>[].obs;
  final coacheListData = <HomeCoachFilterItemList>[].obs;
  final leftTopPadding = 200.vx.obs;
  final rightTopPadding = 200.vx.obs;
  final floatRight = 8.hx.obs; //-14.hx

  Timer? timer;
  bool show = true;

  void showFloatCloase(bool isShow) {
    if (show == isShow) return;
    if (isShow) {
      timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        floatRight.value = 8.hx;
        timer.cancel();
      });
    } else {
      timer?.cancel();
      floatRight.value = -14.hx;
    }
    show = isShow;
  }

  @override
  void onReady() {
    refreshAllData();
  }

  Future<LoadResult> refreshAllData() async {
    loadImageAd();
    loadTabCategory();
    await Future.delayed(const Duration(milliseconds: 250));
    filterCoachData(false);
    filterSchoolData(false);
    return LoadResult();
  }

  Future<LoadResult> loadMore(int tabIndex) async {
    if (tabIndex == 0) {
      filterSchoolData(true);
    } else {
      filterCoachData(true);
    }
    return LoadResult();
  }

  loadImageAd() async {
    await Future.delayed(const Duration(seconds: 1), () async {
      adJsonData.value = await loadAndDecodeJson(JSON_HOME_AD);
    });
  }

  loadTabCategory() async {
    homeCategoryData().then((result) {
      tabCategory.value =
          result.data!.itemList!.data.map((e) => e.name ?? "").toList();
    });
  }

  filterSchoolData(bool isLoadMore) async {
    print("object");
    var result = await schoolFilterResult();
    var newData = result.data!.itemList.data;
    print("filterSchoolData newData:${newData.length}");
    if (isLoadMore) {
      schoolListData.value += newData;
    } else {
      schoolListData.value = newData;
      schoolListData.value += newData;
    }
  }

  filterCoachData(bool isLoadMore) async {
    var result = await coachFilterResult();
    var newData = result.data!.itemList.data;
    if (isLoadMore) {
      coacheListData.value += newData;
    } else {
      coacheListData.value = newData;
      coacheListData.value += newData;
    }
  }
}

class BottomWidget extends StatelessWidget implements PreferredSizeWidget {
  BottomWidget({super.key, required this.widget, required this.size});

  final Widget widget;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return widget;
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => size;
}
