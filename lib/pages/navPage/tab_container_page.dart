import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_actions/pages/pages.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'package:get/get.dart';

import '../../static/res_constant.dart';

class TabContainerPage extends StatefulWidget {
  const TabContainerPage({super.key});

  @override
  State<TabContainerPage> createState() => _TabContainerPageState();
}

class _TabContainerPageState extends State<TabContainerPage>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        initialIndex: 0, length: navTabTitles.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Get.put(TabNavController());
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: const [
          TabHomePage(),
          TabVideoPage(),
          TabMcPage(),
          TabKsPage(),
          TabMinePage(),
        ],
      ),
      bottomNavigationBar: GetX<TabNavController>(
        builder: (controller) {
          var selectIndex = controller.currentIndex.value;
          return BottomNavigationBar(
            elevation: 3,
            currentIndex: selectIndex,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 8.sp,
            unselectedFontSize: 8.sp,
            selectedItemColor: Colors.blue,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              _tabController?.animateTo(index);
              Get.find<TabNavController>().changeTabIndx(index);
            },
            items: List<BottomNavigationBarItem>.generate(navTabTitles.length,
                (index) {
              return BottomNavigationBarItem(
                activeIcon: Image.asset(
                  navTabIconP[index],
                  fit: BoxFit.cover,
                  width: 22.hx,
                  height: 22.hx,
                  key: ValueKey("active$index"),
                ),
                icon: Image.asset(
                  navTabIconN[index],
                  width: 16.hx,
                  height: 16.hx,
                  fit: BoxFit.cover,
                  key: ValueKey("$index"),
                ),
                label: navTabTitles[index],
              );
            }),
          );
        },
      ),
    );
  }
}

class TabNavController extends GetxController {
  final currentIndex = 0.obs;

  void changeTabIndx(int index) {
    if (currentIndex.value != index) {
      currentIndex.value = index;
    }
  }
}
