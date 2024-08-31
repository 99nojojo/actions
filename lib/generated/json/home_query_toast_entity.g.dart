import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/home/home_query_toast_entity.dart';

HomeQueryToastEntity $HomeQueryToastEntityFromJson(Map<String, dynamic> json) {
  final HomeQueryToastEntity homeQueryToastEntity = HomeQueryToastEntity();
  final int? height = jsonConvert.convert<int>(json['height']);
  if (height != null) {
    homeQueryToastEntity.height = height;
  }
  final dynamic linkUrl = json['linkUrl'];
  if (linkUrl != null) {
    homeQueryToastEntity.linkUrl = linkUrl;
  }
  final dynamic toastImg = json['toastImg'];
  if (toastImg != null) {
    homeQueryToastEntity.toastImg = toastImg;
  }
  final int? width = jsonConvert.convert<int>(json['width']);
  if (width != null) {
    homeQueryToastEntity.width = width;
  }
  return homeQueryToastEntity;
}

Map<String, dynamic> $HomeQueryToastEntityToJson(HomeQueryToastEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['height'] = entity.height;
  data['linkUrl'] = entity.linkUrl;
  data['toastImg'] = entity.toastImg;
  data['width'] = entity.width;
  return data;
}

extension HomeQueryToastEntityExtension on HomeQueryToastEntity {
  HomeQueryToastEntity copyWith({
    int? height,
    dynamic linkUrl,
    dynamic toastImg,
    int? width,
  }) {
    return HomeQueryToastEntity()
      ..height = height ?? this.height
      ..linkUrl = linkUrl ?? this.linkUrl
      ..toastImg = toastImg ?? this.toastImg
      ..width = width ?? this.width;
  }
}