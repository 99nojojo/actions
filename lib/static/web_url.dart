import '../utils/utils.dart';

abstract class WebUrl {
  static const String TEACH_INPUT_CODE =
      "http://maiche.jmtv.com.cn/2021/11/23/88e29c3c66da45ebb03f60fbee06e11d.middle.mp4";
  static const String PROROCOL_URL =
      "https://laofuzi.kakamobi.com/protocol/protocol.html";

  static const String FEED_BACK =
      "https://laofuzi.kakamobi.com/jiakaobaodian-newH5/tickling.html";

  //隐私协议
  static Uri PROROCOL_PRIVATE = NetUrl.addParamToUrl(PROROCOL_URL,
      extra: <String, String>{
        "protocolKey": "jkbdPrivateAgreement",
        "_r": "c15d70f9b71846eded18f94dc1214cd0"
      });

  //用户协议
  static Uri PROROCOL_USER = NetUrl.addParamToUrl(PROROCOL_URL,
      extra: <String, String>{
        "protocolKey": "jkbdUserAgreement",
        "_r": "f49f3557013349d70135e449a23218ba"
      });

  //账户申述
  static Uri FEED_BACK_URL = NetUrl.addParamToUrl(FEED_BACK,
      extra: <String, String>{
        "_r": "1b5de766d527431843d5e70bb152309b",
        "category": "account"
      });
}

abstract class Config {
  static const Map<String, dynamic> queryParams = <String, String>{
    "_system": "QKQ1.190910.002",
    "_clv": "2048",
    "bizCode": "8.33.0",
    "_pkgName": "com.handsgo.jiakao.android",
    "_operator": "M",
    "_manufacturer": "Xiaomi",
    "rewardTime": "0",
    "_renyuan": "guanwang",
    "sceneCode": "101",
    "_systemVersion": "10",
    "_launch": "32",
    "schoolName": "未绑定驾校",
    "carStyle": "car",
    "_version": "8.33.0",
    "_network": "wifi",
    "patternCode": "101",
    "adver": "20",
    "kemuStyle": "4",
    "_vendor": "baidu",
    "_j": "1.0",
    "_product": "驾考宝典",
    "_productCategory": "jiakaobaodian",
    "bizVersion": "16",
    "_platform": "android",
    "_r": "f49f3557013349d70135e449a23218ba",
    "forOldPeople": "false",
    "_appName": "jiakaobaodian",
    "schoolCode": "-1"
  };
}
