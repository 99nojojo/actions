import 'package:flutter_actions/net/bean/jx_image_list_entity.dart';
import 'package:flutter_actions/net/bean/tab/home/home_query_toast_entity.dart';

import '../framework/framework.dart';
import 'bean/bean.dart';

//首页驾校广告栏
const adSchoolUrl =
    "https://jiaxiao-awd.kakamobi.cn/api/open/v4/jiaxiao/list-baodian-recommend.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&cityCode=350500&latitude=25.10364&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=9&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&longitude=118.49276&patternCode=101&adver=15&kemuStyle=5&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&_r=86c3b0511fd74f28b0964f1f3edadf4e&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNu2oDMRD853zCkVx8Ap9xb0hyIXbs4ly4CBjiVHK3KlawaHel1QfkJyICbpJihmGYx4EYdciYuWoaLOsSHIW5hH0KEcNsYZ8Dzr8ihsgw0HYKrLFh1z2N8NoGYKJPYW9evPrz8ev97bSFlxa8TPBMp87d9x08EvtssPvT74nFKjyQaFQQyobMTlRdMbdaGCSK0bC5Y7SyqIoVV46XqRRhlDoWhkrJ1FQh38SGWDldNV%2BF25NiSAfRRqkC3kLrf2d3%2FffHDwK%2BxNUSAQAA&schoolCode=-1&sign=eaea2c2699343e0987e9611801e55a9301";

Future<NetResult<HomeSchoolAdEntity>> requestSchoolAdData() async {
  return DioManager.shared
      .request(adSchoolUrl, fromJson: HomeSchoolAdEntity.fromJson);
}

//首页tab分类
const homeCategoryUrl =
    "https://jiaxiao-awd.kakamobi.cn/api/open/v4/jiaxiao/home-tab.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&cityCode=350500&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=9&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=5&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&_r=c22c40de896c4a3b89d2404aa35980ad&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNu2oDMRD853xBSCDpXPhsHOzER1zbYHxnlMTF%2FUVqSbvaLRa0C2oEbiICbpJihmGYx0pQaQwaMFIaIdDRnJTOl0UqWUsHZRGKdr8il4w2yqYvSLlhPe0G27YB6%2BWesULlSvV5%2FrB8mW3stQUfe3uT2eQ%2BL5N9CdYAtv7TvwgyRPsQpkzGEkARHRM5D%2B50BkuSM2hzhwz%2BHEmjnhwek%2FeMynHwaFESEBBZuIl3QcJ0pXBlbE%2BkJa2YGqVoegvt%2F53dPX0ffgDgkVkYEgEAAA%3D%3D&schoolCode=-1&sign=fc5dcce29ba399b7d6e74e1415dc328601";

Future<NetResult<HomeTabEntity>> homeCategoryData() async {
  return DioManager.shared
      .request(homeCategoryUrl, fromJson: HomeTabEntity.fromJson);
}

//首页tab 筛选类型
const homeSearchTypeUrl =
    "https://jiaxiao-awd.kakamobi.cn/api/open/v3/jiaxiao/list-search-type.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&cityCode=350500&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=9&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=5&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&_r=20db48fb502d4a375048304aea24f793&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNu2oDMRD8m3xgPiJfkWZBC1ppd4XVaWsXSSBgB1%2FiK2x3xpAmTjjwGXSOCLiJixmGYR4bUOQpYlTPaaLIZ6tQ%2BlC2qTgsPZVtLNj%2FCVec2gTLrii7hsVwGG3VBqyDF9FMWTLn1%2FXT7m2%2BtPcWfO7sA%2BZD%2FTkO9gWaI9niX%2F8IKuTtG4Qdm0AkVK3CXAPV04UsgXOEzR0dhYtn9Hiqek4hiKL4Mah5SMTEbPEqPkFZ04zjTLQ9MZa0EW6UvOE1tL85u394vPsFxVF2oBIBAAA%3D&schoolCode=-1&sign=24f983b2fad76f680f05b9018a0056bc01";

Future<NetResult<SearchTypeBean>> homeSearchTypeData() async {
  return DioManager.shared
      .request(homeSearchTypeUrl, fromJson: SearchTypeBean.fromJson);
}

//驾校的筛选类型
const schoolSearchTypeUrl =
    "https://jiaxiao-awd.kakamobi.cn/api/open/v4/jiaxiao/list-filter-label.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&cityCode=350500&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=9&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=5&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&_r=bc63d9f2fee74259e773f259b32e5472&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNPWtCQRCEZxTU5AUTSCs%2BfUei8AikjXV%2Bx153Vnd7t7uwxV7n784h2CTFDMMwHwslkzFapCxlxCg7cOq75OfFV%2FMd%2Bnn01t1E9ZVg1FXvSWrDevoa4LkNQK8bpoCBg4S32evDcruCpxZ86eFRt5N7P05wUgoRYf2nf1RizPChLFWANaIRORZxCd3%2BgFC0VrTmDhXTIYtl2zvalZSYjPOQCLIWFBSBeBefSkLlIvHC1J7EfFmwNCoZ7B46%2FzvD68%2F3L9mV4o4SAQAA&schoolCode=-1&sign=c2323985f0c163c9b5572ee79a6d8f4601";

Future<NetResult<HomeFilterLabelEntity>> schoolTypeResylt() async {
  return DioManager.shared
      .request(schoolSearchTypeUrl, fromJson: HomeFilterLabelEntity.fromJson);
}

//首页 驾校 筛选结果
const homeFilterSchoolUrl =
    "https://jiaxiao-awd.kakamobi.cn/api/open/v4/jiaxiao/list.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&cityCode=350500&authToken=ce9699fa9b19059b9b19fa96001216ca12f22c7e&latitude=25.10366&_pkgName=com.handsgo.jiakao.android&onlyNotContractor=true&county=%5B%5D&_operator=M&_manufacturer=Xiaomi&courseTypeList=%5B%22C1%22%2C%22C2%22%5D&_renyuan=guanwang&sceneCode=101&_systemVersion=10&limit=20&_launch=34&schoolName=未绑定驾校&carStyle=car&_version=8.28.0&_network=wifi&longitude=118.492823&marketActivityType=-1&courseClass=%5B%5D&patternCode=101&adver=15&kemuStyle=3&marketActivityTypeList=%5B%5D&_vendor=360app&_j=1.0&_product=驾考宝典&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&labelCodes=%5B%5D&_r=bf99b13491fb48d691b1bf58e4ed5e59&forOldPeople=false&sortType=9&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGWNPUoEQRSET%2BAdFjppeMkLuqF%2F3s8ujjrC4kYLyhqsOsEM3UyHosfzVmY2wiYaVNUXVFF75LYuZVmij8XnHlDRjtkexHpnx2APybrxF7z1Cg23g1X2XbvpY4YbVAcDnkhNMGTYPN8%2FPVwft3DXi48D3OJxqq%2FnCV5QTQqw%2B7M%2Fo1KI8IbEnoGwrjmv1GSmqimmAoJLoCIliLjCsaXayIcYyVVpqbg8Q0QJHJghXeATlVU27Dca%2BxOplT27bprAXUrv%2F86%2Bvq%2FKD8RODgkSAQAA&page=1&schoolCode=-1&sign=6d4ed1705129a16a035fb4896c5db8b701";
Future<NetResult<HomeFilterSchoolEntity>> schoolFilterResult() async {
  return DioManager.shared
      .request(homeFilterSchoolUrl, fromJson: HomeFilterSchoolEntity.fromJson);
}

//教练筛选条件
const coachSearchType =
    "https://awd-facade.kakamobi.cn/api/open/v4/coach/list-search-type.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&cityCode=350500&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=12&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=1&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&_r=e4ed0b4a88854f1585fd4a1510bceb33&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNu2oDMRAMduKDnIM7E5IicVyc8Z1Rkyb5gXT5BoGbBXVe0Era1W7n77YIuImLGYZhHisU0ilTlqJ14qw7cBj6FJY1RAo9h2UO1P%2BJGKLAhPMuiMaG2fA9wqINQIfPJp69efVvjy9Pd%2Bs53LfgawcPuB7cZjvAB4rPDLN%2F%2FS2KcYF3NI0KhplJxJmqS%2Bz2B4aKMTI1d4ycDkWp0N7JrqZkQlbGJFCwsrIq5Kv4QlGpR81Hk%2FakFOrKtFEtQNfQ583Z6fz7cwGiZU5ZEgEAAA%3D%3D&schoolCode=-1&sign=cb89bf70e0dd538d993e7b4a47e146c101";
Future<NetResult<CoachFilterConditionEntity>> coachTypeResult() async {
  return DioManager.shared.request(homeSearchTypeUrl,
      fromJson: CoachFilterConditionEntity.fromJson);
}

//首页 教练 筛选结果
const homeCoachFilterUrl =
    "https://awd-facade.kakamobi.cn/api/open/v4/coach/list-recommend.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&cityCode=350500&authToken=ce9699fa9b19059b9b19fa96001216ca12f22c7e&latitude=25.10366&_pkgName=com.handsgo.jiakao.android&onlyNotContractor=true&county=%5B%5D&_operator=M&_manufacturer=Xiaomi&courseTypeList=%5B%22C1%22%2C%22C2%22%5D&_renyuan=guanwang&sceneCode=101&_systemVersion=10&limit=20&_launch=34&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&longitude=118.492823&marketActivityType=0&courseClass=%5B%5D&patternCode=101&adver=15&kemuStyle=3&marketActivityTypeList=%5B%5D&_vendor=360app&_j=1.0&intelligentLabelList=%5B%5D&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&labelCodes=%5B%5D&_r=63009933d41a4fba5f1a339978dafc77&forOldPeople=false&sortType=10&hasPeilian=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGWNu0oEQRRE76OfcMOGmyz0Nxj6AZqYNNMz9ATrI1Bks8UdYdRd%2FDf%2FysxG2ESDqjpBFbUXrMPUpslG26LvoUXS4tOBUgxpMengUlh%2BIabIWuW4JsbYdZqvRn0TDrrKM3A2GTLmh9enl8%2FdUT968XHVd9nN5W47661wdkZPf%2FZbYTBW7wUwooKUwfsBKo1Q2FnXlGQy0KgZotDQVlcqRGMthELVteBHtUIGDaK6M1wLI9MG44ZtfwJOtMfQjZ2Gc%2Bnm39nX98XlD96F43ESAQAA&page=1&schoolCode=-1&sign=a4a5c1380d1165bbd640ffb44ceb032d01";
Future<NetResult<HomeCoachFilterEntity>> coachFilterResult() async {
  return DioManager.shared
      .request(homeCoachFilterUrl, fromJson: HomeCoachFilterEntity.fromJson);
}

//首页弹窗
const queryToastUrl =
    "https://jiaxiao-awd.kakamobi.cn/api/open/v4/user/query-toast.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=27&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=5&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&toastedTimes=3&bizVersion=15&_platform=android&_r=ad0634ffd19f435cff165c9f4ce30752&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNu2oDMRD853yBiS%2FhnNgkhYNxJ3xnfIWTVHHjKv8i2MagXe1KWsEWFgY3STHDMMxjZqw0ZM2cKA6S6QDOfFf8PPqqvhM%2Fz167m6i%2BMgy27D1TbVhNPyMs2gD0tkEOEjBQeH%2F6eHzbLuG1Bdc9vNh2cl%2FHCT6NQxZY%2FekfjVESfBtSJUDLoswOiVwRt98JRKtVtLljlbJLpEn3jg%2BxFGTFNBaGZFFIiCDfxcmYOF4oX5DbE6mPM6RGMYHeQ%2Bd%2FZw%2FPv3oFtRHnbRIBAAA%3D&schoolCode=-1&sign=90f063fcf3e51bbfc450b6b8a7566ed601";
Future<NetResult<HomeQueryToastEntity>> queryToast() async {
  return DioManager.shared
      .request(queryToastUrl, fromJson: HomeQueryToastEntity.fromJson);
}


const schoolDetialUrl = "https://jiaxiao-awd.kakamobi.cn/api/open/v4/jiaxiao/view.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&source=JKBD_RECOMMEND&_operator=T&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=4&id=8577&schoolName=未绑定驾校&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=2&_vendor=360app&_j=1.0&_product=驾考宝典&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&_r=a516c4a43d614b9da4168d6141c01eb5&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGWNvWoDMRCEHyPv5WfKi9x2VqWf3RULEqQ5YgdfYhvcXSEJdMolHATcG5%2FbeGCm%2Bmaml8yZbajW66l6kxgm2Q8dY1i9W%2F4yHIQjDHImVkaRQnV5O75%2FjHv4XMHTAF8yLvV3XuBbWDkDu3%2F9WZiMhh8hDAgkuQVjplpTtOiwFfASS7ExpYmqDlo7jL5kbsW6lptDX8EJEa6CqzCy3xJvGdcD8p3vyT4iwO1pejO%2BvtwBIR%2FvuuIAAAA%3D&schoolCode=-1&sign=7a8a2b5b09258be9e9c7dc706092dc3e01";
//远大驾校  详情
Future<NetResult<DriveSchoolDetialEntity>> yuandaSchool() async {
  return DioManager.shared
      .request(schoolDetialUrl, fromJson: DriveSchoolDetialEntity.fromJson);
}

const dianPinPrewUrl = "https://dianping-jiaxiao.kakamobi.cn/api/open/jiaxiao/dianping-preview-list.htm?cursor=0&_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=T&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&studentDianping=false&_systemVersion=10&limit=2&_launch=4&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=2&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&_r=c5bbc47446f64e64745ec4f61ec49ded&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGWNOwsCMRCE%2F6O%2FzjIpFnY3LyxM52IrqHi%2BQLSyFuTAB7lcgmerAzPVNzMnKFzYq%2BSN7ZJxPUsHh2bGqAbv21uRDbCWBtbE0UWKGBeX5fk4P8h2AFeN7GDepvezlQdwDE72P%2F0nMDkrLyBUKAQlK%2Be6lHrtMWCuYkDX6nXfd5SssjagNrVwrj7kkgOaJAGIcJDcgZHNlHjKOByQmZkT%2BW8ouf5Njy7jyQcTxM%2Bw4gAAAA%3D%3D&topic=8577&placeToken=f1c24bac914c468bbdf47b7d9802f8e7&page=1&schoolCode=-1&sign=1b6fac50271457d4a4318bc336c17bbe";
//远大驾校  点评预览
Future<NetResult<DianPingPrewEntity>> dianOingPrew() async {
  return DioManager.shared
      .request(dianPinPrewUrl, fromJson: DianPingPrewEntity.fromJson);
}

//远大驾校的图片集
const ydJxImageListUrl = "https://jiaxiao-awd.kakamobi.cn/api/open/v3/jiaxiao-image/image-list.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=T&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&uploadType=1&limit=20&_launch=14&id=8577&schoolName=未绑定驾校&carStyle=car&_version=8.28.0&imageType=0&_network=wifi&idType=1&patternCode=101&adver=15&kemuStyle=1&_vendor=360app&_j=1.0&_product=驾考宝典&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&_r=adb4b9ba77384507baa4073872776f9f&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNMUoEQRB8p%2F8RBLPZdRYWPEVQuXRvPXD1TqZ7prengw6nE7l5g7mJY3CJFlRRFFXUpMnx4MXRyrhy7jtzWvZU8lyEyz6V3VSm%2BTfZ5ZLROj0uBUNuPIyX3l4VxRZ9BqxUoYb68PI4f2yP9taKT4u963Z095vRbhUrkx3%2B7DeKQMnuFEIOBoo9eaQbT47XHLrBorqMPiXpBlwloYAjYMEADBSwF7akAKHB%2BGyuFAPGE%2BAJU3sCKXECbBKjybl0%2Fe%2Fs4vvr8wf0Oek7EgEAAA%3D%3D&page=1&schoolCode=-1&sign=ec1816f2b7613a942b453bbdc504267201";
Future<NetResult<JxImageListEntity>> ydJxImageList(String url) async {
  return DioManager.shared
      .request(url, fromJson: JxImageListEntity.fromJson);
}