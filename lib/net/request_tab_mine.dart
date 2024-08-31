import 'package:flutter_actions/net/bean/bean.dart';

import '../framework/framework.dart';

const pageBannerUrl = "https://squirrel.kakamobi.cn/api/open/recommend-goods/get-my-page-banner.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&authToken=ce9699fa9b19059b9b19fa96001216ca12f22c7e&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_kemu=2&_tiku=car&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=40&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=2&_vendor=360app&tiku=car&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&kemu=2&_r=5a7b3caec29347dcc23c5a57c6647cad&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGWNS0oEMRiE7%2BpJ1JaZkQEbZqvootVJk9DtBZyFS88RmM0PgWTxv%2FIwCLPRRVV9iypqj2LmxS1LjdXF3AMshjGHHYeYwtjCroQ0%2FkIMkcDgdggksWsznVa4RUow4JOSb169%2BMeH5%2Fu7wxaue%2FFlgBs8TPbtOME7ki8NNn%2F2RyRtFV5RJQoo2jnnWQ2vaqnU4oBxaerYNebkpJpijcZWqybLpriUV6jITZoIlAt8IgnxWeKZan9SCryX1I0KpEvp49%2FZF39f%2FQAS6n%2BcEgEAAA%3D%3D&schoolCode=-1&sign=95199db342e6ad5a7e06b25d9453ec5d";
Future<NetResult<TabMineBannerEntity>> pageBannerData() async {
  return DioManager.shared
      .request(pageBannerUrl, fromJson: TabMineBannerEntity.fromJson);
}

const iconListUrl =
    "https://jiakao-misc.kakamobi.cn/api/open/my-tab-config/icon-list.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&authToken=ce9699fa9b19059b9b19fa96001216ca12f22c7e&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&carType=car&sceneCode=101&_systemVersion=10&_launch=39&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=2&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&kemu=2&_r=803aa7bb4abc4a9494bcbb2ad5091cbc&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGWNPUsEMRiE%2F%2F9%2FsHkhgXy8H1wKIW8pV6gg3ImrbnF3nQg2nrKwG0jWIFyjxcw8xQxzAGzrXObZGVdM6KEV8hjyUbKxefT5GLMdf8Fkw9pgP2RG07Wb3hd9ArY6wD1x8okSpofX29Pjdq%2FPvXg36Atsp%2Fp9nvQTOEWvuz%2F7MzB5p19AaFAJ6hrCSk0WqhxdLCoweypSvIgt6FqsjYx3jmyVFosNizoQjx5R4wU%2BgJFlg2bDrj8RZzmg7cZR7aX09u%2FsZrm6%2FgFGR9%2FgEgEAAA%3D%3D&schoolCode=-1&sign=cf75b0578a500c62160c271f5bca9c31";


//我的成就
const currentBadgeUrl =
    "https://jiakao-misc.kakamobi.cn/api/open/badge/get-current-badge.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&authToken=ce9699fa9b19059b9b19fa96001216ca12f22c7e&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=39&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=2&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&_r=299986d80716428116d89991086ad110&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGWNTUoEMRSET%2BwpFIVZjQzYasvMSnGZJqF70eqAR%2FAE7yc%2FkCze5kEQAmMQZqOLqvoWVdROyEyzm%2BeYo8u%2Bh1qpg69brLnUIdVtqGX4hVwzqJHDWIFy1359WfRRoOgoVwwtNW7ULu%2Bub582B73vxZtRH2Sz2vfjqh8CLSTd%2F9kfBThFfROmTMpiJ%2B8nNriwhRCDU5Q5sUOXEIujaII1nFOMXCya4IpfNAomSkQazvAsQIAnyieI%2FYmh4o5KNwhazqXXf2ef318XP31vpbASAQAA&schoolCode=-1&sign=573e5a8dacbc97bc83a259f1c2666112";
Future<NetResult<BadgeEntity>> currentBadgeData() async {
  return DioManager.shared
      .request(currentBadgeUrl, fromJson: BadgeEntity.fromJson);
}

const recommendGoodsUrl = "https://squirrel.kakamobi.cn/api/open/recommend-goods/get-recommend-goods.htm?recommendLocation=vipCard&_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&authToken=ce9699fa9b19059b9b19fa96001216ca12f22c7e&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_kemu=2&_tiku=car&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=40&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=2&_vendor=360app&tiku=car&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&kemu=2&_r=0e78c6959ea14def5da195c692d7a670&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGWNu04DMRREr%2BTGUho%2F7qO4kt3xHdauVwZSrKCmYoOCEmAjKOjycfwVHRZSGihm5hQzmr1ynYYyDCGFklwPaGoWZ3ZkUjZLNDtv8vILySSEqsfVIKeuw3w%2FwptihlVPgjZasWw%2FH9%2Bfns9HeOnFjxVe9Ty3m%2B0Mt4rWRzj82W8VJQa4VuHEINom5yapNEpDH3wB0iFKoRKJcuFQfauSYgiSG1VfshshKEWOzOAvcKfISBtOGwz9SdDQnnM39JAvpYd%2FZ1%2FfV6cfxFlcEBIBAAA%3D&recommendType=location&schoolCode=-1&sign=7d49f3bb6ba769c134411b76d96467b8";
Future<NetResult<MineRGoodEntity>> recommendGoodsData() async {
  return DioManager.shared
      .request(recommendGoodsUrl, fromJson: MineRGoodEntity.fromJson);
}