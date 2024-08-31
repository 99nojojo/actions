import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_actions/components/border_widget.dart';
import 'package:flutter_actions/components/count_down_widget.dart';
import 'package:get/get.dart';
import '../components/components.dart';
import '../routes/routes.dart';
import '../static/static.dart';
import '../utils/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, this.useAccount = false});

  final bool useAccount;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FocusNode phoneNode = FocusNode();
  final FocusNode vertifyCodeNode = FocusNode();
  final FocusNode passwordNode = FocusNode();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController vertifyCodeController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    setSystemStatusBarTransparentBlack();
  }

  void loginUseVertifyCode() async {}

  void loginUseAccountPwd() async {}

  void accountStatement() async {}

  void sendVertifyCode() async {}

  void findPwd() async {
    Get.toNamed(RoutePath.FIND_PWD_PAGE);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(top: 14.vx),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    backWidget(),
                    Visibility(
                        visible: !widget.useAccount,
                        child: Padding(
                          padding: EdgeInsets.only(right: 18.hx),
                          child: Text.rich(
                            TextSpan(
                                text: "不会填验证码?",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Routes.obj.jumpToTeachInputCode();
                                  }),
                            style: const TextStyle(color: Colors.blue),
                          ),
                        ))
                  ],
                ),
                28.vGap,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.hx),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "您好，请登录",
                        style: getTextStyle(
                            size: 16, isBold: true, color: Colors.black),
                      ),
                      12.vGap,
                      Visibility(
                          visible: !widget.useAccount,
                          child: Text(
                            "未注册的手机号登陆成功后将自动注册",
                            style: getTextStyle(size: 12, color: Colors.grey),
                          )),
                      30.vGap,
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
                      buildInputTwo(),
                      16.vGap,
                      Row(
                        children: [
                          SizedBox(
                            width: 8.hx,
                            height: 8.hx,
                            child:
                                Checkbox(value: false, onChanged: (isCheck) {}),
                          ),
                          6.hGap,
                          Text.rich(TextSpan(children: [
                            TextSpan(
                                text: "登陆即同意", style: getTextStyle(size: 10)),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.hx))),
                          child: Text(
                            "登陆",
                            style: getTextStyle(color: Colors.white),
                          ),
                        ),
                        onTap: () => loginUseVertifyCode(),
                      )
                    ],
                  ),
                ),
                12.vGap,
                buildInputBottom()
              ],
            ),
          ),
          Positioned(
              bottom: 20.vx,
              child: Text.rich(TextSpan(children: [
                TextSpan(
                    text: "如无法登陆，请点击",
                    style:
                        getTextStyle(size: 10, color: const Color(0xff999c9b))),
                TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Routes.obj.jumpFeedBack();
                      },
                    text: "账户申述",
                    style:
                        getTextStyle(size: 10, color: const Color(0xff313433))),
                TextSpan(
                    text: "申请客服协助",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => accountStatement(),
                    style:
                        getTextStyle(size: 10, color: const Color(0xff999c9b))),
              ])))
        ],
      )),
    );
  }

  Widget buildInputTwo() {
    var leftIcon = widget.useAccount ? ICON_PWD : ICON_VERTIFY;
    var inputNode = widget.useAccount ? passwordNode : vertifyCodeNode;
    var inputController =
        widget.useAccount ? pwdController : vertifyCodeController;
    var hintText = widget.useAccount ? "请输入密码" : "请输入验证码";
    return UnderLineWidget(
      paddingBottom: 8.vx,
      child: Row(
        children: [
          Image.asset(
            leftIcon,
            width: 14.hx,
            height: 14.hx,
          ),
          18.hGap,
          Expanded(
              child: getInputWidget(
                  hintText: hintText,
                  focusNode: inputNode,
                  controller: inputController,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done)),
          Visibility(
              visible: !widget.useAccount,
              child: Row(
                children: [
                  Container(
                    width: 1.5.hx,
                    height: 15.vx,
                    color: Colors.grey[300],
                  ),
                  CountDownWidget(
                    width: 60.hx,
                    hintText: "发送验证码",
                    seconds: 45,
                    runTask: () => sendVertifyCode(),
                  )
                ],
              ))
        ],
      ),
    );
  }

  Widget buildInputBottom() {
    return !widget.useAccount
        ? Row(
            children: [
              const Expanded(
                child: SizedBox(),
              ),
              Padding(
                padding: EdgeInsets.only(right: 18.hx),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(RoutePath.LOGIN_USE_PWD);
                  },
                  child: Text(
                    "手机号密码登陆",
                    style: getTextStyle(size: 10),
                  ),
                ),
              )
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18.hx),
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Text(
                    "手机号验证码登陆",
                    style: getTextStyle(size: 10),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 18.hx),
                child: GestureDetector(
                  onTap: () => findPwd(),
                  child: Text(
                    "忘记密码",
                    style: getTextStyle(size: 10),
                  ),
                ),
              )
            ],
          );
  }
}

class LoginController extends GetxController {
  void learnVetifyCodeVideo() {}
}
