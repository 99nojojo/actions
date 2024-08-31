import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension doublePx on num {
  double get hpx {
    var screenWidth = ScreenUtil().screenWidth;
    return 0;
  }

  double get hx => ScreenUtil().setWidth(this);
  double get vx => ScreenUtil().setHeight(this);
  Widget get hGap => SizedBox(
        width: hx,
      );
  Widget get vGap => SizedBox(
        height: vx,
      );
  Widget get hGapSliver => SliverToBoxAdapter(
          child: SizedBox(
        width: hx,
      ));
  Widget get vGapSliver => SliverToBoxAdapter(
          child: SizedBox(
        height: vx,
      ));
}
