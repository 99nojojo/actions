import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_actions/components/components.dart';
import 'package:flutter_actions/pages/web_view_page.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'package:get/get.dart';

import '../../net/bean/bean.dart';
import '../../net/request_tab_video.dart';

class VideoMessagePage extends StatefulWidget {
  const VideoMessagePage({super.key});

  @override
  State<VideoMessagePage> createState() => _VideoCommunityPageState();
}

class _VideoCommunityPageState extends State<VideoMessagePage> {
  late EasyRefreshController refreshController;

  @override
  void initState() {
    super.initState();
    refreshController = EasyRefreshController(controlFinishRefresh: true);
  }

  void lookMsgDetial(String title, String url) {
    Get.to(WebViewPage(url: Uri.parse(url), title: title));
  }

  @override
  Widget build(BuildContext context) {
    Get.put(MessageController());
    return Scaffold(
      body: SafeArea(
        child: EasyRefreshContainer(
          refreshController: refreshController,
          onLoadMore: () => Get.find<MessageController>().loadData(true),
          onRefresh: () => Get.find<MessageController>().loadData(false),
          child: GetX<MessageController>(builder: (controller) {
            var msgList = controller.msgList.value;
            if (msgList.isEmpty) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.separated(
              itemCount: msgList.length,
              separatorBuilder: (_, index) => const Divider(
                color: Colors.grey,
                height: 0.5,
              ),
              itemBuilder: (_, index) {
                var msgItem = msgList[index];
                var displayType = msgItem.content!.displayType!;
                var title = msgItem.content!.title!;
                var source = msgItem.content!.xSource!;
                var link = msgItem.content!.shareLink!;
                Widget content = const SizedBox.shrink();
                if (displayType == 1) {
                  var rightIconUrl = msgItem.content!.thumbnails![0];
                  content = Container(
                    padding: EdgeInsets.symmetric(vertical: 10.vx),
                    height: 70.vx,
                    child: Row(
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              title,
                              style: getTextStyle(
                                  size: 10, color: Colors.black, isBold: false),
                            ),
                            Text(
                              source,
                              style: getTextStyle(size: 8, color: Colors.grey),
                            )
                          ],
                        )),
                        14.hGap,
                        getCacheNetImage(rightIconUrl,
                            width: 80.hx, height: 54.vx, radius: 6.hx)
                      ],
                    ),
                  );
                } else if (displayType == 3) {
                  var thumbnails = msgItem.content!.thumbnails!;
                  content = Container(
                    padding: EdgeInsets.symmetric(vertical: 10.vx),
                    height: 120.vx,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: getTextStyle(
                              size: 10, color: Colors.black, isBold: false),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(thumbnails.length, (index) {
                            return getCacheNetImage(thumbnails[index],
                                radius: 4.hx, width: 80.hx, height: 54.vx);
                          }),
                        ),
                        Text(
                          source,
                          style: getTextStyle(size: 8, color: Colors.grey),
                        )
                      ],
                    ),
                  );
                }
                return InkWell(
                  child: content,
                  onTap: () => lookMsgDetial(source, link),
                );
              },
              padding: EdgeInsets.symmetric(horizontal: 12.hx),
            );
          }),
        ),
      ),
    );
  }
}

class MessageController extends GetxController {
  final msgList = <MessageDataItemList>[].obs;

  @override
  void onReady() {
    loadData(false);
  }

  Future<LoadResult> loadData(bool isLoadMore) async {
    var newData = (await messageData()).data!.itemList.data;
    if (isLoadMore) {
      msgList.value += newData;
    } else {
      msgList.value = newData;
    }
    return LoadResult(success: true, hasMore: true);
  }
}
