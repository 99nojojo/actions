import 'package:flutter/material.dart';
import 'package:flutter_actions/components/components.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'package:get/get.dart';

import '../../net/net.dart';
import '../pages.dart';

class TabVideoPage extends StatefulWidget {
  const TabVideoPage({super.key});

  @override
  State<TabVideoPage> createState() => _TabMcPageState();
}

class _TabMcPageState extends State<TabVideoPage>
    with SingleTickerProviderStateMixin {
  final tabs = ["直播课", "社区", "最新", "资讯"]; //"短视频",

  TabController? _controller;

  @override
  void initState() {
    super.initState();
    setSystemStatusBarTransparentBlack();
    _controller = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabBar(
              padding: EdgeInsets.only(left: 8.hx),
              labelPadding: EdgeInsets.zero,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.black,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 6.hx),
              labelStyle: getTextStyle(size: 10, isBold: true),
              unselectedLabelStyle: getTextStyle(size: 10, isBold: false),
              unselectedLabelColor: const Color(0xff666e6e),
              labelColor: Colors.black,
              controller: _controller,
              tabs: List.generate(
                  tabs.length,
                  (index) => Tab(
                        text: tabs[index],
                      ))),
          Expanded(
              child: TabBarView(
            controller: _controller,
            children: [
              KeepAlivePage(child: const VideoLessonPage()),
              KeepAlivePage(child: const VideoCommunityPage()),
              const VideoNewestPage(),
              // VideoShortPage(),
              const VideoMessagePage()
            ],
          ))
        ],
      )),
    );
  }
}
