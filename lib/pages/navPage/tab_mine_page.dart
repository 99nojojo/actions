import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_actions/components/swiper_banner.dart';
import 'package:flutter_actions/net/request_tab_mine.dart';
import 'package:flutter_actions/routes/route_manager.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'package:get/get.dart';

import '../../generated/json/base/json_convert_content.dart';
import '../../net/bean/bean.dart';
import '../../static/static.dart';

class TabMinePage extends StatefulWidget {
  const TabMinePage({super.key});

  @override
  State<TabMinePage> createState() => _TabMcPageState();
}

class _TabMcPageState extends State<TabMinePage> {
  @override
  void initState() {
    super.initState();

    setSystemStatusBarTransparentWhite();
  }

  _headerLayout() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 24.vx),
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(ICON_MINE_BG),
            fit: BoxFit.fill,
          )),
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(right: 12.hx),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 30.vx,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Spacer(),
                          getCacheNetImage(
                              "http://exam-room.mc-cdn.cn/exam-room/2022/05/10/16/bdc0139e541d4ac58ae253675f6baf2c.png",
                              width: 66.hx,
                              height: 20.vx),
                          GestureDetector(
                            onTap: ()=>Get.toNamed(RoutePath.Setting),
                            child:  Image.asset(
                              setting_pressed,
                              width: 16.hx,
                              height: 16.hx,
                            ),
                          ),
                          12.hGap,
                          Image.asset(
                            recognize_id_card,
                            width: 16.hx,
                            height: 16.hx,
                          ),
                          12.hGap,
                          Image.asset(
                            ICON_MSG_LINGDANG,
                            width: 18.hx,
                            height: 18.hx,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.hx, vertical: 18.vx),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 44.hx,
                            height: 44.vx,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                  ICON_USER,
                                )),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                          ),
                          14.hGap,
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "风趣的灯泡",
                                style: getTextStyle(
                                    color: Colors.white,
                                    size: 10,
                                    isBold: true),
                              ),
                              8.vGap,
                              Text(
                                "当前的考试的通过率为0%",
                                style: getTextStyle(
                                    color: Colors.white, size: 7, isBold: true),
                              )
                            ],
                          ),
                          const Spacer(),
                          GetX<MineController>(builder: (controller) {
                            var badge = controller.currentBadge.value;
                            if (badge.image!.isEmpty)
                              return const SizedBox.shrink();
                            var image = badge.unlock ?? false
                                ? badge.image
                                : badge.triggerImage!;
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                getCacheNetImage(image!,
                                    width: 24.hx, height: 24.hx),
                                2.vGap,
                                Text(
                                  "我的成就",
                                  style: getTextStyle(
                                      color: Colors.white, size: 8),
                                )
                              ],
                            );
                          })
                        ],
                      ),
                    ),
                    GetX<MineController>(
                      builder: (controller) {
                        var recommandList = controller.recommandList;
                        if (recommandList.isEmpty)
                          return const SizedBox.shrink();
                        return BannerSwiper<MineRGoodItemList>(
                            autoplay: false,
                            height: 112.vx,
                            scale: 0.95,
                            viewportFraction: 0.9,
                            bannerList: recommandList,
                            itemBuilder: (_, index, dynamic data) {
                              var recommandItem = recommandList[index];
                              var highlightDescList = recommandItem
                                  .uiConfig!.highlightDescList.data;
                              return Container(
                                padding: EdgeInsets.only(
                                    left: 7.hx, top: 12.vx, right: 7.hx),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.hx)),
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(ICON_BANNER_BG))),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  mine_vip_header,
                                                  width: 12.hx,
                                                  height: 12.hx,
                                                ),
                                                4.hGap,
                                                Text(
                                                  recommandItem.uiConfig!.name!,
                                                  style: getTextStyle(
                                                      color: const Color(
                                                          0xfff5d2b1),
                                                      isBold: true,
                                                      size: 11),
                                                )
                                              ],
                                            ),
                                            6.vGap,
                                            Text(
                                              recommandItem.description!,
                                              style: getTextStyle(
                                                  color:
                                                      const Color(0xfff5d2b1),
                                                  isBold: true,
                                                  size: 8),
                                            )
                                          ],
                                        ),
                                        Container(
                                          width: 66.hx,
                                          alignment: Alignment.center,
                                          height: 22.vx,
                                          decoration: BoxDecoration(
                                              color: const Color(0xfff5c884),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(11.vx))),
                                          child: Text(
                                            "立即开通",
                                            style: getTextStyle(
                                                color: const Color(0xff60351d),
                                                size: 8,
                                                isBold: true),
                                          ),
                                        )
                                      ],
                                    ),
                                    12.vGap,
                                    Expanded(
                                        child: GridView.builder(
                                            padding: EdgeInsets.zero,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount:
                                                        highlightDescList
                                                            .length),
                                            shrinkWrap: true,
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemCount: highlightDescList.length,
                                            itemBuilder: (_, index) {
                                              var descItem =
                                                  highlightDescList[index];
                                              return Container(
                                                width: 42.hx,
                                                alignment: Alignment.topCenter,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      getCacheNetImage(
                                                          descItem
                                                              .highlightIcon!,
                                                          width: 24.hx,
                                                          height: 24.hx,
                                                          isCircle: true),
                                                      4.vGap,
                                                      Text(
                                                          descItem
                                                              .highlightTitle!,
                                                          style: getTextStyle(
                                                            color: Colors.white,
                                                            size: 6,
                                                          ))
                                                    ]),
                                              );
                                            }))
                                  ],
                                ),
                              );
                            });
                      },
                    ),
                    16.vGap
                  ],
                ),
              ),
              Positioned(
                  bottom: 0,
                  child: Image.asset(
                    mine_vip_bottom,
                    height: 16.vx,
                    fit: BoxFit.fill,
                  ))
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Get.put(MineController());
    return Scaffold(
      backgroundColor: const Color(0xfff1f9f7),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: _headerLayout(),
          ),
          8.vGapSliver,
          SliverToBoxAdapter(
            child: GetX<MineController>(builder: (controller) {
              var banners = controller.banners.value;
              if (banners.isEmpty) return const SizedBox.shrink();
              return Stack(
                children: [
                  Container(
                    height: 112.vx,
                    padding: EdgeInsets.symmetric(horizontal: 14.hx),
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: BannerSwiper<TabMineBannerItemList>(
                        height: 88.vx,
                        onIndexChanged: (index,data) {
                          var tipText = data.priceCompareInfo!.priceDiff ?? 0;
                          Get.find<MineController>().changeTipText(tipText);
                        },
                        bannerList: banners,
                        itemBuilder: (context, int index, dynamic data) {
                          var item = data as TabMineBannerItemList;
                          var commonPrice = item.priceCompareInfo!.priceDiff! +
                              item.priceCompareInfo!.price!;
                          var priceCompareList =
                              item.priceCompareInfo!.priceCompareList;
                          return Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.hx)),
                                gradient: const LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xffffe486),
                                      Color(0xffffecad),
                                      Color(0xfffdd167),
                                    ])),
                            child: Stack(
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.hx),
                                  decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xfffb9c15),
                                            Color(0xfff8be2c),
                                          ]),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8.hx),
                                          bottomRight: Radius.circular(8.hx))),
                                  width: 124.hx,
                                  height: 22.vx,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        ICON_MINE_CROWN,
                                        width: 12.hx,
                                        height: 12.hx,
                                      ),
                                      Text(
                                        "开通${item.priceCompareInfo!.goodsName!}",
                                        style: getTextStyle(
                                            size: 9,
                                            color: Colors.white,
                                            isBold: true),
                                      ),
                                      Image.asset(
                                        ICON_MINE_RA,
                                        width: 8.hx,
                                        height: 18.hx,
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                    right: 8.hx,
                                    top: 8.vx,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xfff3542a),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(9.hx))),
                                      alignment: Alignment.center,
                                      width: 56.h,
                                      height: 18.vx,
                                      child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              "¥${item.priceCompareInfo!.price!.toInt()}开通",
                                              style: getTextStyle(
                                                  size: 8,
                                                  color: Colors.white,
                                                  isBold: true),
                                            ),
                                            2.hGap,
                                            Image.asset(
                                              ICON_MINE_RA,
                                              width: 8.hx,
                                              height: 18.hx,
                                            ),
                                          ]),
                                    )),
                                Positioned(
                                    top: 26.vx,
                                    left: 8.hx,
                                    right: 8.hx,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          item.recommendGoods!.uiConfig!
                                              .description!,
                                          style: getTextStyle(
                                              size: 9,
                                              isBold: true,
                                              color: const Color(0xffb37b13)),
                                        ),
                                        Text(
                                          "日常购买价¥$commonPrice",
                                          style: getTextStyle(
                                              size: 7,
                                              isBold: true,
                                              color: const Color(0xffb37b13)),
                                        )
                                      ],
                                    )),
                                Positioned(
                                  left: 8.hx,
                                  right: 8.hx,
                                  bottom: 4.vx,
                                  child: Container(
                                    height: 40.vx,
                                    decoration: BoxDecoration(
                                        gradient: const LinearGradient(colors: [
                                          Color(0xfffefff0),
                                          Color(0xfffdf6d5),
                                        ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.hx))),
                                    child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemBuilder: (_, index) {
                                          var priceItem =
                                              priceCompareList[index];
                                          return Container(
                                            width: 56.hx,
                                            alignment: Alignment.center,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  priceItem.name!,
                                                  style: getTextStyle(
                                                      size: 7,
                                                      isBold: true,
                                                      color: const Color(
                                                          0xffb37b13)),
                                                ),
                                                4.vGap,
                                                Text(
                                                  "¥${priceItem.price}",
                                                  style: getTextStyle(
                                                      size: 7,
                                                      isBold: true,
                                                      color: const Color(
                                                          0xfff54e39)),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                        separatorBuilder: (_, index) {
                                          return Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 4.vx),
                                            child: Image.asset(
                                              mine_vip_divider,
                                              width: 4.hx,
                                              fit: BoxFit.contain,
                                            ),
                                          );
                                        },
                                        itemCount: priceCompareList!.length),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  Positioned(
                      top: 6.vx,
                      right: 14.hx,
                      child: GetX<MineController>(
                        builder: (controller) {
                          var priceDiff = controller.tipText.value;
                          if (priceDiff <= 0) return const SizedBox.shrink();
                          return Container(
                            padding: EdgeInsets.only(top: 1.vx),
                            alignment: Alignment.topCenter,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage(mine_vip_tips))),
                            height: 14.vx,
                            width: 74.hx,
                            child: Text(
                              "比分开买便宜$priceDiff元",
                              style: getTextStyle(
                                  color: Colors.white, isBold: true, size: 6),
                            ),
                          );
                        },
                      )),
                ],
              );
            }),
          ),
          8.vGapSliver,
          SliverToBoxAdapter(
            child: GetX<MineController>(
              builder: (controller) {
                var adList = controller.adJsonData;
                if (adList.isEmpty) return const SizedBox.shrink();
                return Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.hx, vertical: 16.vx),
                  color: Colors.white,
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: adList.length,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 18.vx,
                    ),
                    itemBuilder: (_, index) {
                      var adItem = adList[index];
                      return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            getCacheNetImage(
                              adItem.image,
                              width: 18.hx,
                              height: 18.hx,
                            ),
                            8.vGap,
                            Text(
                              adItem.title,
                              style: getTextStyle(size: 8, color: Colors.black),
                            )
                          ]);
                    },
                  ),
                );
              },
            ),
          ),
          8.vGapSliver,
          SliverToBoxAdapter(
            child: GetX<MineController>(
              builder: (controller) {
                var tabList = controller.tabList;
                if (tabList.isEmpty) return const SizedBox.shrink();
                return Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.hx, vertical: 16.vx),
                  color: Colors.white,
                  child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: tabList.length,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 18.vx,
                      ),
                      itemBuilder: (_, index) {
                        var title = tabList[index].name!;
                        var image = tabList[index].icon!;
                        return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              getCacheNetImage(
                                image,
                                width: 18.hx,
                                height: 18.hx,
                              ),
                              8.vGap,
                              Text(
                                title,
                                style:
                                    getTextStyle(size: 8, color: Colors.black),
                              )
                            ]);
                      }),
                );
              },
            ),
          ),
          8.vGapSliver,
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 10.hx, vertical: 14.vx),
              child: Column(
                children: [
                  Text(
                    "找驾校，考驾照，就用驾考宝典",
                    style: getTextStyle(
                      size: 11,
                      color: Colors.black87,
                    ),
                  ),
                  8.vGap,
                  Row(
                    children: [
                      const Expanded(
                          child: Divider(
                        height: 0.5,
                        color: Colors.grey,
                      )),
                      12.hGap,
                      Text(
                        "分享给好友",
                        style: getTextStyle(size: 8, color: Colors.grey),
                      ),
                      12.hGap,
                      const Expanded(
                          child: Divider(
                        height: 0.5,
                        color: Colors.grey,
                      )),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 14.hx, vertical: 16.vx),
                    color: Colors.white,
                    child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: mineBottomTitle2s.length,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                        ),
                        itemBuilder: (_, index) {
                          var title = mineBottomTitle2s.keys.elementAt(index);
                          var image = mineBottomTitle2s.values.elementAt(index);
                          return Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  image,
                                  width: 30.hx,
                                  height: 30.hx,
                                ),
                                8.vGap,
                                Text(
                                  title,
                                  style: getTextStyle(
                                      size: 8, color: Colors.black),
                                )
                              ]);
                        }),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MineController extends GetxController {
  final adJsonData = <ImageItemEntity>[].obs;
  final tabList = <TabItemEntity>[].obs;
  final banners = <TabMineBannerItemList>[].obs;
  final currentBadge = BadgeEntity().obs;
  final recommandList = <MineRGoodItemList>[].obs;
  final tipText = 0.0.obs;

  void changeTipText(double tip) {
    if (tipText.value != tip) {
      tipText.value = tip;
    }
  }

  @override
  void onReady() {
    loadImageAd();
    loadData();
  }

  loadData() async {
    pageBannerData().then((value) {
      var data = banners.value = value.data!.itemList!.data;
      tipText.value = data[0].priceCompareInfo!.priceDiff!;
    });
    recommendGoodsData()
        .then((result) => recommandList.value = result.data!.itemList!.data);
    currentBadgeData().then((result) {
      currentBadge.update((val) {
        currentBadge.value = result.data!;
      });
    });
  }

  loadImageAd() async {
    await Future.delayed(const Duration(seconds: 1), () async {
      var adData = await loadAndDecodeJson(JSON_MINE_AD);
      adJsonData.value =
          jsonConvert.convertListNotNull<ImageItemEntity>(adData["ad"]).data;
      var tabData = await loadAndDecodeJson(JSON_MINE_TAB);
      tabList.value = jsonConvert
          .convertListNotNull<TabItemEntity>(tabData["itemList"])
          .data;
    });
  }
}
