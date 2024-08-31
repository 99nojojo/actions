import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_actions/framework/app_widget_bind_observer.dart';
import 'package:flutter_actions/framework/framework.dart';
import 'package:flutter_actions/routes/route_manager.dart';
import 'package:get/get.dart';
import 'package:msh_checkbox/msh_checkbox.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding.instance.addObserver(AppObserver());
  await DioManager.shared.dioInterceptorConfig();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
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

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return GetX<LoginController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "android风格",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
          child: MSHCheckbox(
            size: 32,
            style: MSHCheckboxStyle.fillFade,
            value: _.isCheck.value,
            colorConfig: MSHColorConfig(checkColor: (state) {
              return Colors.amber;
            }, borderColor: (state) {
              return state.isDisabled ? Colors.blue : Colors.deepPurple;
            }),
            onChanged: (selected) {
              _.isCheck.value = selected;
            },
          ),
        ),
      );
    });
  }
}

class LoginController extends GetxController {
  var isCheck = false.obs;
}
