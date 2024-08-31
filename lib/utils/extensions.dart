import 'package:flutter/material.dart';

import '../components/components.dart';

extension UnicodeConvert on String {
  String get toUnicode {
    return Uri.encodeComponent(this);
  }

  String get toCn {
    return Uri.decodeComponent(this);
  }
}

extension ListUtils<T> on List<T>? {
  List<T> get data {
    var list = this;
    var elements = <T>[];
    if (list != null && list.isNotEmpty) {
      list.forEach((element) {
        elements.add(element);
      });
    }
    return elements;
  }
}

extension BuildContextExt on BuildContext {
  /// 获取当前组件的 RenderBox
  RenderBox? renderBox() {
    return findRenderObject() is RenderBox
        ? (findRenderObject() as RenderBox)
        : null;
  }

  /// 获取当前组件的 position
  Offset? position({Offset offset = Offset.zero,RenderObject? ancestor}) {
    return renderBox()?.localToGlobal(offset,ancestor: ancestor);
  }
}

extension GlobalKeyExt on GlobalKey {
  /// 获取当前组件的 RenderBox
  RenderBox? renderBox() => currentContext?.renderBox();

  /// 获取当前组件的 position
  Offset? position({Offset offset = Offset.zero}) =>
      currentContext?.position(offset: offset);

  /// 获取当前组件的 Size
  Size? get size => currentContext?.size;
}

extension RenderAfterLayoutExt on RenderAfterLayout {

  /// 获取当前组件的 在currentContext所在容器中的左上角坐标
  Offset? position(BuildContext currentContext,
          {Offset offset = Offset.zero}) =>
      localToGlobal(offset,ancestor: currentContext.findRenderObject());
}
