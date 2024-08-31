import 'package:get/get.dart';

import '../../net/net.dart';

class FindPwdController extends GetxController {
  get authNumberUrl => "".obs;

  void refreshUrl() {
    getAuthNumber().then((value) {
      authNumberUrl.value = value.data?.captchaUrl;
    });
  }

  @override
  void onReady() {
    refreshUrl();
  }
}
