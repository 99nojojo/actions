import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_actions/components/components.dart';
import 'package:flutter_actions/pages/web_view_page.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'package:get/get.dart';

import '../../net/bean/bean.dart';
import '../../net/net.dart';

const tabs = ["平台精选", "浏览历史", "我的收藏"];

//#这里的字母粘性表是自己封装的，性能不好
class BuyNewCarPage2 extends StatefulWidget {
  const BuyNewCarPage2({super.key});

  @override
  State<BuyNewCarPage2> createState() => _BuyNewCarPageState2();
}

class _BuyNewCarPageState2 extends State<BuyNewCarPage2>
    with TickerProviderStateMixin {
  TabController? tabController;
  PageController? recommandTabController;
  EasyRefreshController? _easyRefreshContainer;

  @override
  void initState() {
    tabController = TabController(length: tabs.length, vsync: this)
      ..addListener(() {
        Get.find<NewCarController>()
            .changeRecommandHeight(tabController!.index > 0 ? 60.vx : 160.vx);
      });
    recommandTabController = PageController();
    _easyRefreshContainer = EasyRefreshController(
        controlFinishLoad: false, controlFinishRefresh: true);
  }

  _headerLayout() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GetX<NewCarController>(builder: (controller) {
          var hotSaleList = controller.hotSaleList.value;
          if (hotSaleList.isEmpty) return const SizedBox.shrink();
          var length = hotSaleList.length > 5 ? 5 : hotSaleList.length;
          return Container(
            margin: EdgeInsets.only(top: 10.vx),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 12.hx),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5, mainAxisExtent: 44.vx),
              itemBuilder: (_, index) {
                var hotSaleItem = hotSaleList[index];
                return InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      getCacheNetImage(hotSaleItem.imageUrl!,
                          width: 22.vx, height: 22.vx, isCircle: true),
                      Text(
                        hotSaleItem.title!,
                        style: getTextStyle(size: 8, color: Colors.black54),
                      )
                    ],
                  ),
                  onTap: () {
                    Get.to(WebViewPage(
                        url: Uri.parse(hotSaleItem.actionUrl!),
                        title: hotSaleItem.title!));
                  },
                );
              },
              itemCount: length,
            ),
          );
        }),
        GetX<NewCarController>(builder: (controller) {
          var brandConditions = controller.brandConditions.value;
          if (brandConditions.isEmpty) return const SizedBox.shrink();
          var length = brandConditions.length > 5 ? 5 : brandConditions.length;
          return Container(
            margin: EdgeInsets.only(top: 10.vx),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 12.hx),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5, mainAxisExtent: 40.vx),
              itemBuilder: (_, index) {
                var brandItem = brandConditions[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    getCacheNetImage(brandItem.logoUrl!,
                        width: 16.vx, height: 16.vx, isCircle: true),
                    Text(
                      brandItem.name!,
                      style: getTextStyle(size: 8, color: Colors.black54),
                    )
                  ],
                );
              },
              itemCount: length,
            ),
          );
        }),
        GetX<NewCarController>(
          builder: (controller) {
            var conditionList = controller.conditionList.value;
            if (conditionList.isEmpty) return const SizedBox.shrink();
            return Container(
              margin: EdgeInsets.only(top: 10.vx),
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 12.hx),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 2.vx,
                    mainAxisSpacing: 2.hx,
                    crossAxisCount: 5,
                    mainAxisExtent: 22.vx),
                itemBuilder: (_, index) {
                  var conditionItem = conditionList[index];
                  return InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color(0xfff2f6fc),
                          borderRadius:
                              BorderRadius.all(Radius.circular(4.hx))),
                      child: Text(
                        conditionItem.name!,
                        style: getTextStyle(size: 8, color: Colors.black54),
                      ),
                    ),
                    onTap: () {
                      Get.to(WebViewPage(
                        url: Uri.parse(conditionItem.conditionUrl!),
                        title: conditionItem.name!,
                      ));
                    },
                  );
                },
                itemCount: conditionList.length,
              ),
            );
          },
        ),
        TabBar(
            indicatorPadding:
                EdgeInsets.symmetric(horizontal: 12.hx, vertical: 0),
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            controller: tabController,
            isScrollable: true,
            indicatorColor: Colors.black,
            tabs: List.generate(
                tabs.length,
                (index) => Tab(
                      text: tabs[index],
                    ))),
        GetX<NewCarController>(builder: (controller) {
          var recommandListData = controller.recommandList1.value;
          var recommedCount = recommandListData.length;
          var recommandTitles =
              recommandListData.map((e) => e.title ?? "").toList();
          var height = controller.recommandHeight.value;
          return AnimatedContainer(
            height: height,
            duration: const Duration(milliseconds: 300),
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: tabController,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.hx),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      10.vGap,
                      TabGroupLayout(
                        checkTabBgColor: const Color(0xfffdeced),
                        unCheckTabBgColor: const Color(0xfff2f6fc),
                        checkTabTextColor: const Color(0xffc03b47),
                        unCheckTabTextColor: Colors.grey,
                        itemHeight: 20.vx,
                        itemWidth: 54.hx,
                        titles: recommandTitles,
                        onChange: (_, last, current) {
                          recommandTabController?.jumpToPage(current);
                        },
                      ),
                      6.vGap,
                      Expanded(
                          child: PageView(
                        controller: recommandTabController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: List.generate(recommedCount, (index) {
                          var recommandListItems =
                              recommandListData[index].itemList.data;
                          var length = recommandListItems.length > 6
                              ? 6
                              : recommandListItems.length;
                          return GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisExtent: 60.vx, crossAxisCount: 3),
                            itemBuilder: (_, index) {
                              var recommandItem = recommandListItems[index];
                              return Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    getCacheNetImage(recommandItem.logoUrl!,
                                        width: 52.hx, height: 30.vx),
                                    6.vGap,
                                    Text(
                                      recommandItem.name!,
                                      style: getTextStyle(
                                          size: 9,
                                          color: Colors.black,
                                          isBold: true),
                                    )
                                  ],
                                ),
                              );
                            },
                            itemCount: length,
                          );
                        }),
                      )),
                    ],
                  ),
                ),
                Center(
                  child: Text(
                    "暂无浏览历史",
                    style: getTextStyle(size: 10, color: Colors.grey),
                  ),
                ),
                Center(
                  child: Text(
                    "暂无收藏",
                    style: getTextStyle(size: 10, color: Colors.grey),
                  ),
                )
              ],
            ),
          );
        }),
        GetX<NewCarController>(
          builder: (controller) {
            var recommandList2 = controller.recommandList2.value;
            if (recommandList2.isEmpty) return const SizedBox.shrink();
            return Container(
              height: 50.vx,
              margin: EdgeInsets.only(top: 8.vx),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 12.hx),
                  itemCount: recommandList2.length,
                  itemBuilder: (_, index) {
                    var recommandItem2 = recommandList2[index];
                    return InkWell(
                      child: Container(
                        margin: EdgeInsets.only(right: 6.hx),
                        child: getCacheNetImage(recommandItem2.imageUrl!,
                            fit: BoxFit.contain,
                            width: 108.hx,
                            height: 42.vx,
                            radius: 4),
                      ),
                      onTap: () {
                        var url = recommandItem2.actionUrl!;
                        Get.to(WebViewPage(url: Uri.parse(url), title: ""));
                      },
                    );
                  }),
            );
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Get.put(NewCarController());
    return Scaffold(
      body: GetX<NewCarController>(builder: (controller) {
        var brandList = controller.brandList.value;
        if (brandList.isEmpty) return const SizedBox.shrink();
        Map<String, int> categoryCountMap = {};
        for (var brand in brandList) {
          categoryCountMap.putIfAbsent(
              brand.groupName ?? "", () => brand.brandList!.length);
        }
        return EasyRefreshContainer(
            refreshController: _easyRefreshContainer,
            onRefresh: () => Get.find<NewCarController>().loadBrandData(),
            child: StickyHeaderListLayout(
              headerLayout: _headerLayout(),
              headItemHeight: 20.vx,
              bodyItemHeight: 42.vx + 0.2,
              showCategory: true,
              headList: categoryCountMap,
              bodyList: brandList,
              headBuilder: (header, headerHeight) {
                return Container(
                  height: headerHeight,
                  padding: EdgeInsets.only(left: 8.hx),
                  alignment: Alignment.centerLeft,
                  color: const Color(0xfff2f6fc),
                  child: Text(
                    header,
                    style: getTextStyle(
                        size: 8, color: Colors.black, isBold: true),
                  ),
                );
              },
              bodySliveBuilder: (body, bodyItemHeight) {
                var brands = body.brandList;
                return SliverList(
                    delegate: SliverChildBuilderDelegate((_, index) {
                  var brandItem = brands[index];
                  return SizedBox(
                    height: bodyItemHeight,
                    child: UnderLineContainer(
                      paddingLeft: 8.hx,
                      paddingRight: 8.hx,
                      lineStrokeWidth: 0.2,
                      child: InkWell(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 8.hx),
                          height: 42.vx,
                          child: Row(
                            children: [
                              getCacheNetImage(brandItem.logoUrl!,
                                  width: 32.hx, height: 32.hx, isCircle: true),
                              8.hGap,
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    brandItem.name!,
                                    style: getTextStyle(
                                        size: 10,
                                        color: Colors.black,
                                        isBold: true),
                                  ),
                                  6.vGap,
                                  Text(
                                    brandItem.country!,
                                    style: getTextStyle(
                                        size: 7, color: Colors.grey),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Get.to(WebViewPage(
                              url: Uri.parse(brandItem.homeUrl!),
                              title: brandItem.name!));
                        },
                      ),
                    ),
                  );
                }, childCount: brands.length));
              },
            ));
      }),
    );
  }
}

class NewCarController extends GetxController {
  final brandList = <NcarListDataEntity>[].obs;
  final recommandList1 = <NcRecommand1DataItemList>[].obs;
  final recommandList2 = <NcRecommand2DataItemList>[].obs;
  final recommandList3 = <NcRecommand3DataItemList>[].obs;
  final conditionList = <NCarConditionDataItemList>[].obs;
  final brandConditions = <NCarBrandConditionDataEntity>[].obs;
  final hotSaleList = <NCarHotSaleDataItemList>[].obs;
  final recommandHeight = 160.vx.obs;

  @override
  void onReady() {
    loadBrandData();
  }

  void changeRecommandHeight(double height) {
    recommandHeight.value = height;
  }

  Future<LoadResult> loadBrandData() async {
    nCarHotSaleData().then(
        (hotSaleData) => hotSaleList.value = hotSaleData.data!.itemList!.data);
    nCartBrandConditionData().then((value) => brandConditions.value = value);
    nCartConditionData()
        .then((value) => conditionList.value = value.data!.itemList!.data);
    var recommandList = newCarPlatformTjData().then((recommandList) {
      recommandList1.value =
          (recommandList[0] as NcRecommand1DataEntity).itemList.data;
      recommandList2.value =
          (recommandList[1] as NcRecommand2DataEntity).itemList.data;
      recommandList3.value =
          (recommandList[2] as NcRecommand3DataEntity).itemList.data;
    });
    newCarListData().then((value) => brandList.value = value);
    return LoadResult();
  }
}
