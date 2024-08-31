import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_actions/components/components.dart';
import 'package:flutter_actions/net/net.dart';
import 'package:flutter_actions/static/net_url_list.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'package:get/get.dart';

import '../model/model.dart';
import '../net/bean/bean.dart';

class JxImageListPage extends StatefulWidget {
  const JxImageListPage({super.key});

  @override
  State<JxImageListPage> createState() => _JxImageListPageState();
}

class _JxImageListPageState extends State<JxImageListPage> {
  final List<NameImageType> nITList = [
    NameImageType("驾校上传", jxImageTypeUrl, jxImagesUrl),
    NameImageType("教练上传", jlImageTypeUrl, jlImagesUrl),
    NameImageType("学员上传", xyImageTypeUrl, xyImagesUrl),
  ];

  @override
  void initState() {
    super.initState();
    setSystemStatusBarTransparentWhite();
  }

  void tabIndexSelect(int index) {
    Get.find<JxImageListController>().requestData(index);
  }

  // DefaultTabController(
  // length: nITList.length,
  // child:

  @override
  Widget build(BuildContext context) {
    Get.put(JxImageListController(nITList));
    return DefaultTabController(
      length: nITList.length,
      child: Scaffold(
        appBar: SimpleAppBar(
          backListener: () => Get.back(),
          isDarkTheme: true,
          center: TabBar(
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.black87,
              tabs: List.generate(nITList.length, (index) {
                var nItItem = nITList[index];
                return Tab(
                  text: nItItem.name,
                );
              })),
        ),
        body: Container(
          padding: EdgeInsets.only(bottom: 8.vx),
          child: TabBarView(
              children: List.generate(nITList.length, (index) {
            return GetX<JxImageListController>(builder: (controller) {
              List<JxImageListItemList> dataList = [];
              switch (index) {
                case 0:
                  dataList = controller.jxImageList.value;
                  break;
                case 1:
                  dataList = controller.jlImageList.value;
                  break;
                case 2:
                  dataList = controller.xyImageList.value;
                  break;
              }
              if (dataList.isEmpty) return const SizedBox();
              return GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10.hx),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10.hx,
                    mainAxisSpacing: 10.hx,
                    mainAxisExtent: 82.vx,
                    crossAxisCount: 2),
                itemBuilder: (_, index) {
                  var imageItem = dataList[index];
                  return Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    // height: 40.vx,
                    child: Stack(
                      children: [
                        getCacheNetImage(imageItem.small!, radius: 6),
                        imageItem.typeName!.isNotEmpty
                            ? Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0xff757246)
                                          .withOpacity(0.5),
                                      borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(6),
                                          bottomRight: Radius.circular(6))),
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 4.hx),
                                  height: 16.vx,
                                  child: Text(
                                    imageItem.typeName!,
                                    style: getTextStyle(
                                        size: 8, color: Colors.white),
                                  ),
                                ))
                            : const SizedBox()
                      ],
                    ),
                  );
                },
                itemCount: dataList.length,
              );
            });
          })),
        ),
      ),
    );
  }
}

class JxImageListController extends GetxController {
  final jxImageList = <JxImageListItemList>[].obs;
  final jlImageList = <JxImageListItemList>[].obs;
  final xyImageList = <JxImageListItemList>[].obs;
  final List<NameImageType> nITList;

  JxImageListController(this.nITList);

  void requestData(int index) {
    ydJxImageList(nITList[index].image).then((result) {
      var data = result.data!.itemList.data;
      switch (index) {
        case 0:
          jxImageList.value = data;
          break;
        case 1:
          jlImageList.value = data;
          break;
        case 2:
          xyImageList.value = data;
          break;
      }
    });
  }

  @override
  void onReady() {
    super.onReady();
    if (nITList.isNotEmpty) {
      for (int index = 0; index < nITList.length; index++) {
        requestData(index);
      }
    }
  }
}
