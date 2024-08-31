import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/utils.dart';

class Message {
  static CancelFunc showToastBottom(
    String msg, [
    Duration duration = const Duration(milliseconds: 1500),
  ]) {
    return BotToast.showText(
        text: msg,
        align: Alignment.bottomCenter,
        borderRadius: BorderRadius.circular(10.hx),
        textStyle: getTextStyle(size: 22.sp, color: Colors.white),
        duration: duration,
        animationDuration: const Duration(milliseconds: 300),
        clickClose: true);
  }
}
