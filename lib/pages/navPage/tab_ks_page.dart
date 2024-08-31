import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_actions/components/components.dart';
import 'package:flutter_actions/utils/utils.dart';

class TabKsPage extends StatefulWidget {
  const TabKsPage({super.key});

  @override
  State<TabKsPage> createState() => _TabMcPageState();
}

class _TabMcPageState extends State<TabKsPage> {
  @override
  void initState() {
    super.initState();
    setSystemStatusBarTransparentBlack();
  }

  Widget getIcon(String title, CustomPainter painter) {
    CustomScrollView s;
    return Padding(
      padding: EdgeInsets.only(top: 18.h, left: 18.w, right: 18.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomPaint(
            size: Size(36.w, 36.w),
            painter: painter,
          ),
          8.hGap,
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.grey),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Map<String, CustomPainter> titleIcons = {
      "VIP课程": VipICon(),
      "专项练习": SpIcon(),
      "图标技巧": CraftsmanshipIcon(),
      "考前秘卷": KqmjIcon(),
      "精简500题": Simple500Icon(),
      "直播课": LiveBIcon(),
      "真实考场模拟": RealMockIcon(),
      "错题-收藏": CollectErrorICon(),
    };
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(4, (index) {
                return getIcon(titleIcons.keys.elementAt(index),
                    titleIcons.values.elementAt(index));
              }),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const DialPlateWidget(),
                30.vGap,
                // CustomPaint(
                //   size: Size(56.w, 10.h),
                //   painter: EndTimePainter("3"),
                // ),
                // 30.vGap,
                K2VipWidget(
                  size: Size(50.w, 50.w),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(4, (index) {
                return getIcon(titleIcons.keys.elementAt(index + 4),
                    titleIcons.values.elementAt(index + 4));
              }),
            )
          ],
        ),
      ),
    );
  }
}

class DialPlateWidget extends StatefulWidget {
  const DialPlateWidget({super.key});

  @override
  State<DialPlateWidget> createState() => _DialPlateWidgetState();
}

class _DialPlateWidgetState extends State<DialPlateWidget>
    with SingleTickerProviderStateMixin {
  late Animation<double> location;
  late Animation<double> scale;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    scale = Tween<double>(begin: 1, end: 1.2).animate(CurvedAnimation(
        parent: controller,
        curve: const Interval(0.0, 0.4, curve: Curves.ease)));
    location = Tween<double>(begin: 0, end: 360).animate(CurvedAnimation(
        parent: controller, curve: const Interval(0.4, 1, curve: Curves.ease)));
  }

  void startRotate() {
    controller.repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => startRotate(),
      child: RepaintBoundary(
        child: CustomPaint(
          size: Size(100.w, 100.w),
          painter: DialPlate(location, scale),
        ),
      ),
    );
  }
}

class DialPlate extends CustomPainter {
  double radius = 100;
  double count = 51;
  double sRad = 10;

  final Animation<double> location;
  final Animation<double> scale;

  DialPlate(this.location, this.scale)
      : super(repaint: Listenable.merge([location, scale]));

  @override
  void paint(Canvas canvas, Size size) {
    canvas.translate(size.width / 2, size.height / 2);
    if (!location.isCompleted) {
      canvas.scale(scale.value, scale.value);
    }
    // if (location.value == 0) return;
    canvas.rotate(-pi / 2);
    Paint paint = Paint()
      ..color = const Color(0xff006a70)
      ..strokeWidth = sRad
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    Path path = Path();
    path.addOval(Rect.fromCenter(
        center: Offset.zero,
        width: size.width - sRad,
        height: size.height - sRad));
    PathMetrics metrics = path.computeMetrics();
    canvas.drawPath(path, paint);
    for (var pm in metrics) {
      Tangent? tangent =
          pm.getTangentForOffset(pm.length * (location.value / 360));
      if (tangent == null) continue;
      paint
        ..color = const Color(0xff399bff)
        ..strokeWidth = sRad / 2;
      canvas.drawPoints(PointMode.points, [tangent.position], paint);
    }
    drawScale(canvas, size);
    drawCircle(canvas, size);
  }

  void drawScale(Canvas canvas, Size size) {
    canvas.save();
    Paint paint = Paint()
      ..strokeWidth = 1
      ..color = Colors.white54
      ..style = PaintingStyle.stroke;
    double dotRad = (2 * pi) / (count - 1);
    Offset start = Offset(0, size.height / 2 - sRad);
    Offset end = Offset(0, size.height / 2);
    canvas.drawLine(start, end, paint);
    for (int i = 1; i < count; i++) {
      canvas.rotate(dotRad);
      canvas.drawLine(start, end, paint);
    }
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  void drawCircle(Canvas canvas, Size size) {}
}
