


import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_actions/utils/utils.dart';

class DianPingWidget extends StatelessWidget {

  final String tag;
  final int score;
  const DianPingWidget({super.key, required this.tag, required this.score});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomPaint(
          size:  Size(34.hx,34.hx),
          painter: DianPingIcon(score) ,
        ),
        2.vGap,
        Text(tag,style: getTextStyle(size: 8),)
      ],
    );
  }
}


class DianPingIcon extends CustomPainter{

  final int pecent;
  final double rad = pi/3;//裂口的角度

  DianPingIcon(this.pecent);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..style = PaintingStyle.stroke..strokeWidth=3
      ..color = const Color(0xff01a8ff);
    canvas.translate(size.width/2, size.height/2);
    canvas.drawArc(Rect.fromCenter(center: Offset.zero, width: size.width, height: size.height),
        pi/2 + rad/2, 2 * pi - rad, false, paint);
    TextPainter textPainter = TextPainter(
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
        text: TextSpan(text: "$pecent%",style: getTextStyle(
            color: const Color(0xff01a8ff),
            size: 12,isBold: true
        )));
    textPainter.layout();
    textPainter.paint(canvas, Offset(-textPainter.width/2, -textPainter.height/2));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}

abstract class SchoolIcon extends CustomPainter{

  final ValueNotifier<bool> showBg;
  final Paint _paint = Paint();
  double radius=0;
  SchoolIcon(this.showBg):super(repaint: showBg);

  @override
  void paint(Canvas canvas, Size size) {
    radius = size.width/2;
    var bgColor = showBg.value?const Color(0xff848791).withOpacity(0.9):Colors.transparent;
      _paint..style =PaintingStyle.fill..color =bgColor ;
      canvas.translate(radius, radius);
      canvas.drawCircle(Offset.zero,radius, _paint);
     _paint..style = PaintingStyle.stroke ..strokeWidth=2 ..color=Colors.white..strokeCap=StrokeCap.round;
     paintContent(canvas, size);
  }
  void paintContent(Canvas canvas, Size size);

  @override
  bool shouldRepaint(covariant SchoolIcon oldDelegate) {
    return showBg!=oldDelegate.showBg;
  }
}

class LeftArrowIcon extends SchoolIcon{

  LeftArrowIcon(ValueNotifier<bool>showBg):super(showBg);

  @override
  void paintContent(Canvas canvas, Size size) {
     Path path = Path()..moveTo(radius/2, 0)..lineTo(-radius/2, 0)..lineTo(0, -radius/2)
     ..moveTo(-radius/2, 0)..lineTo(0,radius/2);
     canvas.drawPath(path, _paint);
  }
}

class CollectIcon extends SchoolIcon{

  double angle = 2 * pi / 5;
  CollectIcon(ValueNotifier<bool>showBg):super(showBg);

  @override
  void paintContent(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    canvas.save();
    canvas.rotate(3 * pi / 10);
    List<Offset> points = [];
    for (int i = 0; i < 5; i++) {
      double dx = radius * 0.6 * cos(angle * (i - 1));
      double dy = radius * 0.6 * sin(angle * (i - 1));
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



class ShareIcon extends SchoolIcon{
  ShareIcon(ValueNotifier<bool>showBg):super(showBg);

  @override
  void paintContent(Canvas canvas, Size size) {
    _paint.strokeWidth=1.5;
    Path path = Path()..moveTo(0, -radius/2)
    ..lineTo(-radius/2, -radius/2)..lineTo(-radius/2, radius/2)
    ..lineTo(radius/2, radius/2)..lineTo(radius/2, 0);
    canvas.drawPath(path, _paint..strokeJoin = StrokeJoin.round);
    path.reset();
    path..moveTo(-radius/4, radius/4)..quadraticBezierTo(
        -radius/10,-radius/5,
        radius * 0.55,-radius/2);
    canvas.drawPath(path, _paint);
    path.reset();
    path..moveTo(radius * 0.55,-radius/2)..relativeLineTo(-radius/2 * 0.7, -radius/4*0.6)
    ..moveTo(radius * 0.55,-radius/2)..relativeLineTo(-radius/4 * 0.6, radius/2*0.7);
    canvas.drawPath(path, _paint);
  }
}

class SettingIcon extends SchoolIcon{
  SettingIcon(ValueNotifier<bool>showBg):super(showBg);

  @override
  void paintContent(Canvas canvas, Size size) {
     canvas.drawPoints(PointMode.points, [
        Offset(-radius/2, 0),
       const Offset(0, 0),
        Offset(radius/2, 0)
     ], _paint..strokeWidth=3);
  }
}

class RzIcon extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth=1.5;
    var radius = size.width/2;
    canvas.translate(radius, radius);
    canvas.drawCircle(Offset.zero,( size.width -3)/2, paint);
    canvas.translate(0, radius * 0.3);
    Path path = Path()
      ..moveTo(-radius/2, -radius/2)
      ..lineTo(0, 0)..lineTo(radius * cos(pi/4), -radius * sin(pi/4));
    canvas.drawPath(path, paint..strokeWidth=2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}