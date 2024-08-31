import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// 设置系统状态栏颜色
///
/// 状态栏背景为`透明`, 字体为`白色`
void setSystemStatusBarTransparentWhite() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.light,
  ));
}

/// 设置系统状态栏颜色
///
/// 状态栏背景为`透明`, 字体为`黑色`
void setSystemStatusBarTransparentBlack() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  ));
}

/// 设置系统状态栏颜色
///
/// 状态栏背景为`黑色`, 字体为`白色`
void setSystemStatusBarBlackWhite() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.black,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.light,
  ));
}

/// 设置系统状态栏颜色
///
/// 状态栏背景为`白色`, 字体为`黑色`
void setSystemStatusBarWhiteBlack() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.dark,
  ));
}

/// 设置系统状态栏颜色
///
/// 自定义状态栏背景，默认为`白色`； 字体为`黑色`
void setSystemStatusBarCustem(
    {Color statusBarColor = Colors.white, bool isDark = true}) {
  var brightness = isDark ? Brightness.dark : Brightness.light;
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarBrightness: brightness,
    statusBarIconBrightness: brightness,
  ));
}
