import 'dart:convert';

abstract class Convert {
  /// 对中文参数编码
  ///
  /// fluro 传递中文参数前，先转换，fluro 不支持中文传递
  static String cnParamsEncode(String originalCn) {
    StringBuffer sb = StringBuffer();
    var encoded =
        const Utf8Encoder().convert(originalCn); // utf8 编码，会生成一个 int 列表
    encoded.forEach((val) => sb.write('$val,')); // 将 int 列表重新转换成字符串
    return sb.toString().substring(0, sb.length - 1).toString();
  }

  /// 对中文参数解码
  ///
  /// fluro 传递后取出参数，解析
  static String cnParamsDecode(String encodedCn) {
    var decoded =
        encodedCn.split('[').last.split(']').first.split(','); // 对参数字符串分割
    var list = <int>[];
    decoded.forEach((s) => list.add(int.parse(s.trim()))); // 转回 int 列表
    return const Utf8Decoder().convert(list); // 解码
  }
}
