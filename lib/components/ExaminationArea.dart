import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class BaseIcon extends CustomPainter {
  double side = 0;
  double rad = pi / 8;
  final Color bgColor;
  final double borderWidth; //边框长
  double textScaleFactor = 1;

  BaseIcon({required this.bgColor, this.borderWidth = 4, Listenable? repaint})
      : super(repaint: repaint) {}

  @override
  void paint(Canvas canvas, Size size) {
    side = size.width;
    canvas.translate(size.width / 2, size.height / 2);
    drawBorder(canvas, size);
    paintContent(canvas, size);
  }

  void drawBorder(Canvas canvas, Size size) {
    Paint outerBgPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.grey[300]!;
    Paint innerBgPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = bgColor;

    RRect outerRRect = RRect.fromRectAndRadius(
        Rect.fromCenter(
            center: Offset.zero, width: size.width, height: size.height),
        Radius.circular(size.width * 0.42));
    canvas.clipRRect(outerRRect);
    canvas.drawRRect(outerRRect, outerBgPaint);
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromCenter(
                center: Offset.zero,
                width: size.width - borderWidth,
                height: size.height - borderWidth),
            Radius.circular(size.width * 0.42)),
        innerBgPaint);
  }

  void drawComplexPath(Canvas canvas, Color color) {
    Paint complexPaint = Paint();
    complexPaint
      ..strokeWidth = 4
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round
      ..color = color;
    double dx = side / 2 * cos(rad);
    double dy = side / 2 * sin(rad);
    Path complexPath = Path();
    complexPath.moveTo(-dx, dy);
    // complexPath
    // complexPath.addArc(Rect.fromCenter(center: Offset.zero, width: side, height: side), rad, pi-2 * rad);
    // canvas.drawPoints(PointMode.points, [Offset(dx, dy)], complexPaint);
    complexPath.moveTo(-dx, dy);
    complexPath.quadraticBezierTo(
        -(dx - (side / 8)), dy + side * 0.1, -(dx - (side / 4)), dy);
    complexPath.quadraticBezierTo(0, side / 2 * 0.1, (dx - (side / 4)), dy);
    complexPath.quadraticBezierTo(dx - (side / 8), dy + side * 0.1, dx, dy);
    complexPath.addRect(Rect.fromLTWH(-dx, dy, 2.2 * dx, side / 2 - dy));
    complexPath.close();
    canvas.drawPath(complexPath, complexPaint);
  }

  void drawRulerText(Canvas canvas, String text, Color textColor) {
    TextPainter rulePaint = TextPainter(
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center,
        text: TextSpan(
            text: text,
            style: TextStyle(
                fontSize: (side / 100.w) * 22.sp,
                fontWeight: FontWeight.bold,
                color: textColor)));
    rulePaint.layout();
    rulePaint.paint(canvas, Offset(-rulePaint.width / 2, rulePaint.height / 2));
  }

  @override
  bool shouldRepaint(covariant BaseIcon oldDelegate) {
    return bgColor != oldDelegate.bgColor;
  }

  void paintContent(Canvas canvas, Size size);
}

class VipICon extends BaseIcon {
  VipICon() : super(bgColor: const Color(0xffe25570)); //边框长

  void drawSixRect(Canvas canvas, Size size) {
    canvas.save();
    canvas.translate(0, -6);
    Paint outerSixPaint = Paint()
      ..color = const Color(0xfffff7eb)
      ..style = PaintingStyle.fill
      ..strokeJoin = StrokeJoin.round;
    Paint innerSixPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeJoin = StrokeJoin.round
      ..strokeWidth = 4
      ..color = bgColor;
    canvas.save();
    canvas.rotate(pi / 2);
    canvas.drawPath(getSixPath(size.width * 0.36), outerSixPaint);
    canvas.drawPath(getSixPath(size.height * 0.3), innerSixPaint);
    canvas.restore();
    drawVipText(canvas, size);
    canvas.restore();
  }

  Path getSixPath(double radius) {
    Path sixSidePath = Path();
    for (int i = 1; i <= 6; i++) {
      var dy = radius * sin(pi / 3 * i);
      var dx = radius * cos(pi / 3 * i);
      // print("location: $dx - $dy");
      if (i == 1) {
        sixSidePath.moveTo(dx, dy);
      } else {
        sixSidePath.lineTo(dx, dy);
      }
    }
    sixSidePath.close();
    return sixSidePath;
  }

  void drawVipText(Canvas canvas, Size size) {
    TextPainter vip = TextPainter(
        text: TextSpan(
          text: "vip".toUpperCase(),
          style: TextStyle(
              fontSize: (size.width / 100.w) * 18.sp,
              color: bgColor,
              fontWeight: FontWeight.bold),
        ),
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr);
    vip.layout(maxWidth: size.width * 0.3);
    var vipSize = vip.size;
    vip.paint(canvas, Offset(-vipSize.width / 2, -vipSize.height / 2));
  }

  void drawTwoLine(Canvas canvas, Size size) {
    canvas.save();
    canvas.translate(-size.width / 6, -size.height / 4);
    Paint linePaint = Paint()
      ..color = const Color(0xfffbf3e1)
      ..style = PaintingStyle.fill;
    canvas.rotate(-pi / 16);
    canvas.drawRect(
        Rect.fromCenter(
            center: Offset.zero,
            width: size.width / 8,
            height: size.height / 2),
        linePaint);
    canvas.restore();
    canvas.save();
    canvas.translate(size.width / 6, -size.height / 4);
    canvas.rotate(pi / 16);
    canvas.drawRect(
        Rect.fromCenter(
            center: Offset.zero,
            width: size.width / 8,
            height: size.height / 2),
        linePaint);
    canvas.restore();
  }

  @override
  void paintContent(Canvas canvas, Size size) {
    drawTwoLine(canvas, size);
    drawSixRect(canvas, size);
  }
}

class Simple500Icon extends BaseIcon {
  Simple500Icon() : super(bgColor: const Color(0xfffd5537));

  Color dotColor = const Color(0xfff9fcee);

  @override
  void paintContent(Canvas canvas, Size size) {
    canvas.translate(0, size.height * 0.056);
    Paint dotPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = dotColor;
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromCenter(
                center: Offset.zero,
                width: size.width / 2,
                height: size.height / 2 * 0.7),
            const Radius.circular(6)),
        dotPaint);

    TextPainter textPainter = TextPainter(
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
        text: TextSpan(
            text: "500",
            style: TextStyle(
                color: const Color(0xffdd813f),
                fontWeight: FontWeight.bold,
                fontSize: (size.width / 100.w) * 22.sp)));
    textPainter.layout(maxWidth: size.width / 2);
    textPainter.paint(
        canvas, Offset(-textPainter.width / 2, -textPainter.height / 2));
    canvas.translate(0, -size.height * 0.1);

    dotPaint
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 6;
    Offset dotPos = Offset(0, -size.height / 4);
    canvas.drawPoints(PointMode.points, [dotPos], dotPaint);
    Path dotLinePath = Path()
      ..moveTo(-size.width / 6, 0)
      ..lineTo(dotPos.dx, dotPos.dy)
      ..lineTo(size.width / 6, 0);
    dotPaint.strokeWidth = 2;
    canvas.drawPath(dotLinePath, dotPaint);
    // Offset dot = Offset(dx, dy)
  }
}

class SpIcon extends BaseIcon {
  SpIcon() : super(bgColor: const Color(0xff0ca6ef));

  @override
  void paintContent(Canvas canvas, Size size) {
    Paint circlePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset.zero, size.width * 0.3, circlePaint);
    circlePaint.color = bgColor;
    canvas.drawCircle(Offset.zero, size.width * 0.2, circlePaint);
    circlePaint.color = Colors.white;
    canvas.drawCircle(Offset.zero, size.width * 0.1, circlePaint);
  }
}

class LiveBIcon extends BaseIcon {
  LiveBIcon() : super(bgColor: const Color(0xff01dfc9));

  @override
  void paintContent(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.white;

    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromCenter(
                center: Offset.zero, width: side / 2, height: side / 2),
            const Radius.circular(6)),
        paint);
    Path sjx = Path();
    sjx
      ..moveTo(side / 8, 0)
      ..lineTo(-side / 8, side / 8)
      ..lineTo(-side / 8, -side / 8)
      ..close();
    paint.color = bgColor;
    canvas.drawPath(sjx, paint);

    paint.color = const Color(0xffa5f5ed);
    Path rightSide = Path();
    rightSide
      ..relativeMoveTo(side / 4, -side * 0.1)
      ..relativeLineTo(side * 0.1, -side * 0.05)
      ..relativeLineTo(0, side * 0.3)
      ..relativeLineTo(-side * 0.1, -side * 0.05);
    canvas.drawPath(rightSide, paint);
  }
}

class CraftsmanshipIcon extends BaseIcon {
  CraftsmanshipIcon() : super(bgColor: const Color(0xff01dcc9));

  @override
  void paintContent(Canvas canvas, Size size) {
    drawLight(canvas);
    drawComplexPath(canvas, const Color(0xfff08575));
    drawRulerText(canvas, "推荐", Colors.white);
  }

  void drawLight(Canvas canvas) {
    canvas.save();
    canvas.translate(0, -side * 0.02);
    Paint lightPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4
      ..color = Colors.white
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(Offset(0, side / 6), Offset(0, -side / 6), lightPaint);
    canvas.drawArc(
        Rect.fromCenter(center: Offset.zero, width: side / 3, height: side / 3),
        -pi / 2,
        pi,
        false,
        lightPaint);
    canvas.translate(-side * 0.175, 0);
    canvas.save();
    canvas.rotate(-pi / 6);
    canvas.drawLine(
        Offset(-side * 0.075, 0), Offset(side * 0.075, 0), lightPaint);
    canvas.restore();
    canvas.translate(0, -side / 8);
    canvas.save();
    canvas.rotate(-pi / 6);
    canvas.drawLine(
        Offset(-side * 0.075, 0), Offset(side * 0.075, 0), lightPaint);
    canvas.restore();
    canvas.translate(0, side / 4);
    canvas.rotate(-pi / 6);
    canvas.drawLine(
        Offset(-side * 0.075, 0), Offset(side * 0.075, 0), lightPaint);
    canvas.restore();
  }
}

class RealMockIcon extends BaseIcon {
  RealMockIcon() : super(bgColor: const Color(0xfffa5f3e));

  @override
  void paintContent(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    canvas.translate(0, -side * 0.05);
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromCenter(
                center: Offset.zero, width: side / 2, height: side / 2),
            const Radius.circular(6)),
        paint);
    paint
      ..color = bgColor
      ..color = bgColor;
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromLTWH(-side * 0.2, -side * 0.2, side * 0.4, side * 0.34),
            const Radius.circular(6)),
        paint);
    paint
      ..color = bgColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;
    canvas.drawPoints(PointMode.points, [Offset(0, side * 0.2)], paint);
    paint
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..color = Colors.white
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(Offset(0, side / 4), Offset(0, side * 0.32), paint);
    canvas.drawLine(
        Offset(-side / 8, side * 0.32), Offset(side / 8, side * 0.32), paint);
  }
}

class KqmjIcon extends BaseIcon {
  KqmjIcon() : super(bgColor: const Color(0xfffd5837));

  @override
  void paintContent(Canvas canvas, Size size) {
    drawTop(canvas);
    drawComplexPath(canvas, const Color(0xfff0d952));
    drawRulerText(canvas, "必看", const Color(0xff966303));
  }

  void drawTop(Canvas canvas) {
    canvas.save();
    canvas.translate(0, -side * 0.04);
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromCenter(
                center: Offset.zero, width: side / 2, height: side / 2),
            const Radius.circular(6)),
        paint);
    paint
      ..style = PaintingStyle.stroke
      ..color = bgColor
      ..strokeWidth = 6
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    canvas.drawLine(Offset(-side * 0.08, -side * 0.15),
        Offset(side * 0.08, -side * 0.15), paint);
    paint.strokeWidth = 4;
    Path gou = Path()
      ..moveTo(-side / 10, 0)
      ..lineTo(0, side / 10)
      ..lineTo(side / 8, -side / 20);
    canvas.drawPath(gou, paint);
    canvas.restore();
  }
}

class CollectErrorICon extends BaseIcon {
  double angle = 2 * pi / 5;

  CollectErrorICon() : super(bgColor: const Color(0xff0caafe));

  @override
  void paintContent(Canvas canvas, Size size) {
    drawBg(canvas);
    drawWjx(canvas);
  }

  drawBg(Canvas canvas) {
    canvas.save();
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    Path outer = Path()
      ..moveTo(-side / 4, -side / 4)
      ..lineTo(side / 4, -side / 4)
      ..lineTo(side / 4, side / 4)
      ..lineTo(0, side / 8)
      ..lineTo(-side / 4, side / 4)
      ..close();
    canvas.translate(0, side * 0.05);
    canvas.drawPath(outer, paint);
    paint
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(
        Offset(-side * 0.28, -side / 4), Offset(side * 0.28, -side / 4), paint);
    canvas.restore();
  }

  drawWjx(Canvas canvas) {
    Paint paint = Paint()
      ..color = bgColor
      ..style = PaintingStyle.fill;
    canvas.save();
    canvas.rotate(3 * pi / 10);
    List<Offset> points = [];
    for (int i = 0; i < 5; i++) {
      double dx = side / 6 * cos(angle * (i - 1));
      double dy = side / 6 * sin(angle * (i - 1));
      points.add(Offset(dx, dy));
    }
    Path path = Path();
    path.moveTo(points[0].dx, points[0].dy);
    path.lineTo(points[3].dx, points[3].dy);
    path.lineTo(points[1].dx, points[1].dy);
    path.lineTo(points[4].dx, points[4].dy);
    path.lineTo(points[2].dx, points[2].dy);
    path.close();
    canvas.drawPath(path, paint);
    canvas.restore();
  }
}

class EndTimePainter extends CustomPainter {
  String endDay;

  EndTimePainter(this.endDay);

  double sjxW = 0.1;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.translate(size.width / 2, size.height / 2);
    drawShape(canvas, size);
    drawText(canvas, size);
  }

  drawShape(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTRB(
                -size.width / 2, -size.height / 2, 0, size.height / 2),
            topLeft: const Radius.circular(4),
            bottomLeft: const Radius.circular(4)),
        paint);
    Path path = Path();
    path
      ..moveTo(0, -size.height / 2)
      ..lineTo(size.width / 2 * 0.88, -size.height / 2)
      ..lineTo(size.width / 2, 0)
      ..lineTo(size.width / 2 * 0.88, size.height / 2)
      ..lineTo(0, size.height / 2)
      ..close();
    paint.color = const Color(0xFFEF9A9A);
    canvas.drawPath(path, paint);
    path
      ..reset()
      ..moveTo(0, -size.height / 4)
      ..addArc(
          Rect.fromCenter(
              center: Offset(size.height / 4, -size.height / 4),
              width: size.height / 2,
              height: size.height / 2),
          pi,
          pi / 2)
      ..lineTo(0, -size.height / 2)
      ..close();
    canvas.drawPath(path, paint..color = Colors.red);
    path
      ..reset()
      ..moveTo(0, size.height / 4)
      ..addArc(
          Rect.fromCenter(
              center: Offset(-size.height / 4, size.height / 4),
              width: size.height / 2,
              height: size.height / 2),
          0,
          pi / 2)
      ..lineTo(0, size.height / 2)
      ..close();
    canvas.drawPath(path, paint..color = const Color(0xFFEF9A9A));
  }

  void drawText(Canvas canvas, Size size) {
    TextPainter leftPainter = TextPainter(
        textScaleFactor: 1,
        text: TextSpan(
            text: "距结束",
            style: TextStyle(
              color: Colors.white,
              fontSize: 6.sp,
            )),
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr);
    leftPainter.layout(maxWidth: size.width * 0.4);
    leftPainter.paint(
        canvas,
        Offset(-(size.width / 4 + leftPainter.width / 2),
            -leftPainter.height / 2));
    leftPainter
      ..text = TextSpan(
          text: endDay, style: TextStyle(color: Colors.red, fontSize: 6.sp))
      ..layout()
      ..textScaleFactor = size.width * 0.4 / leftPainter.width
      ..layout()
      ..paint(
          canvas,
          Offset(
              size.width / 4 - leftPainter.width / 2, -leftPainter.height / 2));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    var old = oldDelegate as EndTimePainter;
    return endDay != old.endDay;
  }
}

class K2VipWidget extends StatefulWidget {
  const K2VipWidget({super.key, required this.size});

  final Size size;

  @override
  State<K2VipWidget> createState() => _K2VipWidgetState();
}

class _K2VipWidgetState extends State<K2VipWidget>
    with TickerProviderStateMixin {
  late AnimationController rotateAngle;
  late AnimationController scaleFactory;
  late AnimationController translate;

  late Timer timer;

  @override
  void initState() {
    super.initState();
    rotateAngle = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1),
        lowerBound: 0,
        upperBound: 360);
    scaleFactory = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 200),
        reverseDuration: const Duration(milliseconds: 500),
        lowerBound: 0,
        upperBound: 1.2);
    translate = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 500),
        lowerBound: 0.05,
        upperBound: 0.35);
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      startAnimation();
    });
  }

  @override
  void dispose() {
    timer.cancel();
    rotateAngle.dispose();
    scaleFactory.dispose();
    translate.dispose();
    super.dispose();
  }

  void startAnimation() async {
    try {
      rotateAngle.reset();
      await rotateAngle.forward().orCancel;
      scaleFactory.reset();
      await scaleFactory.forward(from: 1).orCancel;
      await Future.delayed(const Duration(milliseconds: 200));
      await scaleFactory.reverse(from: 1.2).orCancel;
      translate.reset();
      await translate.forward().orCancel;
    } on TickerCanceled {
      print("cancel");
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => startAnimation(),
      child: CustomPaint(
        size: widget.size,
        painter: Ke2VipGif(
            angle: rotateAngle, scale: scaleFactory, translate: translate),
      ),
    );
  }
}

class Ke2VipGif extends BaseIcon {
  final Animation<double>? angle;
  final Animation<double>? scale;
  final AnimationController? translate;

  double yhCenter = 0;
  double yhLength = 0;

  Paint line = Paint()
    ..color = const Color(0xFFEF9A9A)
    ..strokeWidth = 1;

  Ke2VipGif({this.angle, this.scale, this.translate})
      : super(
            bgColor: const Color(0xffe25570),
            repaint: Listenable.merge([angle, scale, translate])) {
    yhCenter = (translate!.lowerBound + translate!.upperBound) / 2;
    yhLength = (translate!.upperBound - translate!.lowerBound);
  }

  @override
  void paintContent(Canvas canvas, Size size) {
    drawCenter(canvas, size);
    drawYh(canvas);
  }

  drawCenter(Canvas canvas, Size size) {
    canvas.save();
    Matrix4 matrix4 = Matrix4.identity()..rotateY(angle!.value * pi / 180);
    canvas.transform(matrix4.storage);
    if (angle!.isCompleted) {
      canvas.scale(scale!.value, scale!.value);
    }
    Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xFFEF9A9A);
    Path path = Path()
      ..moveTo(-side / 4, -side / 4)
      ..lineTo(side / 4, -side / 4)
      ..lineTo(side * 0.35, 0)
      ..lineTo(0, side * 0.35)
      ..lineTo(-side * 0.35, 0)
      ..close();
    canvas.drawPath(path, paint);
    drawVipText(canvas);
    canvas.restore();
  }

  void drawVipText(Canvas canvas) {
    TextPainter textPainter = TextPainter(
        textAlign: TextAlign.center,
        textScaleFactor: textScaleFactor,
        textDirection: TextDirection.ltr,
        text: TextSpan(
            text: "VIP", style: TextStyle(fontSize: 12.sp, color: bgColor)));
    textPainter.layout();
    textPainter.textScaleFactor = (side / 2) / textPainter.width;
    textPainter.layout();
    textPainter.paint(
        canvas, Offset(-textPainter.width / 2, -textPainter.height / 2));
  }

  drawYh(Canvas canvas) {
    if (translate!.status == AnimationStatus.forward) {
      double start = translate!.value;
      double total = 6; //烟花长度
      double current = 0;
      if (start < yhCenter) {
        current = start * 2 / yhLength;
      } else {
        current = (translate!.upperBound - start) * 2 / yhLength;
      }

      canvas.save();
      for (int i = 0; i < 8; i++) {
        var rad = pi / 4 * i;
        if (rad > 0) {
          canvas.rotate(rad);
        }
        canvas.drawLine(Offset(0, start * side),
            Offset(0, start * side + (current * total)), line);
      }
      canvas.restore();
    }
  }
}
