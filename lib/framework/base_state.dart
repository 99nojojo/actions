import 'package:flutter/material.dart';
import 'package:flutter_actions/components/after_layout.dart';
import 'package:flutter_actions/components/common_layout.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  bool showLoad = true;

  @protected
  Widget? get loadWidget => null;

  @override
  void initState() {
    super.initState();
    showLoad = loadWidget != null;
    Future.delayed(Duration.zero, () {
      var route = ModalRoute.of(context);
      route?.animation?.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          onResume();
        }
      });
    });
  }

  void onResume();

  @override
  Widget build(BuildContext context) {
    var bodyWidget = bodyLayout(context);
    bodyWidget = AfterLayout(
      callback: (box) {
        Future.delayed(const Duration(seconds: 2), () {
          setState(() {
            showLoad = false;
          });
        });
      },
      child: bodyWidget,
    );
    if (loadWidget != null) {
      return LoadingContainer(
          loadView: loadWidget!, show: showLoad,
          child: bodyWidget);
    } else {
      return bodyWidget;
    }
  }

  // Widget? loadView() {
  //   return null;
  // }

  Widget bodyLayout(BuildContext context);
}
