import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_actions/components/border_widget.dart';
import 'package:flutter_actions/routes/route_manager.dart';
import 'package:flutter_actions/static/res_constant.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';

class SettingPage extends StatelessWidget {
  SettingPage({super.key});

  List items = [
    "驾校合作",
    "教练入住",
    "通知设置",
    "通用设置",
    "隐私和权限设置",
    "隐私政策",
    "个人信息共享清单",
    "第三方信息共享清单",
    "安全中心",
    "开源许可",
    "检查更新",
    "关于我们",
  ];

  List gapIndex = [1, 3, 9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.5,
        title: Text(
          "设置",
          style: TextStyle(fontSize: 12.sp, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: List.generate(items.length, (index) => itemLayout(index)),
      ),
    );
  }

  Widget itemLayout(int position) {
    String title = items[position];
    Widget item = UnderLineWidget(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.hx),
        height: 32.h,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 12.sp),
            ),
            Image.asset(
              ICON_ARROW_RIGHT,
              width: 10.w,
              height: 10.w,
            ),
          ],
        ),
      ),
    );

    if (gapIndex.contains(position)) {
      item = Column(
        mainAxisSize: MainAxisSize.min,
        children: [item, 8.vGap],
      );
    }
    item = GestureDetector(
      onTap: () => clickItem(position),
      child: item,
    );
    return item;
  }

  void clickItem(int position) {
    switch (position) {
      case 3:
        Get.toNamed(RoutePath.Common_Setting);
        break;
    }
  }
}

class CommonSPage extends StatefulWidget {
  const CommonSPage({super.key});

  @override
  State<CommonSPage> createState() => _CommonSPageState();
}

class _CommonSPageState extends State<CommonSPage> {
  late ValueNotifier<bool> autoNotify1;
  BehaviorSubject<bool>? auto2Bs;

  @override
  void initState() {
    super.initState();
    autoNotify1 = ValueNotifier(false);
    auto2Bs = BehaviorSubject<bool>.seeded(false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.5,
        title: Text(
          "通用设置",
          style: TextStyle(fontSize: 12.sp, color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          UnderLineWidget(
              child: ListTile(
                  title: const Text(
                    "移动网络下社区视频自动播放",
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: ValueBuilder<bool?>(
                    initialValue: false,
                    builder: (auto, update) {
                      return CupertinoSwitch(
                        value: auto ?? false,
                        onChanged: (bool value) {
                          update(value);
                        },
                      );
                    },
                  ))),
          UnderLineWidget(
              child: ListTile(
                  onTap: () {
                    showBottom();
                  },
                  title: const Text(
                    "接受App内部通知",
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: StreamBuilder<bool>(
                    initialData: auto2Bs!.value,
                    stream: auto2Bs!.stream,
                    builder: (ctx, snapshot) {
                      if (snapshot.data != null) {
                        return CupertinoSwitch(
                          value: snapshot.data!,
                          onChanged: (value) {
                            // update(value);
                          },
                        );
                      }
                      return const SizedBox.shrink();
                    },
                  )))
        ],
      ),
    );
  }

  void showBottom() {
    showModalBottomSheet(
        context: context,
        isDismissible: false,
        enableDrag: false,
        builder: (ctx) {
          return SizedBox(
            height: 120.vx,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    32.vGap,
                    Text(
                      "接收App内部通知",
                      style: TextStyle(fontSize: 12.sp, color: Colors.black),
                    ),
                    32.vGap,
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () {
                            auto2Bs!.value = !auto2Bs!.value;
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(11)),
                            alignment: Alignment.center,
                            width: 56.w,
                            height: 22.vx,
                            child: const Text(
                              "继续操作",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        42.hGap,
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(11)),
                            alignment: Alignment.center,
                            width: 56.w,
                            height: 22.vx,
                            child: const Text(
                              "保持现状",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Positioned(
                  top: 12,
                  right: 12,
                  child: GestureDetector(
                    child: Image.asset(
                      ICON_CLOSE,
                      width: 18,
                      height: 18,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                )
              ],
            ),
          );
        });
  }
}
