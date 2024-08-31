import 'package:flutter/material.dart';
import 'package:flutter_actions/utils/utils.dart';

class ImageListTitle extends StatelessWidget {
  const ImageListTitle(
      {super.key,
      required this.imageHeight,
      this.magin = 0,
      this.isCircle = false,
      required this.imageUrl,
      required this.size,
      this.titleContentSpace = 6,
      this.title = const SizedBox.shrink(),
      this.subTitle = const SizedBox.shrink()});

  final double imageHeight;
  final double magin;
  final bool isCircle;
  final String imageUrl;
  final double size;
  final double titleContentSpace;
  final Widget title;
  final Widget subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(magin),
      height: imageHeight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          getCacheNetImage(imageUrl,
              width: size, height: size, isCircle: isCircle),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [title, subTitle],
          )
        ],
      ),
    );
  }
}
