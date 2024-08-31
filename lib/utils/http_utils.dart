import '../static/static.dart';

class NetUrl {
  static Uri addParamToUrl(String url,
      {Map<String, dynamic> params = Config.queryParams,
      Map<String, dynamic> extra = const <String, dynamic>{}}) {
    extra.addAll(params);
    var uri = Uri.parse(url).replace(queryParameters: extra);
    return uri;
  }
}
