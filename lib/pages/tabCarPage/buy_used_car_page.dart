import 'package:flustars_flutter3/flustars_flutter3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_actions/components/components.dart';
import 'package:flutter_actions/net/request_tab_mc.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'package:get/get.dart';

import '../../net/bean/bean.dart';
import '../../static/static.dart';

class BuyUsedCarPage extends StatefulWidget {
  const BuyUsedCarPage({super.key});

  @override
  State<BuyUsedCarPage> createState() => _BuyUsedCarPageState();
}

class _BuyUsedCarPageState extends State<BuyUsedCarPage> {
  @override
  Widget build(BuildContext context) {
    Get.put(UsedCarController());
    return Scaffold(
      backgroundColor: const Color(0xfff6f6f6),
      body: RefreshIndicator(
          child: CustomScrollView(
            slivers: [
              _dailyRecommandLayout(),
              _listDataLayout(),
            ],
          ),
          onRefresh: () async {
            Get.find<UsedCarController>().loadData();
            return;
          }),
    );
  }

  _dailyRecommandLayout() {
    return GetX<UsedCarController>(builder: (controller) {
      var list = controller.recommandList.value;
      if (list.isEmpty) {
        return const SliverToBoxAdapter(
          child: SizedBox.shrink(),
        );
      }
      return SliverToBoxAdapter(
        child: Container(
          height: 164.vx,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: Colors.white,
                constraints: BoxConstraints.expand(height: 24.vx),
                padding: EdgeInsets.only(top: 8.vx),
                child: Container(
                  margin: EdgeInsets.only(left: 12.hx),
                  child: Text(
                    "特卖超值",
                    style: getTextStyle(
                        color: const Color(0xff979797), isBold: true, size: 10),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.only(left: 12.hx, top: 6.vx, bottom: 4.vx),
                  child: ListView.builder(
                      itemExtent: 102.vx,
                      scrollDirection: Axis.horizontal,
                      itemCount: list.length,
                      itemBuilder: (_, index) {
                        var recommandItem = list[index];
                        var imageUrl = recommandItem.image!.small ?? "";
                        return Container(
                          width: 102.hx,
                          height: 130.vx,
                          color: Colors.white,
                          margin: EdgeInsets.only(right: 6.hx),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              getCacheNetImage(imageUrl,
                                  height: 56.vx,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4.hx),
                                      topRight: Radius.circular(4.hx))),
                              Expanded(
                                  child: Container(
                                color: Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "${recommandItem.brandName}",
                                      style: getTextStyle(
                                          size: 14,
                                          color: Colors.black,
                                          isBold: true),
                                      maxLines: 1,
                                    ),
                                    Text(
                                      "${DateUtil.formatDate(DateTime.fromMillisecondsSinceEpoch(recommandItem.updateTime!), format: DateFormats.y_mo)} | ${recommandItem.mileage! ~/ 1000}万公里",
                                      style: getTextStyle(
                                          size: 8, color: Colors.grey),
                                    ),
                                    Text(
                                      "${recommandItem.price! / 10000}万",
                                      style: getTextStyle(
                                          size: 11,
                                          color: const Color(0xffff5c21),
                                          isBold: true),
                                    ),
                                    Text(
                                      "超值指数",
                                      style:
                                          getTextStyle(size: 8, isBold: true),
                                    ),
                                  ],
                                ),
                              ))
                            ],
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  _listDataLayout() {
    return GetX<UsedCarController>(builder: (controller) {
      var list = controller.listData.value;
      if (list.isEmpty) {
        return const SliverToBoxAdapter(
          child: SizedBox.shrink(),
        );
      }

      return SliverToBoxAdapter(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              8.vGap,
              Container(
                margin: EdgeInsets.only(left: 12.hx),
                child: Text(
                  "平台精选",
                  style: getTextStyle(
                      color: const Color(0xff979797), isBold: true, size: 10),
                ),
              ),
              ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 12.hx),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: list.length,
                  itemExtent: 86.vx,
                  itemBuilder: (_, index) {
                    var list = controller.listData.value;
                    var listItem = list[index];
                    var imageUrl = listItem.image!.small ?? "";
                    var labes = listItem.labels.data;
                    return Container(
                      height: 86.vx,
                      padding: EdgeInsets.only(top: 12.vx),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          getCacheNetImage(imageUrl,
                              width: 80.hx, height: 56.vx),
                          8.hGap,
                          Expanded(
                              child: UnderLineContainer(
                            lineStrokeWidth: 0.2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${listItem.title}",
                                  style: getTextStyle(
                                      size: 9,
                                      color: Colors.black,
                                      isBold: true),
                                  maxLines: 1,
                                ),
                                Text(
                                  "${DateUtil.formatDate(DateTime.fromMillisecondsSinceEpoch(listItem.updateTime!), format: DateFormats.y_mo)} | ${listItem.mileage! ~/ 1000}万公里 | ${listItem.cityName}",
                                  style:
                                      getTextStyle(size: 8, color: Colors.grey),
                                ),
                                Text(
                                  "${listItem.price! / 10000}万",
                                  style: getTextStyle(
                                      size: 11,
                                      color: const Color(0xffff5c21),
                                      isBold: true),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children:
                                          List.generate(labes.length, (index) {
                                        var color = index % 2 == 0
                                            ? const Color(0xffd5863e)
                                            : const Color(0xffd7b612);
                                        return Container(
                                          margin: EdgeInsets.only(right: 4.hx),
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 2.hx),
                                          height: 14.vx,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: color),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(2.hx))),
                                          child: Text(
                                            labes[index].name!,
                                            style: getTextStyle(
                                                color: color, size: 8),
                                          ),
                                        );
                                      }),
                                    ),
                                    Image.asset(
                                      ICON_SCORE,
                                      width: 12.hx,
                                      height: 12.hx,
                                    )
                                  ],
                                ),
                                10.vGap
                              ],
                            ),
                          ))
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      );
    });
  }
}

class UsedCarController extends GetxController {
  final listData = <UCarListItemItemList>[].obs;
  final recommandList = <UCarRecommandItemItemList>[].obs;
  @override
  void onReady() {
    loadData();
  }

  void loadData() {
    uCarListData().then((value) {
      listData.value = value.data!.itemList.data;
    });

    uRecommandData().then((value) {
      recommandList.value = value.data!.itemList.data;
    });
  }
}
