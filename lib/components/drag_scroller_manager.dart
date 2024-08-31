import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DragManagerWidget extends StatefulWidget {
  DragManagerWidget(
      {super.key,
      required this.innerHeight,
      this.indexBuilder,
      required this.outerController});

  final double innerHeight; //内层滚动视图高度
  NullableIndexedWidgetBuilder? indexBuilder;
  PageController? outerController; //外层滚动控制器

  @override
  State<DragManagerWidget> createState() => _DragManagerWidgetState();
}

class _DragManagerWidgetState extends State<DragManagerWidget> {
  void _handleDragStart(DragStartDetails details) {
    innerDrag = innerController.position.drag(details, () {});
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    innerDrag?.update(details);
  }

  void _handleDragEnd(DragEndDetails details) {
    innerDrag?.end(details);
  }

  void _handleDragCancel() {
    innerDrag?.cancel();
  }

  late PageController innerController;

  Drag? innerDrag;

  @override
  void initState() {
    super.initState();
    innerController = PageController();
  }

  @override
  void dispose() {
    innerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.innerHeight,
      child: Stack(
        children: [
          GestureDetector(
              onHorizontalDragStart: _handleDragStart,
              onHorizontalDragUpdate: _handleDragUpdate,
              onHorizontalDragEnd: _handleDragEnd,
              onHorizontalDragCancel: _handleDragCancel,
              excludeFromSemantics: true,
              child: Container(
                height: widget.innerHeight,
              )),
          Positioned(
              top: 0, left: 0, right: 0, bottom: 0, child: innerPageView()),
        ],
      ),
    );
  }

  Widget innerPageView() {
    return PageView.builder(
        controller: innerController,
        physics: const ClampingScrollPhysics(),
        itemBuilder: widget.indexBuilder!);
  }
}
