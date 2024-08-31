import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_actions/framework/framework.dart';
import 'package:flutter_actions/routes/route_manager.dart';
import 'package:get/get.dart';
import 'package:msh_checkbox/msh_checkbox.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // WidgetsBinding.instance.addObserver(AppObserver());
  // await DioManager.shared.dioInterceptorConfig();
  // await SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget   {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      //pxCook显示的小米8截图，xxxhdpi 270x570
      designSize: const Size(270, 570),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: GlobalThemData.lightThemeData,
          darkTheme: GlobalThemData.darkThemeData,
          defaultTransition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 500),
          initialRoute: RoutePath.initialRoute,
          getPages: Routes.pages,
        );
      },
    );
  }
}

