import 'package:azlistview/azlistview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/components.dart';
import '../../model/model.dart';
import '../../net/bean/bean.dart';
import '../../net/net.dart';
import '../../static/static.dart';
import '../../utils/utils.dart';
import '../pages.dart';

class BuyNewEnergyPage extends StatefulWidget {
  const BuyNewEnergyPage({super.key, this.pageController});

  final PageController? pageController;

  @override
  State<BuyNewEnergyPage> createState() => _BuyNewEnergyPageState();
}

class _BuyNewEnergyPageState extends State<BuyNewEnergyPage> {
  @override
  Widget build(BuildContext context) {
    Get.put(EnergyController());
    return Scaffold(
      body: GetX<EnergyController>(
        builder: (controller) {
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
                  carBrandModel.firstLetter!,
                  style:
                      getTextStyle(size: 8, color: Colors.black, isBold: true),
                ),
              );
            },
            susItemHeight: 20.vx,
            itemBuilder: (BuildContext context, int index) {
              // if (index == 0) {
              //   return _headerLayout();
              // }
              var carBrandModel = brandList[index];
              var seriesList = carBrandModel.seriesList.data;
              return UnderLineContainer(
                paddingLeft: 8.hx,
                paddingRight: 8.hx,
                lineStrokeWidth: 0.2,
                child: InkWell(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 8.hx, right: 18.hx),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 24.vx,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  getCacheNetImage(carBrandModel.logoUrl!,
                                      width: 14.hx,
                                      height: 14.hx,
                                      isCircle: true),
                                  8.hGap,
                                  Text(
                                    carBrandModel.name!,
                                    style: getTextStyle(
                                        size: 10,
                                        color: Colors.black,
                                        isBold: true),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "在售${carBrandModel.seriesCount}款",
                                    style: getTextStyle(
                                      size: 8,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  4.hGap,
                                  Image.asset(
                                    ICON_ARROW_RIGHT,
                                    width: 8.hx,
                                    height: 8.hx,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        seriesList.isNotEmpty
                            ? ExpandGridView(
                                itemCount: seriesList.length,
                                itemBuilder: (_, index) {
                                  var seriesItem = seriesList[index];
                                  return Container(
                                    alignment: Alignment.center,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        getCacheNetImage(seriesItem.logoUrl!,
                                            fit: BoxFit.contain,
                                            width: 44.hx,
                                            height: 24.vx),
                                        6.vGap,
                                        Text(
                                          seriesItem.name!,
                                          style: getTextStyle(
                                              size: 8, color: Colors.black54),
                                        )
                                      ],
                                    ),
                                  );
                                },
                                mainAxisExtent: 56.vx,
                                crossAxisCount: 3,
                              )
                            : SizedBox.fromSize()
                      ],
                    ),
                  ),
                  onTap: () {
                    if (carBrandModel.homeUrl!.isEmpty) return;
                    Get.to(WebViewPage(
                        url: Uri.parse(carBrandModel.homeUrl!),
                        title: carBrandModel.name!));
                  },
                ),
              );
            },
            indexBarData: ['选', ...indexBarData],
            indexBarOptions: const IndexBarOptions(
              needRebuild: true,
              selectTextStyle: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
              selectItemDecoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFF333333)),
              indexHintWidth: 96,
              indexHintHeight: 97,
              indexHintDecoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              indexHintAlignment: Alignment.centerRight,
              indexHintTextStyle:
                  TextStyle(fontSize: 24.0, color: Colors.black87),
              indexHintOffset: Offset(-30, 0),
            ),
          );
        },
      ),
    );
  }
}

class EnergyController extends GetxController {
  final brandList = <NEnergyListDataBrandList>[].obs;
  final indexBarList = <String>[];

  @override
  void onReady() {
    loadData();
  }

  void loadData() async {
    energyListData().then((brandDatas) {
      var carBrandList = <NEnergyListDataBrandList>[];
      indexBarList.clear();
      for (var element in brandDatas) {
        var tagIndex = element.groupName;
        if (!indexBarList.contains(tagIndex)) {
          indexBarList.add(tagIndex!);
        }
        carBrandList.addAll(element.brandList!);
      }
      // A-Z sort.
      SuspensionUtil.sortListBySuspensionTag(carBrandList);

      // show sus tag.
      SuspensionUtil.setShowSuspensionStatus(carBrandList);

      // add header.
      // carBrandList.insert(0, CarBrandModel(name: 'header', tagIndex: '选'));
      brandList.value = carBrandList;
    });
  }
}
