import 'package:flutter/material.dart';
import 'package:flutter_actions/components/easy_refresh_container.dart';
import 'package:flutter_actions/net/request_tab_video.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'package:get/get.dart';

import '../../net/bean/bean.dart';

class VideoCommunityPage extends StatefulWidget {
  const VideoCommunityPage({super.key});

  @override
  State<VideoCommunityPage> createState() => _VideoCommunityPageState();
}

class _VideoCommunityPageState extends State<VideoCommunityPage> {
  @override
  Widget build(BuildContext context) {
    Get.put(CommunityConstroller());
    return Scaffold(
      body: SafeArea(
        child: EasyRefreshContainer(
          onRefresh: () => Get.find<CommunityConstroller>().loadData(false),
          onLoadMore: () => Get.find<CommunityConstroller>().loadData(true),
          child: GetX<CommunityConstroller>(
            builder: (controller) {
              var listData = controller.listData.value;
              if (listData.isEmpty) return const SizedBox.shrink();
              return ListView.separated(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.hx,
                ),
                separatorBuilder: (_, index) => const Divider(
                  height: 0.5,
                  color: Colors.grey,
                ),
                itemBuilder: (_, index) {
                  var item = listData[index];
                  var avatar = item.author!.avatar!;
                  var name = item.author!.name!;
                  var location = "IP属地 ${item.location!}";
                  var imageList = item.imageList.data;
                  var serviceList = item.serviceList.data;
                  var tagList = item.tagList.data;
                  return IntrinsicHeight(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12.vx),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            dense: true,
                            horizontalTitleGap: 6.hx,
                            contentPadding: EdgeInsets.zero,
                            leading: getCacheNetImage(avatar,
                                width: 26.hx, height: 26.vx, isCircle: true),
                            title: Text(
                              name,
                              style: getTextStyle(
                                  size: 10, color: Colors.black, isBold: true),
                            ),
                            subtitle: Text(
                              location,
                              style: getTextStyle(
                                  size: 8, color: Colors.grey, isBold: false),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 32.hx,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text.rich(TextSpan(children: [
                                  TextSpan(
                                      text: item.title!.replaceAll(" ", ""),
                                      style: getTextStyle(
                                          color: Colors.black, isBold: true)),
                                  TextSpan(
                                      text: item.summary!.replaceAll(" ", ""),
                                      style: getTextStyle(color: Colors.black))
                                ])),
                                Builder(builder: (_) {
                                  var threeWith = (Get.width - 68.hx) / 3;
                                  var showCount = imageList.length > 3
                                      ? 3
                                      : imageList.length;
                                  if (showCount == 0) {
                                    return const SizedBox.shrink();
                                  }
                                  return Container(
                                    margin: EdgeInsets.only(top: 6.vx),
                                    child: Row(
                                      children: List.generate(
                                        showCount,
                                        (index) {
                                          var imageItem = imageList[index];
                                          var imageListInfo = imageItem.list!;
                                          var imageWidth = showCount == 3
                                              ? threeWith
                                              : (imageListInfo.width! /
                                                  Get.pixelRatio);
                                          var imageHeight =
                                              imageListInfo.height! /
                                                  Get.pixelRatio;
                                          return Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4.hx))),
                                            margin:
                                                EdgeInsets.only(right: 4.hx),
                                            child: getCacheNetImage(
                                              imageListInfo.url!,
                                              radius: 4.hx,
                                              width: imageWidth,
                                              height: imageHeight,
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  );
                                }),
                                Builder(builder: (_) {
                                  if (serviceList.isEmpty) {
                                    return const SizedBox.shrink();
                                  }
                                  var serviceInfo = serviceList[0];
                                  return Container(
                                    margin: EdgeInsets.only(top: 8.vx),
                                    padding: EdgeInsets.only(left: 10.hx),
                                    height: 24.vx,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4.vx)),
                                        color: const Color(0xfffdf2dc)),
                                    child: Row(
                                      children: [
                                        getCacheNetImage(serviceInfo.imageUrl!,
                                            width: 14.hx, height: 14.vx),
                                        4.hGap,
                                        Expanded(
                                          child: Builder(builder: (_) {
                                            var subTitleText =
                                                serviceInfo.subTitle!;
                                            var subTitle =
                                                subTitleText.contains("|")
                                                    ? subTitleText.split("|")[0]
                                                    : subTitleText;
                                            return Text(
                                              "${serviceInfo.title} | $subTitle",
                                              style: getTextStyle(
                                                  size: 10,
                                                  color:
                                                      const Color(0xff67513d),
                                                  isBold: false),
                                            );
                                          }),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                                Builder(builder: (_) {
                                  if (tagList.isEmpty) {
                                    return const SizedBox.shrink();
                                  }
                                  return Container(
                                      margin: EdgeInsets.only(top: 12.vx),
                                      height: 22.vx,
                                      child: Row(children: [
                                        ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (_, index) {
                                            var tag = tagList[index];
                                            return Container(
                                              margin:
                                                  EdgeInsets.only(right: 4.hx),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 6.hx),
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xffe7e7e7),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              9.vx))),
                                              height: 18.vx,
                                              alignment: Alignment.center,
                                              child: Text("# ${tag.labelName}"),
                                            );
                                          },
                                          itemCount: tagList.length > 2
                                              ? 2
                                              : tagList.length,
                                        )
                                      ]));
                                }),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: listData.length,
              );
            },
          ),
        ),
      ),
    );
  }
}

class CommunityConstroller extends GetxController {
  final listData = <CommunityDataItemList>[].obs;
  @override
  void onReady() {
    loadData(false);
  }

  Future<LoadResult> loadData(bool isLoadMore) async {
    await communityListData().then((result) {
      var newData = result.data!.itemList.data;
      if (isLoadMore) {
        listData.value += newData;
      } else {
        listData.value = newData;
      }
    });
    return LoadResult();
  }
}
