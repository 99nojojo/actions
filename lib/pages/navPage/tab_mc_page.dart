import 'package:flutter/material.dart';
import 'package:flutter_actions/components/components.dart';
import 'package:flutter_actions/pages/pages.dart';
import 'package:flutter_actions/utils/utils.dart';

import '../../components/custom_tabbar/custom_tabbar.dart';

const categoryTab = ["新车", "新能源", "摩托车", "二手车"];

class TabMcPage extends StatefulWidget {
  const TabMcPage({super.key});

  @override
  State<TabMcPage> createState() => _TabMcPageState();
}

class _TabMcPageState extends State<TabMcPage> with TickerProviderStateMixin {
  TabController? tabController;
  PageController? pageController;

  @override
  void initState() {
    super.initState();
    setSystemStatusBarTransparentBlack();
    tabController = TabController(length: categoryTab.length, vsync: this)
      ..addListener(() {
        pageController?.jumpToPage(tabController!.index);
      });

    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            KuGouTabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              controller: tabController,
              tabs: List.generate(
                  categoryTab.length,
                  (index) => Tab(
                        text: categoryTab[index],
                      )),
              indicatorMinWidth: 20,
            ),
            Expanded(
                child: PageView(
              onPageChanged: (positon) {
                tabController?.index = positon;
              },
              controller: pageController,
              children: [
                KeepAlivePage(
                  child: WrapWithNotify(
                    pageController: pageController,
                    child: const BuyNewCarPage(),
                  ),
                ),
                KeepAlivePage(
                  child: BuyNewEnergyPage(
                    pageController: pageController,
                  ),
                ),
                KeepAlivePage(
                  child: WrapWithNotify(
                    pageController: pageController,
                    child: const BuyNewMotorCyclePage(),
                  ),
                ),
                KeepAlivePage(
                  child: WrapWithNotify(
                    pageController: pageController,
                    child: const BuyUsedCarPage(),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
