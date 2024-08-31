import 'package:flutter/cupertino.dart';
import 'package:flutter_actions/net/net.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'package:get/get.dart';

import '../../net/bean/bean.dart';

class VideoNewestPage extends StatefulWidget {
  const VideoNewestPage({super.key});

  @override
  State<VideoNewestPage> createState() => _VideoNewestPageState();
}

class _VideoNewestPageState extends State<VideoNewestPage> {
  @override
  Widget build(BuildContext context) {
    // Get.put(NewestController());
    return Container();
    // return GetX<NewestController>(
    //   builder: (controller) {
    //     var listData = controller.listData.value;
    //     return Container();
    //   },
    // );
  }
}

class NewestController extends GetxController {
  final listData = <CommunityDataItemList>[].obs;
  @override
  void onReady() {
    newestData().then((result) {
      listData.value = result.data!.itemList.data;
    });
  }
}
