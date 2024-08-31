import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  final Color lineColor;
  final double lineStrokeWidth;
  final double paddingLeft;
  final double paddingRight;

  const LinePainter(
      {this.lineColor = Colors.grey,
      this.lineStrokeWidth = 0.5,
      this.paddingLeft = 0,
      this.paddingRight = 0});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = lineColor;
    paint.strokeWidth = lineStrokeWidth;
    canvas.drawLine(Offset(paddingLeft, size.height),
        Offset(size.width - paddingRight, size.height), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

//可以左右下边距的下划线
class UnderLineContainer extends StatelessWidget {
  const UnderLineContainer(
      {super.key,
      this.lineColor = Colors.grey,
      this.lineStrokeWidth = 0.5,
      this.child,
      this.paddingBottom = 0,
      this.paddingLeft = 0,
      this.paddingRight = 0});

  final Color lineColor;
  final double lineStrokeWidth;
  final double paddingBottom;
  final double paddingLeft;
  final double paddingRight;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LinePainter(
          lineColor: lineColor,
          lineStrokeWidth: lineStrokeWidth,
          paddingLeft: paddingLeft,
          paddingRight: paddingRight),
      child: Container(
        padding: EdgeInsets.only(bottom: paddingBottom),
        child: child,
      ),
    );
  }
}

//只能设置下边距的下划线
class UnderLineWidget extends StatelessWidget {
  const UnderLineWidget(
      {super.key,
      this.lineColor = Colors.grey,
      this.lineStrokeWidth = 0.5,
      this.paddingBottom = 0,
      required this.child});

  final Color lineColor;
  final double lineStrokeWidth;
  final double paddingBottom;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: paddingBottom),
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(color: lineColor, width: lineStrokeWidth)),
      ),
      child: child,
    );
  }
}
