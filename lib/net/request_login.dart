import 'package:flutter_actions/framework/framework.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'bean/bean.dart';

const String auth_base_url = "https://auth.mucang.cn/";
const String authNumberUrl = "api/open/v2/forgot-password/request-captcha.html";

//找回密码-获取验证码
Future<NetResult<FindPwdAuthEntity>> getAuthNumber() async {
  var paramUrl = NetUrl.addParamToUrl(authNumberUrl, extra: {
    "sign": "46137a7ef14570e6fed4c34f6e33cf4301",
    "_v":
        "H4sIAAAAAAAAAGWNuwoCMRREP8UPtbOwEmTBB9ndBFtBxfUFokW2uHAfyaYynfc7LE2tAzPVmZk7DBw5cR%2B88307EGsN1%2B7N6Isv1czqEbjXDg7EOWbKmLfP3eO2ueqpgPtOz7CpzHpZ6QI4p6iXn%2F4SmGLQFRB6VILQmIat9UFqTA2LCrS2rQXbFAfjQi%2BNRxNYxElwRpwlTUCMRToHRpYXDi9K5YDiW%2B6SSjDq5G96NP5Mv%2BV%2BDkbiAAAA"
  });
  var result = DioManager.shared.request<FindPwdAuthEntity>(paramUrl.toString(),
      newBaseUrl: auth_base_url,
      fromJson: (fromJson) => FindPwdAuthEntity.fromJson(fromJson));
  return result;
}
