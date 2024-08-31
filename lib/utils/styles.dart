import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle getTextStyle(
    {double size = 12,
    Color color = const Color(0xFF353535),
    bool isBold = false,
    TextDecoration? decoration,
    bool isItlic = false,
    double lspace = 0.0}) {
  return TextStyle(
    color: color,
    decoration: decoration ?? TextDecoration.none,
    fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
    fontSize: size.sp,
    fontStyle: isItlic ? FontStyle.italic : FontStyle.normal,
    letterSpacing: lspace,
  );
}

//常用的格式化
final commonFormatters = <TextInputFormatter>[
  //数字，只能是整数
  FilteringTextInputFormatter.digitsOnly,
  //数字包括小数
  FilteringTextInputFormatter.allow(RegExp("[0-9.]")),
  //大小写的英文字母
  FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
];

//常见的TextField模版
TextField getInputWidget({
  String hintText = "",
  int? maxLength = TextField.noMaxLength,
  TextInputAction? textInputAction = TextInputAction.next,
  FocusNode? focusNode,
  TextEditingController? controller,
  List<TextInputFormatter>? inputFormatters,
  TextInputType? keyboardType = TextInputType.text,
}) {
  return TextField(
    inputFormatters: inputFormatters,
    textInputAction: textInputAction,
    keyboardType: keyboardType,
    maxLength: maxLength,
    focusNode: focusNode,
    controller: controller,
    decoration: InputDecoration(
        hintText: hintText, counterText: "", border: InputBorder.none),
  );
}

//  memCacheWidth: 设置这个属性会导致图片变模糊
Widget getCacheNetImage(String url,
    {bool isCircle = false,
    double radius = 0,
    BorderRadius? borderRadius,
    double width = double.infinity,
    BoxFit? fit = BoxFit.cover,
    double height = double.infinity}) {
  var image = CachedNetworkImageProvider(url);
  var br = isCircle
      ? BorderRadius.circular(100)
      : borderRadius ??
          (radius == 0 ? BorderRadius.zero : BorderRadius.circular(radius));
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
        borderRadius: br,
        image: DecorationImage(
          fit: fit,
          image: image,
        )),
  );
}

Widget rowItemBuilder<T>(int length,
    {T Function(int)? itemData,
    Widget Function(T)? itemBuilder,
    bool isRow = true}) {
  if (length == 0 || itemData == null || itemBuilder == null) {
    return const SizedBox();
  } else {
    var wigets = List.generate(length, (index) => itemBuilder(itemData(index)));
    return Flex(
      direction: isRow ? Axis.horizontal : Axis.vertical,
      children: wigets,
    );
  }
}

Widget indexInRange<T>(int targetIndex, List<T>? data,
    {Widget Function(T)? builder,
    Widget placeholder = const SizedBox.shrink()}) {
  if (data == null || data.isEmpty || builder == null) {
    return placeholder;
  }
  if (targetIndex >= data.length) return const SizedBox.shrink();
  return builder(data[targetIndex]);
}

Widget getVerticalText(String text, {TextStyle? textStyle}) {
  if (text.isEmpty) return const SizedBox.shrink();
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: text
        .split('')
        .map((c) => Text(
              c,
              style: textStyle,
            ))
        .toList(),
  );
}

bool isDarkStyle() {
  final brightness =
      SchedulerBinding.instance.platformDispatcher.platformBrightness;
  return brightness == Brightness.dark;
}

bool isLightStyle(BuildContext context) {
  final brightness = MediaQuery.of(context).platformBrightness;
  return brightness == Brightness.light;
}
