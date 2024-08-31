import 'package:flutter/material.dart';
import 'package:flutter_actions/components/message.dart';
import 'package:flutter_actions/utils/app_size.dart';
import 'package:get/get.dart';

import '../routes/routes.dart';

class ClickWidget extends StatelessWidget {
  const ClickWidget(
      {super.key,
      this.child,
      this.onTapUp,
      this.onTap,
      this.onLongTap,
      this.validateSignin = false,
      this.isSignined = true,
      this.showTip = true});

  final Widget? child;
  final Function(TapUpDetails)? onTapUp;
  final Function? onTap;
  final void Function()? onLongTap;
  final bool validateSignin;
  final bool isSignined;
  final bool showTip;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapUp: (tapUpDetails) {
        // print(" - - - - globalPosition:${tapUpDetails.globalPosition} - - - -");
        // print(" - - - - localPosition:${tapUpDetails.localPosition} - - - -");
        // print(" - - - - kind:${tapUpDetails.kind} - - - -");
        onTapUp?.call(tapUpDetails);
      },
      onTap: () {
        if (validateSignin) {
          if (isSignined) {
            onTap?.call();
          } else {
            Routes.obj.jumpToLogin();
            if (showTip) {
              Message.showToastBottom("需要登陆！！！");
            }
          }
        } else {
          onTap?.call();
        }
      },
      onLongPress: onLongTap,
      child: child,
    );
  }
}

class ClickButton extends StatelessWidget {
  const ClickButton(
      {super.key,
      required this.button,
      this.onTap,
      this.padding,
      this.bgColor = Colors.transparent});

  final Function()? onTap;
  final Widget button;
  final EdgeInsetsGeometry? padding;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        color: bgColor,
        child: button,
      ),
    );
  }
}

Widget backWidget({Function()? onTap, double padding = 12}) {
  return ClickButton(
    button: Image.asset(
      "assets/images/live__jiakao__ic_back_black.webp",
      width: 12.hx,
      height: 12.hx,
      color: Colors.grey,
    ),
    padding: EdgeInsets.symmetric(horizontal: padding.hx),
    onTap: onTap ??
        () {
          Get.back();
        },
  );
}
