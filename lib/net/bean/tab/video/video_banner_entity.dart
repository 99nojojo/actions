import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'dart:convert';

import 'package:flutter_actions/generated/json/video_banner_entity.g.dart';

@JsonSerializable()
class LessonBannerEntity {
  List<LessonBannerItemList>? itemList;

  LessonBannerEntity();

  factory LessonBannerEntity.fromJson(Map<String, dynamic> json) =>
      $LessonBannerEntityFromJson(json);

  Map<String, dynamic> toJson() => $LessonBannerEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class LessonBannerItemList {
  int? bannerType = 0;
  bool? displayTag = false;
  String? image = '';
  String? label = '';
  String? scheme = '';
  dynamic url;
  String? video = '';
  bool? vip = false;
  bool? vipLive = false;

  LessonBannerItemList();

  factory LessonBannerItemList.fromJson(Map<String, dynamic> json) =>
      $LessonBannerItemListFromJson(json);

  Map<String, dynamic> toJson() => $LessonBannerItemListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
