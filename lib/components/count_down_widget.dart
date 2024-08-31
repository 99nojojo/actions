import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_actions/utils/utils.dart';
import 'package:rxdart/rxdart.dart';

class CountDownWidget extends StatefulWidget {
  const CountDownWidget(
      {super.key,
      required this.width,
      this.hintText = "",
      this.seconds = 60,
      this.runTask});

  final double width;
  final String hintText;
  final int seconds;
  final Function()? runTask;

  @override
  State<CountDownWidget> createState() => _CountDownWidgetState();
}

class _CountDownWidgetState extends State<CountDownWidget> {
  final BehaviorSubject<bool> countDownController =
      BehaviorSubject.seeded(false);
  final BehaviorSubject<int> currentTime = BehaviorSubject.seeded(0);

  Timer? timer;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      child: StreamBuilder<bool>(
        initialData: countDownController.value,
        stream: countDownController.stream,
        builder: (context, snapshot) {
          if (!snapshot.data!) {
            return GestureDetector(
              child: Center(
                child: Text(
                  widget.hintText,
                  style: getTextStyle(
                      color: const Color(0xff02a3f8), isBold: true, size: 10),
                ),
              ),
              onTap: () => reStartCountDown(),
            );
          } else {
            return StreamBuilder<int>(
                initialData: currentTime.value,
                stream: currentTime.stream,
                builder: (_, snapshot) {
                  return Center(
                    child: Text(
                      "${snapshot.data}",
                      style: getTextStyle(
                          color: const Color(0xff02a3f8), isBold: true),
                    ),
                  );
                });
          }
        },
      ),
    );
  }

  void reStartCountDown() async {
    countDownController.add(true);
    currentTime.add(60);
    startTimer();
    widget.runTask?.call();
  }

  void startTimer() async {
    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      int lastTime = currentTime.value - 1;
      if (lastTime > 0) {
        currentTime.add(lastTime);
      } else {
        countDownController.add(false);
        timer.cancel();
      }
    });
  }
}
