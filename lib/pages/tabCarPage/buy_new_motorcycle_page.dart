import 'package:azlistview/azlistview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_actions/net/net.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'package:get/get.dart';

import '../../components/components.dart';
import '../../model/model.dart';
import '../../net/bean/bean.dart';
import '../pages.dart';

const motorTabs = ["热门车系", "浏览历史"];

class BuyNewMotorCyclePage extends StatefulWidget {
  const BuyNewMotorCyclePage({super.key});

  @override
  State<BuyNewMotorCyclePage> createState() => _BuyNewMotorCyclePageState();
}

class _BuyNewMotorCyclePageState extends State<BuyNewMotorCyclePage>
    with TickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: motorTabs.length, vsync: this);
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Get.put(MotorcycleController());
    return GetX<MotorcycleController>(builder: (controller) {
      var brandList = controller.brandList.value;
      var indexBarData = controller.indexBarList;
      if (brandList.isEmpty || indexBarData.isEmpty) {
        return const SizedBox.shrink();
      }
      return AzListView(
        data: brandList,
        itemCount: brandList.length,
        susItemBuilder: (BuildContext context, int index) {
          var carBrandModel = brandList[index];
          if ('选' == carBrandModel.getSuspensionTag()) {
            return Container();
          }
          return Container(
            height: 20.vx,
            padding: EdgeInsets.only(left: 8.hx),
            alignment: Alignment.centerLeft,
            color: const Color(0xfff2f6fc),
            child: Text(
              carBrandModel.tagIndex!,
              style: getTextStyle(size: 8, color: Colors.black, isBold: true),
            ),
          );
        },
        susItemHeight: 20.vx,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return _headerLayout();
          }
          var carBrandModel = brandList[index];
          return SizedBox(
            height: 42.vx + 0.2,
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
                      getCacheNetImage(carBrandModel.logoUrl!,
                          width: 32.hx, height: 32.hx, isCircle: true),
                      8.hGap,
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            carBrandModel.name!,
                            style: getTextStyle(
                                size: 10, color: Colors.black, isBold: true),
                          ),
                          6.vGap,
                          Text(
                            carBrandModel.country!,
                            style: getTextStyle(size: 7, color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  if (carBrandModel.actionUrl!.isEmpty) return;
                  Get.to(WebViewPage(
                      url: Uri.parse(carBrandModel.actionUrl!),
                      title: carBrandModel.name!));
                },
              ),
            ),
          );
        },
        indexBarData: ['选', ...indexBarData],
        indexBarOptions: const IndexBarOptions(
          needRebuild: true,
          selectTextStyle: TextStyle(
              fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500),
          selectItemDecoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xFF333333)),
          indexHintWidth: 96,
          indexHintHeight: 97,
          indexHintDecoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(100))),
          indexHintAlignment: Alignment.centerRight,
          indexHintTextStyle: TextStyle(fontSize: 24.0, color: Colors.black87),
          indexHintOffset: Offset(-30, 0),
        ),
      );
    });
  }

  _headerLayout() {
    return GetX<MotorcycleController>(builder: (controller) {
      var list = controller.homeList.value;
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(list.length, (index) {
          var item = list[index];
          var itemList = item.itemList;
          if (itemList!.isEmpty) return const SizedBox.shrink();
          var length = itemList.length;
          switch (item.displayOrder) {
            case 2:
              length = itemList.length > 5 ? 5 : itemList.length;
              return _layout2(itemList, length);
            case 3:
              return _layout3(itemList, length);
            case 4:
              return _layout4(itemList, length);
            case 5:
              return _layout5(itemList, length);
          }
          return Container();
        }),
      );
    });
  }

  _layout3(List<MotocycleHomeDataItemListItemList> itemList, int length) {
    return Container(
      margin: EdgeInsets.only(top: 10.vx),
      child: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 12.hx),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 2.vx,
            mainAxisSpacing: 2.hx,
            crossAxisCount: 4,
            mainAxisExtent: 22.vx),
        itemBuilder: (_, index) {
          var conditionItem = itemList[index];
          return InkWell(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color(0xfff2f6fc),
                  borderRadius: BorderRadius.all(Radius.circular(4.hx))),
              child: Text(
                conditionItem.title!,
                style: getTextStyle(size: 8, color: Colors.black54),
              ),
            ),
            onTap: () {
              Get.to(WebViewPage(
                url: Uri.parse(conditionItem.actionUrl!),
                title: conditionItem.title!,
              ));
            },
          );
        },
        itemCount: length,
      ),
    );
  }

  _layout2(List<MotocycleHomeDataItemListItemList> itemList, int length) {
    var searchKeyList = itemList.map((e) => e.title ?? "").toList();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.only(top: 8.vx, left: 12.hx, right: 12.hx),
          child: SearchLayout(
            height: 24.vx,
            title: searchKeyList[0],
            adverHints: searchKeyList,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.vx),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 12.hx),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5, mainAxisExtent: 44.vx),
            itemBuilder: (_, index) {
              var hotSaleItem = itemList[index];
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
        )
      ],
    );
  }

  _layout4(List<MotocycleHomeDataItemListItemList> itemList, int length) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TabBar(
            physics: const NeverScrollableScrollPhysics(),
            indicatorPadding:
                EdgeInsets.symmetric(horizontal: 12.hx, vertical: 0),
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            controller: tabController,
            isScrollable: true,
            indicatorColor: Colors.black,
            tabs: List.generate(
                motorTabs.length,
                (index) => Tab(
                      text: motorTabs[index],
                    ))),
        AnimatedContainer(
          height: 120.vx,
          duration: const Duration(milliseconds: 300),
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: tabController,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.hx),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 60.vx, crossAxisCount: 3),
                  itemBuilder: (_, index) {
                    var recommandItem = itemList[index];
                    return Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          getCacheNetImage(recommandItem.imageUrl!,
                              width: 52.hx, height: 30.vx),
                          6.vGap,
                          Text(
                            recommandItem.title!,
                            style: getTextStyle(
                                size: 9, color: Colors.black, isBold: true),
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: length,
                ),
              ),
              Center(
                child: Text(
                  "暂无浏览历史",
                  style: getTextStyle(size: 10, color: Colors.grey),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  _layout5(List<MotocycleHomeDataItemListItemList> itemList, int length) {
    return Container(
      height: 50.vx,
      margin: EdgeInsets.only(top: 8.vx),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 12.hx),
          itemCount: itemList.length,
          itemBuilder: (_, index) {
            var recommandItem2 = itemList[index];
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
  }
}

class MotorcycleController extends GetxController {
  final homeList = <MotocycleHomeDataItemList>[].obs;
  final brandList = <CarBrandModel>[].obs;
  final indexBarList = <String>[];
  @override
  void onReady() {
    loadData();
  }

  Future<LoadResult> loadData() async {
    motoHomeData().then((value) {
      homeList.value = value.data!.itemList.data;
    });
    motorCycleListData().then((brandDatas) {
      var carBrandList = <CarBrandModel>[];
      indexBarList.clear();
      for (var element in brandDatas) {
        var tagIndex = element.groupName;
        if (!indexBarList.contains(tagIndex)) {
          indexBarList.add(tagIndex!);
        }
        var brandList = element.brandList;
        brandList?.forEach((element) {
          var firstLetter = element.firstLetter;
          carBrandList.add(CarBrandModel(
              name: element.name,
              logoUrl: element.logoUrl,
              actionUrl: element.homeUrl,
              tagIndex:
                  RegExp("[A-Z]").hasMatch(firstLetter!) ? firstLetter : "#",
              country: element.country));
        });
      }
      // A-Z sort.
      SuspensionUtil.sortListBySuspensionTag(carBrandList);

      // show sus tag.
      SuspensionUtil.setShowSuspensionStatus(carBrandList);

      // add header.
      carBrandList.insert(0, CarBrandModel(name: 'header', tagIndex: '选'));
      brandList.value = carBrandList;
    });
    return LoadResult();
  }
}
