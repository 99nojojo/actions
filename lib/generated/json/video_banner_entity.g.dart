import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/video/video_banner_entity.dart';

LessonBannerEntity $LessonBannerEntityFromJson(Map<String, dynamic> json) {
  final LessonBannerEntity lessonBannerEntity = LessonBannerEntity();
  final List<LessonBannerItemList>? itemList = (json['itemList'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<LessonBannerItemList>(e) as LessonBannerItemList)
      .toList();
  if (itemList != null) {
    lessonBannerEntity.itemList = itemList;
  }
  return lessonBannerEntity;
}

Map<String, dynamic> $LessonBannerEntityToJson(LessonBannerEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  return data;
}

extension LessonBannerEntityExtension on LessonBannerEntity {
  LessonBannerEntity copyWith({
    List<LessonBannerItemList>? itemList,
  }) {
    return LessonBannerEntity()
      ..itemList = itemList ?? this.itemList;
  }
}

LessonBannerItemList $LessonBannerItemListFromJson(Map<String, dynamic> json) {
  final LessonBannerItemList lessonBannerItemList = LessonBannerItemList();
  final int? bannerType = jsonConvert.convert<int>(json['bannerType']);
  if (bannerType != null) {
    lessonBannerItemList.bannerType = bannerType;
  }
  final bool? displayTag = jsonConvert.convert<bool>(json['displayTag']);
  if (displayTag != null) {
    lessonBannerItemList.displayTag = displayTag;
  }
  final String? image = jsonConvert.convert<String>(json['image']);
  if (image != null) {
    lessonBannerItemList.image = image;
  }
  final String? label = jsonConvert.convert<String>(json['label']);
  if (label != null) {
    lessonBannerItemList.label = label;
  }
  final String? scheme = jsonConvert.convert<String>(json['scheme']);
  if (scheme != null) {
    lessonBannerItemList.scheme = scheme;
  }
  final dynamic url = json['url'];
  if (url != null) {
    lessonBannerItemList.url = url;
  }
  final String? video = jsonConvert.convert<String>(json['video']);
  if (video != null) {
    lessonBannerItemList.video = video;
  }
  final bool? vip = jsonConvert.convert<bool>(json['vip']);
  if (vip != null) {
    lessonBannerItemList.vip = vip;
  }
  final bool? vipLive = jsonConvert.convert<bool>(json['vipLive']);
  if (vipLive != null) {
    lessonBannerItemList.vipLive = vipLive;
  }
  return lessonBannerItemList;
}

Map<String, dynamic> $LessonBannerItemListToJson(LessonBannerItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['bannerType'] = entity.bannerType;
  data['displayTag'] = entity.displayTag;
  data['image'] = entity.image;
  data['label'] = entity.label;
  data['scheme'] = entity.scheme;
  data['url'] = entity.url;
  data['video'] = entity.video;
  data['vip'] = entity.vip;
  data['vipLive'] = entity.vipLive;
  return data;
}

extension LessonBannerItemListExtension on LessonBannerItemList {
  LessonBannerItemList copyWith({
    int? bannerType,
    bool? displayTag,
    String? image,
    String? label,
    String? scheme,
    dynamic url,
    String? video,
    bool? vip,
    bool? vipLive,
  }) {
    return LessonBannerItemList()
      ..bannerType = bannerType ?? this.bannerType
      ..displayTag = displayTag ?? this.displayTag
      ..image = image ?? this.image
      ..label = label ?? this.label
      ..scheme = scheme ?? this.scheme
      ..url = url ?? this.url
      ..video = video ?? this.video
      ..vip = vip ?? this.vip
      ..vipLive = vipLive ?? this.vipLive;
  }
}