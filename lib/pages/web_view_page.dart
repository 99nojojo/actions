import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_actions/components/components.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
// Import for iOS features.
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage(
      {super.key,
      required this.url,
      this.showVideo = false,
      required this.title,
      this.backListener});

  final Uri url;
  final bool showVideo;
  final String title;
  final Future<bool?> Function()? backListener;

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late WebViewController _controller;
  late PlatformWebViewControllerCreationParams params;
  final BehaviorSubject<int> progressController = BehaviorSubject.seeded(0);
  final BehaviorSubject<bool> loadComplete = BehaviorSubject.seeded(false);
  final BehaviorSubject<int> opacityController = BehaviorSubject.seeded(0);

  @override
  void initState() {
    super.initState();
    setSystemStatusBarTransparentBlack();
    initParams();
    initController();
    loadWeb();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      opacityController.add(1);
    });
  }

  void initParams() {
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }
  }

  void initController() {
    _controller = WebViewController.fromPlatformCreationParams(params);
    _controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.white)
      ..setNavigationDelegate(NavigationDelegate(onProgress: (progress) {
        progressController.add(progress);
      }, onPageFinished: (_) {
        loadComplete.add(true);
      }))
      ..addJavaScriptChannel(
        'Toaster',
        onMessageReceived: (JavaScriptMessage message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        },
      );
    if (_controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
      (_controller.platform as AndroidWebViewController)
          .setMediaPlaybackRequiresUserGesture(false);
    }
  }

  void loadWeb() {
    _controller.loadRequest(widget.url);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.clearCache();
  }

  Widget _buildTitle() {
    return StreamBuilder(
        initialData: opacityController.value,
        stream: opacityController.stream,
        builder: (_, state) {
          return AnimatedOpacity(
            opacity: state.data!.toDouble(),
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeIn,
            child: Text(
              widget.title,
              style: getTextStyle(size: 13),
            ),
          );
        });
  }

  Widget buildProgress() {
    return StreamBuilder(
        initialData: loadComplete.value,
        stream: loadComplete.stream,
        builder: (_, snaptShopt) {
          return Visibility(
              visible: !snaptShopt.data!,
              child: StreamBuilder<int>(
                initialData: progressController.value,
                stream: progressController.stream,
                builder: (_, snaptShopt) {
                  return SizedBox(
                    height: 1.vx,
                    child: LinearProgressIndicator(
                      value: snaptShopt.data!.toDouble(),
                      color: Colors.blue,
                    ),
                  );
                },
              ));
        });
  }

  Widget buildWebView() {
    var webView = WebViewWidget(controller: _controller);
    return widget.showVideo
        ? Container(
            padding: EdgeInsets.only(top: 20.vx),
            child: webView,
          )
        : webView;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        leading: backWidget(onTap: () {
          _controller.canGoBack().then((value) {
            if (value) {
              _controller.goBack();
            } else {
              var backCondition = widget.backListener;
              if (backCondition != null) {
                backCondition.call().then((result) {
                  if (result ?? false) {
                    Future.delayed(const Duration(milliseconds: 350), () {
                      Get.back();
                    });
                  }
                });
              } else {
                Get.back();
              }
            }
          });
        }),
        actions: [],
        backgroundColor: Colors.white,
        centerTitle: true,
        title: _buildTitle(),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          buildProgress(),
          Expanded(
            child: buildWebView(),
          )
        ],
      ),
    );
  }
}
