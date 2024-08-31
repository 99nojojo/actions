import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_actions/components/border_widget.dart';
import 'package:flutter_actions/components/components.dart';
import 'package:flutter_actions/net/bean/bean.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'package:get/get.dart';

import '../routes/routes.dart';
import '../static/static.dart';
import 'controller/controller.dart';

class FindPwdBackPage extends StatefulWidget {
  const FindPwdBackPage({super.key});

  @override
  State<FindPwdBackPage> createState() => _FindPwdBackPageState();
}

class _FindPwdBackPageState extends State<FindPwdBackPage> {
  final FocusNode phoneNode = FocusNode();
  final TextEditingController phoneController = TextEditingController();
  final FocusNode imageNumNode = FocusNode();
  final TextEditingController imageNumController = TextEditingController();
  @override
  void initState() {
    super.initState();
    setSystemStatusBarTransparentBlack();
  }

  @override
  Widget build(BuildContext context) {
    Get.put<FindPwdController>(FindPwdController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        leading: backWidget(),
        centerTitle: true,
        title: Text(
          "找回密码",
          style: getTextStyle(isBold: true),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.hx),
          color: Colors.white,
          child: Column(
            children: [
              40.vGap,
              UnderLineWidget(
                  paddingBottom: 8.vx,
                  child: Row(
                    children: [
                      Image.asset(
                        ICON_PHONE,
                        width: 14.hx,
                        height: 14.hx,
                      ),
                      18.hGap,
                      Expanded(
                          child: getInputWidget(
                              hintText: "请输入手机号码",
                              maxLength: 11,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              keyboardType: TextInputType.number,
                              controller: phoneController,
                              focusNode: phoneNode))
                    ],
                  )),
              8.vGap,
              Row(
                children: [
                  UnderLineWidget(
                      paddingBottom: 6.vx,
                      child: Row(
                        children: [
                          GetX<FindPwdController>(
                            builder: (controller) {
                              String imageUrl = controller.authNumberUrl.value;
                              return SizedBox(
                                width: 56.vx,
                                height: 22.vx,
                                child: imageUrl.isEmpty
                                    ? null
                                    : Image.network(imageUrl),
                              );
                            },
                          ),
                          10.hGap,
                          GestureDetector(
                            child: Text(
                              "看不清楚，换一张",
                              style: getTextStyle(size: 12, isBold: true),
                            ),
                          )
                        ],
                      )),
                ],
              ),
              UnderLineWidget(
                  paddingBottom: 8.vx,
                  child: Row(
                    children: [
                      Image.asset(
                        ICON_YZ_IMAGE,
                        width: 14.hx,
                        height: 14.hx,
                      ),
                      18.hGap,
                      Expanded(
                          child: getInputWidget(
                              hintText: "输入图片中的字符",
                              maxLength: 4,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              keyboardType: TextInputType.number,
                              controller: imageNumController,
                              focusNode: imageNumNode))
                    ],
                  )),
              18.vGap,
              Row(
                children: [
                  SizedBox(
                    width: 8.hx,
                    height: 8.hx,
                    child: Checkbox(value: false, onChanged: (isCheck) {}),
                  ),
                  6.hGap,
                  Text.rich(TextSpan(children: [
                    TextSpan(text: "登陆即同意", style: getTextStyle(size: 10)),
                    TextSpan(
                        text: "用户使用协议",
                        style: getTextStyle(
                            color: const Color(0xff36a8e2), size: 10),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Routes.obj.jumpUseAgreement();
                          }),
                    TextSpan(text: "和", style: getTextStyle(size: 10)),
                    TextSpan(
                        text: "隐私政策",
                        style: getTextStyle(
                            color: const Color(0xff36a8e2), size: 10),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Routes.obj.jumpPrivateAgreement();
                          })
                  ]))
                ],
              ),
              27.vGap,
              GestureDetector(
                child: Container(
                  height: 30.vx,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        Color(0xff80f1f2),
                        Color(0xff7ee2f5),
                        Color(0xff81d4f7),
                        Color(0xff81c6fa)
                      ]),
                      borderRadius: BorderRadius.all(Radius.circular(30.hx))),
                  child: Text(
                    "下一步",
                    style: getTextStyle(color: Colors.white),
                  ),
                ),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
