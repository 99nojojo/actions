import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_actions/pages/demo_pager.dart';
import 'package:flutter_actions/pages/pages.dart';
import 'package:flutter_actions/static/web_url.dart';
import 'package:get/get.dart';

part 'route_path.dart';

class Routes {
  factory Routes() => _getInstance();

  static Routes? _instance;

  static Routes get obj => _getInstance();

  Routes._internal() {}

  static Routes _getInstance() {
    _instance ??= Routes._internal();
    return _instance!;
  }

  static final pages = <GetPage>[
    GetPage(
        name: RoutePath.LOGIN_CODE,
        page: () => const LoginPage(),
        children: [
          GetPage(
              name: RoutePath.LOGIN_PWD,
              page: () => const LoginPage(
                    useAccount: true,
                  ),
              children: [
                GetPage(
                    name: RoutePath.FIND_PWD,
                    page: () => const FindPwdBackPage()),
              ]),
        ]),
    GetPage(name: RoutePath.TAB_NAV, page: () => const TabContainerPage()),
    GetPage(name: RoutePath.Setting, page: () => SettingPage(), children: [
      GetPage(name: RoutePath.SettingC, page: () => const CommonSPage()),
    ]),
    GetPage(
        name: RoutePath.DETIAL,
        page: () => const DriverSchoolPage(),
        children: [
          GetPage(
              name: RoutePath.IMAGES, page: () => const JxImageListPage())
        ]),
    GetPage(name: RoutePath.DEMO, page: () => const DemoPage())
  ];

  Future jumpToLogin() async {
    Get.toNamed(
      RoutePath.LOGIN_CODE,
    );
  }

  Future jumpToWebPage(String title, Uri url, {bool showVideo = false}) async {
    Get.to<Void>(
      WebViewPage(
        title: title,
        url: url,
        showVideo: showVideo,
      ),
    )?.then((_) {
      FocusManager.instance.primaryFocus?.unfocus();
    });
  }

  Future jumpToTeachInputCode() async {
    await jumpToWebPage("填写验证码教学视频", Uri.parse(WebUrl.TEACH_INPUT_CODE),
        showVideo: true);
  }

  Future jumpUseAgreement() async {
    await jumpToWebPage("用户使用协议", WebUrl.PROROCOL_USER);
  }

  Future jumpPrivateAgreement() async {
    await jumpToWebPage("隐私协议", WebUrl.PROROCOL_PRIVATE);
  }

  Future jumpFeedBack() async {
    await jumpToWebPage("账户申述", WebUrl.FEED_BACK_URL);
  }
}
