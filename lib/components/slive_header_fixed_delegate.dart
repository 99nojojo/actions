import 'package:flutter/cupertino.dart';

class SliverHeaderFixedDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double minHeight;
  final double maxHeight;

  SliverHeaderFixedDelegate({
    required this.child,
    this.minHeight = 60,
    this.maxHeight = 120,
  });

  SliverHeaderFixedDelegate.fixed({required this.child, double height = 96})
      : minHeight = height,
        maxHeight = height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return oldDelegate.minExtent != minExtent ||
        oldDelegate.maxExtent != maxExtent;
  }
}
