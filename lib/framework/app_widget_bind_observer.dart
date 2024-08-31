import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_actions/framework/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/utils.dart';

class AppObserver extends WidgetsBindingObserver {
  @override
  void didChangePlatformBrightness() {
    var isDark = isDarkStyle();
    print("深色模式:${isDark ? "深色" : "浅色"}");
    Get.changeTheme(
        isDark ? GlobalThemData.darkThemeData : GlobalThemData.lightThemeData);
  }
}
