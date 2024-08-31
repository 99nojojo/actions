import '../framework/framework.dart';
import '../generated/json/base/json_convert_content.dart';
import 'bean/bean.dart';

const advertiseUrl =
    "https://smart-789.kakamobi.cn/api/open/v3/advert-sdk/get.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&authToken=ce9699fa9b19059b9b19fa96001216ca12f22c7e&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&adid=88&sceneCode=101&_systemVersion=10&_launch=13&schoolName=未绑定驾校&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=4&_vendor=360app&_j=1.0&_product=驾考宝典&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&_r=6dde61d32b2a42edd352612a052909f7&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGWNu2rDQBREfz3YcQSRg0ljglPk4UKLtGKbNEn%2Bwd8gcHNhywv7vA9vAm6SYmZOMcPsUOw8mnEsoZiQWoBD3ye%2FZR%2Bi76vfZh%2F7Xwg%2BEFhcd54kNK2GrwnukCJ0%2BKS0yPKjl%2FvDw81%2BDbet%2BNzBBveDezsO8I605AqrP%2FsjktYCr6gSBBTdnNKslid1lEs2wDhWNWwqczRSbHZWQy1Fo2ObTUwTFOQqVQTyFT6RhPgs4UylPSl53klsRhnitfTx7%2Bw7nh4vqdHPVBIBAAA%3D&schoolCode=-1&sign=5cf9acf9e60a98ace81f97425764be4c";
Future<NetResult<AdvertSdkDataEntity>> nAdvertData() async {
  return DioManager.shared
      .request(advertiseUrl, fromJson: AdvertSdkDataEntity.fromJson);
}

const newCartListDataUrl =
    "https://mcbd.maiche.com/api/open/v3/car-basic/get-grouped-brand-list.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&newEnergy=0&_operator=M&type=-1&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=80&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&vehicleType=1&patternCode=101&adver=15&kemuStyle=4&_vendor=360app&_mcbdVersion=6&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&mcbd_sdk_version=17.1.2&_platform=android&_r=40d46196e1a54306965361a5d11ee28a&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNy0oDQRB0NRGSuJCroMKCicxm14NnwWt%2BJHObpvvQ0N0zPfvHfoODkIse6kFRRW2YqttYsIxTcGsCgVNf0zYnpNR72i6J%2Bl%2BDCQ1GXnfJBBtWw%2BcMN2wEHb%2BoRY8aJT4%2BPO3u92u4bcXnDu54P4S3wwCvbHFxWP3ZH9jUCxxZBQWUFyezoCKhephODpkRnVo6o9dTESo0BXvPtaqRlrkaFM4uLgLL1XyxieWLLBe19iSU8kalUS5A19LHv7Pv6Yw%2F8QquoRIBAAA%3D&schoolCode=-1&sign=8b8cb86f05feccd59516a4117dd80bf401";
const newECartListDataUrl =
    "https://mcbd.maiche.com/api/open/v3/car-basic/get-grouped-brand-list.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&authToken=ce9699fa9b19059b9b19fa96001216ca12f22c7e&_pkgName=com.handsgo.jiakao.android&newEnergy=1&_operator=M&type=-1&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=12&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&vehicleType=1&patternCode=101&adver=15&kemuStyle=4&_vendor=360app&_mcbdVersion=6&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&mcbd_sdk_version=17.1.2&_platform=android&_r=5962fdc2554a4d814ac2fd5df0de736a&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGWNu04DMRREvx1qCmvXKwdSLIKCLgUbFJQF1o%2F7KK5kX8nNSvmP0CEMUhooZuYUM5qDkB0603UxR5N9C3VSJ1%2F3WHOpU6r7UMv0C7lmUCvzUoFy03G87vVDoOgi9wwrrT96en54ed3N%2BtaKj4u%2By250t9tR7wTWkPT4Z78V4BR1I0yZlMUN3g9ssWcHIQajKF1igyYhFkPRBmc5pxi5OLTBFN9rFEyUiDRc4EqAAE%2BUTxDbE0PFA5VmELRcSjf%2FzubP89c3SO909xIBAAA%3D&schoolCode=-1&sign=b43255b21a1f0a0bdeccff8cd37e61b401";
const motorCycleListDataUrl =
    "https://mcbd.maiche.com/api/open/v3/car-basic/get-grouped-brand-list.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&authToken=ce9699fa9b19059b9b19fa96001216ca12f22c7e&_pkgName=com.handsgo.jiakao.android&newEnergy=0&_operator=M&type=-1&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=14&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&vehicleType=2&patternCode=101&adver=15&kemuStyle=4&_vendor=360app&_mcbdVersion=6&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&mcbd_sdk_version=17.1.2&_platform=android&_r=3b13501f81d641621f5150d6ba01a2db&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGWNPUsDQRiE%2F7pgYZVi724XjXCgQtrAaQLm9NyP9wPeYpd3u8sfSesqpNFiZp5ihjkK26E3fZ9KMiW0UCd1CvUAteQ6xXrwNU%2B%2FUGpBtXJaKnJpmsfbTr8Esy7yRLjy%2BqPd68vb%2B%2F6kn634vOiH7Ed3vx31UXD1Uec%2F%2B60gxaQPQlxYSdwQwkAWOnLokzcK0kcyYCJANpysd5ZKTImyA%2BtNDp0mgciRWf0VbgQZ4czljKk9EVY4cm6GXvO1tPl3Nl8ud9%2BKC9oTEgEAAA%3D%3D&schoolCode=-1&sign=07f134f515b8e2a898bc388fe340bfb801";
Future<List<NcarListDataEntity>> newCarListData() async {
  var result = await DioManager.shared
      .request<dynamic>(newCartListDataUrl, fromJson: null);
  var list = jsonConvert.convertListNotNull<NcarListDataEntity>(result.data);
  if (list == null) {
    return <NcarListDataEntity>[];
  }
  return list;
}

Future<List<NEnergyListDataEntity>> energyListData() async {
  var result = await DioManager.shared
      .request<dynamic>(newECartListDataUrl, fromJson: null);
  var list = jsonConvert.convertListNotNull<NEnergyListDataEntity>(result.data);
  if (list == null) {
    return <NEnergyListDataEntity>[];
  }
  return list;
}

Future<List<NcarListDataEntity>> motorCycleListData() async {
  var result = await DioManager.shared
      .request<dynamic>(motorCycleListDataUrl, fromJson: null);
  var list = jsonConvert.convertListNotNull<NcarListDataEntity>(result.data);
  if (list == null) {
    return <NcarListDataEntity>[];
  }
  return list;
}

//新车  平台推荐
const newCarPlatformTj =
    "https://mcbd.maiche.com/api/open/v4/car-basic/home-data.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=75&schoolName=未绑定驾校&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=4&_vendor=360app&_mcbdVersion=6&_j=1.0&_product=驾考宝典&_productCategory=jiakaobaodian&bizVersion=15&mcbd_sdk_version=17.1.2&_platform=android&_r=af0ba381233d44f50be53d81488d165b&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNu2oDMRD8ofymtrPYXWklbbGQX9H5znAQJ00gkM5ODnJ%2BQSA2Li0CbpJiHgwzzMY0CXexxK6vwk2gmpuS2wZX1E3ittnp9GuKKwydHWfHWBoO4%2BsAX8YKs12IvXjy6L8%2Ffz5O1yPsWvE8w96uY31Zj%2FBk7LPA4c9%2BbUwS4dkICwJZFmWuhFiT1H4pEKwU0ZYORdIyokbtK69CSsRKcUgM0YKgIEK%2Bmzdj5LDAvCBuT6gubAgbhQh6L73%2FOzs9PHY3JaNleBIBAAA%3D&schoolCode=-1&sign=a1f68f262999a1a0e8524725b29cc7e901";
Future<List<dynamic>> newCarPlatformTjData() async {
  var result = await DioManager.shared
      .request<dynamic>(newCarPlatformTj, fromJson: null);
  var itemList = result.data["itemList"];
  var recommand1Data = jsonConvert.convert<NcRecommand1DataEntity>(itemList[0]);
  var recommand2Data = jsonConvert.convert<NcRecommand2DataEntity>(itemList[1]);
  var recommand3Data = jsonConvert.convert<NcRecommand3DataEntity>(itemList[2]);
  return [recommand1Data, recommand2Data, recommand3Data];
}

//新车 筛选条件
const nCarCondition =
    "https://mcbd.maiche.com/api/open/v4/config/get-custom-condition.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=75&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=4&_vendor=360app&_mcbdVersion=6&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&mcbd_sdk_version=17.1.2&_platform=android&_r=052fb0b7b0e54052b00550b0d0449ff7&forOldPeople=false&sourceType=1&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNPUsDQRBthGCXW%2FAOjhhBSFLEwqQ49cRkZ2Z3FmZhutlu8xcs%2FN%2F%2BBhchjRbvg8d7vKNKZOhSTt3gGJqY0zLFcvAlS5m4HEKR6dfkksE6Pc0FKDecx0Vv7wpis24QKlesVB9fds8f%2B5O9teJ2tlfdj261Hu1BoQa285%2F9WgE52b0iZTLUwALgkMhFdsOSzWvOLC3tM8dlIkkyOLjzMSIIpj6CJfVMTGTham4UCPyFwgWhPZEUf0Rq5JPJtXT77%2Bz76evzB4M0%2BN4SAQAA&schoolCode=-1&sign=b0ea1fb68f7cdcb3b210bc682b26b11601";
//新能源 筛选条件
const nEnergyCondition =
    "https://mcbd.maiche.com/api/open/v4/config/get-custom-condition.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&authToken=ce9699fa9b19059b9b19fa96001216ca12f22c7e&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=12&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=4&_vendor=360app&_mcbdVersion=6&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&mcbd_sdk_version=17.1.2&_platform=android&_r=afdf22fcd556460e56fcdf1e8971ecc2&forOldPeople=false&sourceType=2&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGWNPUsDQRiEf7u9IBwabxf2rkgnaOKJiYlwgV14eT%2F2o7p07%2F4CewsbVyGNFjPzFDPMEcT0oxvHEooLqYVaqHOqB6zB1znXQ6x%2B%2FoVQA6mB3VRJQtO%2Buxn0BcjrBI9Miyw%2Fejht3l7XO31uxadJt7Du7O2q03ugJWbd%2F9mvgDgXvQOWIMpg%2B5R6NjiwpViiU4Qxs0OXEb2TYqI1HHIp7C2a6HwatABmySIaL3ANJIRnCWcq7Ymp4lF8M4rqL6Wrf2fvn18f3yV%2FiJcSAQAA&schoolCode=-1&sign=fb5b5a219e34ae46815f054bd86324a401";

Future<NetResult<NCarConditionDataEntity>> nCartConditionData() async {
  return DioManager.shared
      .request(nCarCondition, fromJson: NCarConditionDataEntity.fromJson);
}

//新车 品牌筛选
const nCarBranCondition =
    "https://mcbd.maiche.com/api/open/v3/car-basic/get-hot-brand-list.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=75&schoolName=未绑定驾校&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=4&_vendor=360app&_mcbdVersion=6&_j=1.0&_product=驾考宝典&_productCategory=jiakaobaodian&bizVersion=15&mcbd_sdk_version=17.1.2&_platform=android&_r=2258633e45324c32323e635cade40a1e&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNS0pDQRDExDzhabINKohGeJD3mZ0geAjPMHHVs%2BxFz0zPdPeNc4YMQja6qA9FFbVDyixLiWWZHEsTcBj6HLY1RAo9h20K1P%2BaGKLAgqsuiMWG9fA1wh0KQYePKp69evMv988PN%2FsVbFrxqYNb3A%2Fu9TDAO4pPDOs%2F%2BwOKcoE3VIsGiolJxKmZy%2BymmaFijEwtHSPnuRgVmpwca84qpGXMAgUrG5tBuppPFJN6snRSaU9Goe7UGtUCdC19%2FDs7z98%2FF2qDxioSAQAA&schoolCode=-1&sign=5dfea449eba395832b49777a9a9047c401";
//新能源 品牌筛选
const nEnergyBranCondition =
    "https://mcbd.maiche.com/api/open/v3/new-energy/get-hot-brand-list.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&authToken=ce9699fa9b19059b9b19fa96001216ca12f22c7e&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=12&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=4&_vendor=360app&_mcbdVersion=6&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&mcbd_sdk_version=17.1.2&_platform=android&_r=0fc96206dded4b265bdd620f4f3a3cf0&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGWNPUsDQRiEf7sKaQOnCZjoKaS22LvbRS9wf8N2P94PeItd3m3kUrkKabSYmaeYYfbCdhrNOKaSTAkt1EntQt1BLbl2se58zd0vlFpQrRz6ilyajstp0BfBrL3cEK68%2Fmhzf%2FfwuD3ocyve9vok28W9z4ueBVcf9fhnPwtSTPohxIWVxE0hTGRhIIc%2BeaMgYyQDJgJkw8l6Z6nElCg7sN7kMGgSiByZ1V%2FhVZARLlwumNoTYYU952boNV9Lb%2F%2FOzl%2Bf8zdNnWGJEgEAAA%3D%3D&schoolCode=-1&sign=9e7fc22a98094a845494c0a41082662601";

Future<List<NCarBrandConditionDataEntity>> nCartBrandConditionData() async {
  var result = await DioManager.shared
      .request<dynamic>(nCarBranCondition, fromJson: null);
  var list =
      jsonConvert.convertListNotNull<NCarBrandConditionDataEntity>(result.data);
  if (list == null) {
    return <NCarBrandConditionDataEntity>[];
  }
  return list;
}

//新车 热卖
const nCarHotSale =
    "https://mcbd.maiche.com/api/open/uni-operation/get-image-operation.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=75&schoolName=未绑定驾校&carStyle=car&_version=8.28.0&_network=wifi&moduleCode=new_car_page_top_icon_list&patternCode=101&adver=15&kemuStyle=4&_vendor=360app&_mcbdVersion=6&_j=1.0&_product=驾考宝典&_productCategory=jiakaobaodian&bizVersion=15&mcbd_sdk_version=17.1.2&_platform=android&_r=d4b63cc7b30248cdc7583c029aa4a7ed&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNu2oDMRB0MOQSX7CLhBhcnVG4K86Jq4TU%2FpYFNQKvdiUtaIv9GP%2BfvyEi4CYp5sEwwyxNk%2BBQahlGJ9gEnPku%2BUX0VX0nfpG9dr%2Bm%2Boow2Kb3SLVhPX9NsDJU6O2FMUjgQOH5%2FvXuabeBh1bc9vBou9m9H2f4MAxZYP1nfzRkKXAwpkrAlkURHRO5JG7cC0SrVbSlU5W0L6RFR4dvMSVG5TIlhGJRSIgg38ynIWE8Uz4ztidSH5dMjWIBvZW%2B%2F51dD6fLD%2F%2Bg5yISAQAA&schoolCode=-1&sign=32a94c99c3ba8398ed1f6650fe5a398401";
//新能源热卖
const nEnergyHotSale =
    "https://mcbd.maiche.com/api/open/uni-operation/get-image-operation.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&authToken=ce9699fa9b19059b9b19fa96001216ca12f22c7e&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=12&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&moduleCode=new_energy_page_top_icon_list&patternCode=101&adver=15&kemuStyle=4&_vendor=360app&_mcbdVersion=6&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&mcbd_sdk_version=17.1.2&_platform=android&_r=54e9e49a7445496f459ae4592ee19ac1&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGWNvUoDQRSF78%2F8wExxmwvTLOQZzDtELGeZYbdYNUVEIVUk4KoryYP5YLaOQhotzjlfcQ7nKJT7oQ6DC64G00KLpNmkA6YQ0%2BzTwaY4%2F0JIATTLeUlAoek0XY%2F6LhB1kQeGjrof7V4enz%2F2Z31txadF32Q%2FlbvtpPcCnfV6%2BrPfCrB3eitMgZSl9Mb0nHHkAtbZqiiD54rVI8ZKLtuSOXjnOBbMtkYzqhP05InUXmAjQIArCitw7Ykh4ZFiM7AaL6Wbf2efX%2Burb7Rd6pwSAQAA&schoolCode=-1&sign=5e764ab13ad70474f5321483fe96130201";

Future<NetResult<NCarHotSaleDataEntity>> nCarHotSaleData() async {
  return DioManager.shared
      .request(nCarHotSale, fromJson: NCarHotSaleDataEntity.fromJson);
}

//二手车列表

const uCartListData =
    "https://optimus.kakamobi.cn/api/open/v2/interested-car/list.htm?inquiryMerchantId=&_system=QKQ1.190910.002&_clv=2048&city=350500&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&times=1&_renyuan=guanwang&sceneCode=101&_systemVersion=10&limit=100&_launch=75&schoolName=未绑定驾校&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=4&_vendor=360app&_j=1.0&_product=驾考宝典&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&_r=ce787b50a62e444754a67bcedaac1590&forOldPeople=false&_appName=jiakaobaodian&viewedCarIds=686b5b000d60ec25a51b0fb5a15f39f3%2C79c320d1355f905963dd942ef50b30fa%2C58f3b5ea5d2a5990942a55ef679938f2&_v=H4sIAAAAAAAAAGVNu2oDMRCs8h%2BCbQxKsZJ2tVus4AImtsnlhdOa3BHhc5Jr7B%2FIH%2BcbIgxunGIeDDPMUi2hTKGEaawoTaCq65JbZVfMdehW0Vl3NsUVgUnXvRMuDZv5OMCjikGvWxKPnjz7t7vX%2B4fdGp5b8aWHJ93N9esww6eKjwibq%2F1BhTDAtxIXBtKIJlKJuSas4x4hayloLR0Kpn1gCzZW%2BcgpkRiFIQkEzcjIDPFiTiosecFxQdKe2FxeEjfKAexS%2Bvl39nt78%2F4HYGXsxxIBAAA%3D&page=1&schoolCode=-1&sign=77bd9cfec06a03a7eb15225a75768d2901";

Future<NetResult<UCarListItemEntity>> uCarListData() async {
  return DioManager.shared
      .request(uCartListData, fromJson: UCarListItemEntity.fromJson);
}

//二手车 推荐
const uRecommandListData =
    "https://optimus.kakamobi.cn/api/open/v2/interested-car/list.htm?inquiryMerchantId=&_system=QKQ1.190910.002&_clv=2048&city=350500&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&times=1&_renyuan=guanwang&sceneCode=101&_systemVersion=10&limit=100&_launch=75&schoolName=未绑定驾校&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=4&_vendor=360app&_j=1.0&_product=驾考宝典&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&_r=ce787b50a62e444754a67bcedaac1590&forOldPeople=false&_appName=jiakaobaodian&viewedCarIds=686b5b000d60ec25a51b0fb5a15f39f3%2C79c320d1355f905963dd942ef50b30fa%2C58f3b5ea5d2a5990942a55ef679938f2&_v=H4sIAAAAAAAAAGVNu2oDMRCs8h%2BCbQxKsZJ2tVus4AImtsnlhdOa3BHhc5Jr7B%2FIH%2BcbIgxunGIeDDPMUi2hTKGEaawoTaCq65JbZVfMdehW0Vl3NsUVgUnXvRMuDZv5OMCjikGvWxKPnjz7t7vX%2B4fdGp5b8aWHJ93N9esww6eKjwibq%2F1BhTDAtxIXBtKIJlKJuSas4x4hayloLR0Kpn1gCzZW%2BcgpkRiFIQkEzcjIDPFiTiosecFxQdKe2FxeEjfKAexS%2Bvl39nt78%2F4HYGXsxxIBAAA%3D&page=1&schoolCode=-1&sign=77bd9cfec06a03a7eb15225a75768d2901";
Future<NetResult<UCarRecommandItemEntity>> uRecommandData() async {
  return DioManager.shared
      .request(uRecommandListData, fromJson: UCarRecommandItemEntity.fromJson);
}

//摩托车
const motoHomeDataUrl =
    "https://mcbd.maiche.com/api/open/motor/home-data.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&authToken=ce9699fa9b19059b9b19fa96001216ca12f22c7e&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=14&schoolName=未绑定驾校&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=4&_vendor=360app&_mcbdVersion=6&_j=1.0&_product=驾考宝典&_productCategory=jiakaobaodian&bizVersion=15&mcbd_sdk_version=17.1.2&_platform=android&_r=49a221b42362401962b2b419348d53e0&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGWNTUoDQRSEE8mos0jcZKGCYCIDMw3dsxPBK%2BQSmV2%2F3YNu6J%2F3cwev48Hc2grZ6KKqvkUVtUVy82jGMYVkQmkBFn1f%2FE59iL7Pfld97H8h%2BCDgcN15odC0Gt4m2KBE6PCRZaHlR0%2B393dX%2BzVct%2BJDBze4H%2BzLYYBnlKVmWP3ZH1A4JzgiUyBgtHMpMzud2EpN1YDimNmoyarRUHLVOg45JY5WXTWxTJBQM2UiqBd4RyHRM4WzpPbE4nVLsZlUiJfS67%2Bzz6%2FTxzc8u%2FQxEgEAAA%3D%3D&schoolCode=-1&sign=2076332ccd41e9b63fc2d8c04b9e38d701";

Future<NetResult<MotocycleHomeDataEntity>> motoHomeData() async {
  return DioManager.shared
      .request(motoHomeDataUrl, fromJson: MotocycleHomeDataEntity.fromJson);
}
