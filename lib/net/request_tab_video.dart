import '../framework/framework.dart';
import 'bean/bean.dart';

//直播课    科1～科4
//页面内容分别是 首页轮播、直播日历、直播广场、课程列表(驾考精华课、专项精品课、其他课)
//_r、_v、sign  不同

const lesson1BannerUrl =
    "https://monkey.kakamobi.cn/api/open/live/get-banner-list.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&carType=car&sceneCode=101&_systemVersion=10&_launch=43&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=1&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&kemu=1&_r=0a8f406217184c7a17400a5c961237c8&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNu2oDMRD853xE%2FiCklVbaXdhixaqTuySQ1nCxDbGTs8G1C599InHgiAi4cYoZhmEeK0Hl0anDwHEEx0erkjuflzEnzR3kpcva%2FYmUE9oo6z4jp4bNtB9s2waslyfCAoUKl9e3l8X7fG2fLfjc24fMp%2Fp1mexHsDiwzU3%2FIkgQ7FuIExuJA0WsxFw91NMZLEpKoM0dEvhzYA16qniM3hMqhcGjBYnAwGzuKnaCjHHGbkbYnlhzXBE3isH0Gjr8O7u7f3z4Bcm3%2BqMSAQAA&schoolCode=-1&sign=480ed6548c0aecdd0b77b08fdb58d0a3";
const lesson2BannerUrl =
    "https://monkey.kakamobi.cn/api/open/live/get-banner-list.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&carType=car&sceneCode=101&_systemVersion=10&_launch=53&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=2&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&kemu=2&_r=cf914a309a544ecb4a5e5430dfef0c57&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNO2pDMRA8Qe5gUCPYZosVrKRdrY1f4hcwcWVISAonfsUzFn6QJtgH8DVzlYiAm6SYYRjms0YjnRIli1omTnqEir7PflN8IN%2Bz3yRP%2Fa8IPhhMOO%2B8aWhYDOcR7tsAdPgq5tiJU%2Ff2%2BPK03M5h1YLPHTzgdqgfuwHe0VxiWPzp79CEI%2BxRNCgIJiazKqo1cz2cGAqGwNTcMXA%2BRaVIh2rHkrMYSRyzQcTCyqqQbuKCplZmmmZi7UnJl7VooxKBbqGvf2ef17vvH5a8pHUSAQAA&schoolCode=-1&sign=57e2382ea19cb102c1bdd413017bc770";
const lesson3BannerUrl =
    "https://monkey.kakamobi.cn/api/open/live/get-banner-list.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&carType=car&sceneCode=101&_systemVersion=10&_launch=54&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=3&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&kemu=3&_r=38afc342da0746e9aff907421110fb6b&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNu2oDMRD85%2FyDg0NS2PiSXMDYpXEqJ7nijIXvA%2FINhi1WsJJ2tQY1gm0iAm6SYoZhmMcaFGWKGDVInijKyRzUPtVtrh5rT3UbK%2Fa%2FwlevNsGiqyq%2BYTnsR3tuA9bBI2uhwkXK09vDZjVb2GsLzjt7gdngPg%2BDfYCWSLb80z%2BAMgX7AhYvxhAJVR2LuETueCbL4D1hc0dP6RwEAx6dnnJKrMhhTGoBMgmJWLyJd1DRfJV4ZW1PgjWvWRrlYHgL7f6d3d1fvn8At1Fs7RIBAAA%3D&schoolCode=-1&sign=29f8f6bcb98baae45eef82e4ff681465";
const lesson4BannerUrl =
    "https://monkey.kakamobi.cn/api/open/live/get-banner-list.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&carType=car&sceneCode=101&_systemVersion=10&_launch=54&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=4&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&kemu=4&_r=cabbbd98e5bf4d4b985dbdbfdbdbc5cc&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNy0oDQRDckCEbzV70B1whmISsGtFrYKAvgbn0zHRPd6DnmB%2FwI%2FxuByGXeKiiKOqxVjHukyWJXHpMPAenfsx%2BU3w1P6LfJG%2Fjn6i%2BCvS6nbxwbdgNDx28tgGY9JMkYKDA4ev542V%2F3MJ7Cx4meNPj4O6XA9yphISwu%2BkvVQgjrJS4MpAmNBFHzC6jmy0QitaK1tyuYl5EtmgzJ%2FOSM4lR7LJA1IKMzJCu4lGFpZw4nUjaE5sva%2BJGJYJdQ0%2F%2Fzr5%2FLudfLYZ2MBIBAAA%3D&schoolCode=-1&sign=7e04451e8836b4fa67d4d74eec9bf4ef";

const lesson1ListUrl =
    "https://jiakao-misc.kakamobi.cn/api/open/top-lesson-album/get-top-lesson-album-info.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&carType=car&sceneCode=101&_systemVersion=10&_launch=53&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=1&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&kemu=1&_r=05bed77352314cad055c52d70fa268c7&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNu2oDMRD853yEvyBFSq20u2JBW2g7q0oC7lzkCjt2yNkG98Fn0DlOOIgIuEmKGYZhHithxTFoYIdxhIBnq5I7n9cxJ80d5HXI2v2KlBPbKNs%2BM6aGzXQY7L0NWC%2FPxAUKFSyLl8fXt%2BXWdi341NtellP9vk72KVwC2OZP%2FypM4OxLCBMaSQBlroRYPdTTBSxKSqDNHRL4i0N1eqp8jt4TK7nBszmJgIBo4SaOwshxjmFO3J5Qc1wRNorO9Bb6%2BHd2N7t%2F%2BAHbuqNREgEAAA%3D%3D&schoolCode=-1&sign=ea4d9738ce88e9df82f7cb0e7cf9ca81";
const lesson2ListUrl =
    "https://jiakao-misc.kakamobi.cn/api/open/top-lesson-album/get-top-lesson-album-info.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&carType=car&sceneCode=101&_systemVersion=10&_launch=53&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=2&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&kemu=2&_r=43b12d4693a64fb993532d4f4baf47e0&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNy0oDQRD8Z7%2Bgu2d6evrQx%2Blb5hv8CEHwNptsYMEogkquiS64moiDkIseqiiKehyMFAZRoQhhYIGtNytzKsdQspaZy1GKzr8il0w%2B2HkpBLnjNN2M%2FtEHfLFXpMoVK9Sn9%2Be37%2F3ZP3vwZfEv20%2FtcTf5vVEV9tOf%2Fs4IOfqDIWRwNGElagjQErfNmj1YzqzdHTOndQSNumm0DSkhKcYxkUcLDAzgchG3RkBhBbJC6k%2BgJRwQOoXoegnd%2FTu7StfyAxLURp0SAQAA&schoolCode=-1&sign=46d9c9233a14c2b364ff8b934a01d946";
const lesson3ListUrl =
    "https://jiakao-misc.kakamobi.cn/api/open/top-lesson-album/get-top-lesson-album-info.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&carType=car&sceneCode=101&_systemVersion=10&_launch=54&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=3&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&kemu=3&_r=285da44db5894851b5a4285819c9bd19&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNu2oDMRAs87%2F%2Bh7hJI3xnfIXzKGKMOxOf4ZLYZFe7klawpWAbg77BfxARcOMUMwzDPPZKgl2USAF9xxFX5rSMqRx8yVJGLodYZPwTuWSyTk9TIcwN5%2BGxt882YJNugSpXqFjfjpuPn93JvlvwfbIv3Q3uZT3Ys1KNbOe7%2FloJONirAmY00MhC5ADRJXbLBZvXnFma22dOi4ASZOlo5VMCEgh9IgvqGRnR4k3MlZD8BeMFqD2hFL8HbOSDyS309O9sNr8%2B%2FAKFyV%2FjEgEAAA%3D%3D&schoolCode=-1&sign=804bc6827e28cacc45c7db0b6bb0c2e8";
const lesson4ListUrl =
    "https://jiakao-misc.kakamobi.cn/api/open/top-lesson-album/get-top-lesson-album-info.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&carType=car&sceneCode=101&_systemVersion=10&_launch=54&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=4&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&kemu=4&_r=abc3759c5b924b33ab5b5b75c5a011e8&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNu2oDMRAsYhJw5WDwJb5gVzEpz8j4ikvif8gXrHYlLWiLhbCgRuDOX5mPiQi4cYoZhmEeSwXBIUqEhH7giAdzWrpQFr5kKR2XRSzS%2FYlcMtig274A5obNtBtt3Qas1xlB5UoV693q%2FvFlvrWnFnzo7Vnnk%2Fs4TfapUCPb5qZ%2FUiBO9q6EGY00sgA4QnSB3XHP5jVnluaOmcM%2BoSQ5Ojj4EAiE0hjAknpGRrR4Fa8KCP6M8UzQnlCKXxI28snkGnr7d%2FZ9%2Bfr5BXoOyAESAQAA&schoolCode=-1&sign=4b310f32fab24a16fb0e3c31cc5325ec";

const lesson2SquareUrl =
    "https://monkey.kakamobi.cn/api/open/live-session/get-session-list.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&carType=car&sceneCode=101&_systemVersion=10&_launch=53&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=2&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&kemu=2&_r=0d1d05da4e774fba770ddaba9d13b6eb&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNy2oCQRD8lPyjX5BNVNBkwauQCAsamdX1kHMgV3%2FEuU0zfWjo7pmeyRDwkhyqKIp6rEiRx4pVM6fRKl%2FAUehLWKcQMfQW1jVg%2FytiiAojLbqgHBvmw9cEj20AOtqJevPi2W9f316WmwU8teB7B8%2B0GdzxMMCe1FeD%2BZ%2F%2BgVQswwcJRwahaqjqhNkVc%2BeTQaIYDZs7RSunzJjx7PSSShFFyVNRyJSMjRnqXXyTsqYb15toe2IMaSXcKGXAe%2Bjz39lseX34AaE%2B8kMSAQAA&schoolCode=-1&sign=6e7e9481d56a16fa66adeb66ad0d3645";
const lesson3SquareUrl =
    "https://monkey.kakamobi.cn/api/open/live-session/get-session-list.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&carType=car&sceneCode=101&_systemVersion=10&_launch=54&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=3&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&kemu=3&_r=7461bc7a4c4b464e7a615e4ba30efeab&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNy0oDQRD8Z79g%2BtDS3TM9c8rcpr%2FDc84BWTDKbLIhVyWRbEyERBcchFz0UEVR1OOCAtQnSBLI95poYxXLFMvVFwdl0nJNBaZf4YoT6%2FE8FiHXcOoWgx3agI34zpI1c6b8%2Br37%2Btye7diC%2B9E%2BcNvVl2VnTyg5qZ3%2B9JcorMGekcmRMSYFkcpENWpdr9Q8OqfQ3MFpXAWCAOsqGx8jC3AYolhAr6RElm7iEYXEzyjNWNoTQfEXpkY%2BGNxC839nd%2FcPbz9ivElzEgEAAA%3D%3D&schoolCode=-1&sign=d00f3955d7997ec55d8f7cd754ef7dd0";

const lesson1ManagerUrl =
    "https://monkey.kakamobi.cn/api/open/live/get-free-live-list.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&carType=car&sceneCode=101&_systemVersion=10&_launch=58&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=1&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&kemu=1&_r=40ed3c02fcac46e102563cac535a8d20&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNu04DMRC0tE0kN2t717vFuuQ%2FLorJhXAN%2FACHFJFEXAIktGn5bqxIaaCY0Wg0j42KcR8tSuDcY%2BQFVHVjctvsirkR3TY6G6%2BiuCLQ625ywqVhPzx1cGgDMOmZxKMnz%2F779evt%2FbKDjxb8nOCol6GuVwM8qPiIsP%2FTX6kQBnhU4sJAGtFEKjHXhHW%2BRMhaClpzu4JpGdiCzassckokRqFLAkEzMjJDvIlnFZY84zgjaU9sLm%2BIG%2BUAdgu9%2FDs7%2Fdzd%2FwKPaaF6EgEAAA%3D%3D&schoolCode=-1&sign=4b205dfb72840807f2706b8e15186815";
const lesson4ManagerUrl =
    "https://monkey.kakamobi.cn/api/open/live/get-free-live-list.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&carType=car&sceneCode=101&_systemVersion=10&_launch=58&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=4&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&kemu=4&_r=86a563548a4f49566396498ad7761e6f&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNu2oDMRDc1a6kFWwp2Magb8hHJI0b4TvjK5xHkRDcGfsM5xfu8lH5uoiAm6SYYRjmsVUS7IIE8ug6DriyqnmMee9ykjxy3ocs469IOZF1epkyYWq4Do%2B9HduATfoJVLhAwfJ2%2BNjdNhc7t%2BD7ZCfdDPVlPdizUgls1z%2F9tRKwt1cFTGiggYWoAmKNXJcLNqcpsTS3TxwXHsXLstLKxQgk4PtI5tUxMqKFu3hSQnIzDDOg9oSS3RawkfMm99D839nu6%2BH7B4PS9LUSAQAA&schoolCode=-1&sign=52e393de875581531dd8a4c3c7643182";

const lessonList = <List<String>>[
  [lesson1BannerUrl, lesson4ManagerUrl, "", lesson1ListUrl],
  [lesson2BannerUrl, "", lesson2SquareUrl, lesson2ListUrl],
  [lesson3BannerUrl, "", lesson3SquareUrl, lesson3ListUrl],
  [lesson4BannerUrl, lesson1ManagerUrl, "", lesson4ListUrl],
];

//课程列表
Future<NetResult<VideoLessonEntity>> lessonListData(String url) async {
  return DioManager.shared.request(url, fromJson: VideoLessonEntity.fromJson);
}

// 直播日历
Future<NetResult<VideoCalendarEntity>> lessonCalendarData(String url) async {
  return DioManager.shared.request(url, fromJson: VideoCalendarEntity.fromJson);
}

//直播广场
Future<NetResult<VideoSquareEntity>> lessonSquareData(String url) async {
  return DioManager.shared.request(url, fromJson: VideoSquareEntity.fromJson);
}

//轮播图
Future<NetResult<LessonBannerEntity>> lessonBannerData(String url) async {
  return DioManager.shared.request(url, fromJson: LessonBannerEntity.fromJson);
}

//社区

const communityDataUrl =
    "https://cheyouquan.kakamobi.com/api/open/group/hot-topic.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=69&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=1&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&_r=27974daf23214fcd5f21af4d2bf135ea&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNy0oDQRD8Ib8mnzR96J7umenLQC4N8x%2Be%2FAG9rJoNI7uQa0KiriSRQNZByEUP9aCooi4IQalPLvVDVWpiFcscytkXB2XWco4F5l%2FjiiPr8TQVYtdw7J5G%2B0QCm3AnlDVL5ry97r%2B%2FNid7b8XDZB%2B46erLqrNXpBzVjn%2F2KyTRZM8o7NgEowJRFeYatA5rNY%2FOKbR0dBrWiSHBUOnNhyAEksZAltArK7PFm3lEYvJLjkuh9sRQ%2FEW4kU8Gt9LDv7P93f3iB2r0kHUSAQAA&schoolCode=-1&sign=2b534268e352c1d51ad75a76db3cae9601";
Future<NetResult<CommunityDataEntity>> communityListData() async {
  return DioManager.shared
      .request(communityDataUrl, fromJson: CommunityDataEntity.fromJson);
}

//最新
const newestDataUrl =
    "https://cheyouquan.kakamobi.com/api/open/group/newest-topic.htm?_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=43&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_saturnPageLocation=%7B%22location%22%3A%22newestList%22%7D&_version=8.28.0&_saturnVersion=13.7&_network=wifi&patternCode=101&adver=15&kemuStyle=4&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&_platform=android&_r=e00f246cf1584af9f04af124894685be&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNu2oDMRCs4iaN8J3xFbaTIiG4M%2FEFLo5NdrUraQVbCrYx6Bucj8i35DMtAm6SYoZhmMdOSbCLEimg7zji0pyWMZW9L1nKyGUfi4y%2FIpdM1ulxKoS54TTc9fbeBmzSF6DKFSrWx7fn18%2Ft0T5a8Gmyg24Ht1kNtlaqke30p79SAg72oIAZDTSyEDlAdIndYs7mNWeW5vaZ0zygBFk4WvqUgARCn8iCekZGtHgTMyUkf8Z4BmpPKMXvABv5YHIL3f87%2B%2Fq%2B%2FFwBJhCbGBIBAAA%3D&schoolCode=-1&sign=35591daadd2c2b75198c1c90c6b4a25101";

Future<NetResult<CommunityDataEntity>> newestData() async {
  return DioManager.shared
      .request(newestDataUrl, fromJson: CommunityDataEntity.fromJson);
}

//资讯
const messageDataUrl =
    "https://telepathy.kakamobi.com/api/open/v3/article/custom-recommend.htm?ttVersion=8&_system=QKQ1.190910.002&_clv=2048&bizCode=8.28.0&_pkgName=com.handsgo.jiakao.android&localCityCode=350500&_operator=M&_manufacturer=Xiaomi&_renyuan=guanwang&sceneCode=101&_systemVersion=10&_launch=44&schoolName=%E6%9C%AA%E7%BB%91%E5%AE%9A%E9%A9%BE%E6%A0%A1&carStyle=car&_version=8.28.0&_network=wifi&patternCode=101&adver=15&kemuStyle=4&_vendor=360app&_j=1.0&_product=%E9%A9%BE%E8%80%83%E5%AE%9D%E5%85%B8&_productCategory=jiakaobaodian&bizVersion=15&ttDna=0&_platform=android&_r=bc8782f5d33448f8f597f83416efec3c&forOldPeople=false&_appName=jiakaobaodian&_v=H4sIAAAAAAAAAGVNS2pCQRC8c07QM9M93UIPDPRGmHN4gOQCeeLgM8lbGOJWeAGJSp5JhoAbXVRRFPU5CCv1Xj07ij14WlmVPIZ8jDlpHiEffdbxX6Sc2Ho5TZkpNZyHx84ubcAm%2BUAuULBQ2X2%2Bf33vT%2FbbgtvJfmQ%2F1NfNYC%2FCxYOdb%2FobYQRnb4KUyFA8KHNFohqgLtdgUVICbW6XIKwdqdNl5VUMAVnRdYHNSQQCIvNX8SRMHOfk58jtiTTHA1Kj6Eyvoee7s4e4mP0BpW23NBIBAAA%3D&schoolCode=-1&sign=2fa16e446696d3660da40026913463aa01";
Future<NetResult<MessageDataEntity>> messageData() async {
  return DioManager.shared
      .request(messageDataUrl, fromJson: MessageDataEntity.fromJson);
}
