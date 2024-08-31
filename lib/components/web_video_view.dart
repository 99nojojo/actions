import 'package:chewie/chewie.dart' hide MaterialControls;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';

// Import for iOS features.
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

import 'components.dart';

class VideoWebView extends StatefulWidget {
  const VideoWebView(
      {super.key, this.height = double.infinity, required this.videoUrl});

  final double height;
  final String videoUrl;

  @override
  State<VideoWebView> createState() => _VideoWebViewState();
}

class _VideoWebViewState extends State<VideoWebView> {
  late WebViewController _controller;
  late PlatformWebViewControllerCreationParams params;

  @override
  void initState() {
    super.initState();
    initParams();
    initController();
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
      ..setBackgroundColor(Colors.white)
      ..setJavaScriptMode(JavaScriptMode.disabled);
    if (_controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
      (_controller.platform as AndroidWebViewController)
          .setMediaPlaybackRequiresUserGesture(false);
    }
    _controller.loadRequest(Uri.parse(widget.videoUrl));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: WebViewWidget(controller: _controller),
    );
  }
}

class VideoView extends StatefulWidget {
  VideoView(
      {super.key,
      required this.videoUrl,
      this.controllerViewShow,
      this.height = double.infinity,
      this.autoPlay = true,
      this.loop = true,
      this.showControls = true,
      this.allowMute = false,
      this.isLandscapeVideo = true,
      this.keepAlive = true});

  final String videoUrl;
  final double height;
  final bool autoPlay;
  ControllerViewShow? controllerViewShow;
  final bool loop;
  final bool keepAlive;
  final bool showControls;
  final bool allowMute; //设置静音
  final bool isLandscapeVideo; //全屏后是否是横屏
  static GlobalKey<MaterialControlsState>? controllerViewKey = GlobalKey();

  @override
  State<VideoView> createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView>
    with AutomaticKeepAliveClientMixin {
  VideoPlayerController? _videoPlayerController;
  ChewieController? _chewieController;

  bool flag = true; //表示播放器是否显示

  @override
  void initState() {
    super.initState();
    print("videoUrl: ${widget.videoUrl}");
    initializaePlayer();
  }

  @override
  void dispose() {
    print("dispose video");
    _videoPlayerController?.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  void onVisibilityChanged(VisibilityInfo info) {
    var newFlag = info.visibleFraction > 0.6;
    if (flag == newFlag) return;
    if (newFlag) {
      _videoPlayerController?.play();
    } else {
      _videoPlayerController?.pause();
    }
    flag = newFlag;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SizedBox(
      height: widget.height,
      child: _chewieController == null
          ? const SizedBox.shrink()
          : VisibilityDetector(
              key: const Key("VideoView"),
              onVisibilityChanged: onVisibilityChanged,
              child: Chewie(
                  // key: videoGkey,
                  controller: _chewieController!),
            ),
    );
  }

  Future<void> initializaePlayer() async {
    print("initializaePlayer");
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl))
          ..setVolume(widget.allowMute ? 0 : 1);
    List<DeviceOrientation> orientationsOnEnterFullScreen = widget
            .isLandscapeVideo
        ? [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]
        : [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp];
    await _videoPlayerController?.initialize();
    _chewieController = ChewieController(
        showControls: widget.showControls,
        deviceOrientationsAfterFullScreen: orientationsOnEnterFullScreen,
        deviceOrientationsOnEnterFullScreen: orientationsOnEnterFullScreen,
        videoPlayerController: _videoPlayerController!,
        looping: widget.loop,
        allowMuting: true,
        customControls: MaterialControls(
          controllerViewShow: widget.controllerViewShow,
        ),
        autoPlay: widget.autoPlay);
    setState(() {});
  }

  @override
  bool get wantKeepAlive => widget.keepAlive;
}

// videoPlayerController	     视频的控制器
// autoInitialize	             在启动时初始化视频。 这将准备播放视频。
// startAt	                     在特定位置开始播放视频
// autoPlay	             显示视频后立即播放
// looping	                     视频是否应循环播放
// showControlsOnInitialize     初始化小部件时是否显示控件。
// showControls	             是否完全显示控件
// customControls	             定义自定义控件
// errorBuilder	             当视频播放出现错误时，您可以构建自定义
// aspectRatio	             视频的宽高比。 重要的是要获得正确的尺寸，将回退到适合的空间内。
// cupertinoProgressColors	     用于iOS控件的颜色。 默认情况下，iOS播放器使用，从原始iOS 11设计中采样的颜色。
// materialProgressColors	     物料进度条要使用的颜色。 默认情况下，材质 播放器使用主题中的颜色。
// placeholder	             初始化之前，占位符显示在视频下方
// overlay	                     在视频和控件之间放置的小部件
// fullScreenByDefault	     定义按下播放器时播放器是否以全屏启动
// allowedScreenSleep	     定义播放器是否全屏睡眠
// allowFullScreen	             定义是否应显示全屏控件
// isLive	                     定义控件是否应用于实时流视频
// allowMuting	             定义是否应显示静音控件
// systemOverlaysAfterFullScreen	        定义退出全屏后可见的系统覆盖
// deviceOrientationsAfterFullScreen	退出全屏后定义一组允许的设备方向
// routePageBuilder	                为全屏定义自定义RoutePageBuilder
