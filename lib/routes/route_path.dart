part of 'route_manager.dart';

abstract class RoutePath {
  static const LOGIN_PWD = "/pwdLogin";
  static const LOGIN_CODE = "/codeLogin";
  static const FIND_PWD = "/findPwd";
  static const TAB_NAV = "/tabNav";
  static const Setting = "/setting";
  static const SettingC = "/settingCommon";
  static const HOME = "/home";//无用
  static const DETIAL = "/detial";
  static const IMAGES = "/images";
  static const DEMO = "/demo";

  static const LOGIN_USE_PWD = LOGIN_CODE + LOGIN_PWD;
  static const FIND_PWD_PAGE = LOGIN_USE_PWD + FIND_PWD;
  static const Common_Setting = Setting + SettingC;
  static const JX_IMAGES = DETIAL + IMAGES;

  static const initialRoute = TAB_NAV;
}
