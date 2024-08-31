import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/jx_image_list_entity.dart';

JxImageListEntity $JxImageListEntityFromJson(Map<String, dynamic> json) {
  final JxImageListEntity jxImageListEntity = JxImageListEntity();
  final List<JxImageListItemList>? itemList = (json['itemList'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<JxImageListItemList>(e) as JxImageListItemList)
      .toList();
  if (itemList != null) {
    jxImageListEntity.itemList = itemList;
  }
  return jxImageListEntity;
}

Map<String, dynamic> $JxImageListEntityToJson(JxImageListEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  return data;
}

extension JxImageListEntityExtension on JxImageListEntity {
  JxImageListEntity copyWith({
    List<JxImageListItemList>? itemList,
  }) {
    return JxImageListEntity()
      ..itemList = itemList ?? this.itemList;
  }
}

JxImageListItemList $JxImageListItemListFromJson(Map<String, dynamic> json) {
  final JxImageListItemList jxImageListItemList = JxImageListItemList();
  final String? small = jsonConvert.convert<String>(json['small']);
  if (small != null) {
    jxImageListItemList.small = small;
  }
  final int? recommendTime = jsonConvert.convert<int>(json['recommendTime']);
  if (recommendTime != null) {
    jxImageListItemList.recommendTime = recommendTime;
  }
  final String? typeName = jsonConvert.convert<String>(json['typeName']);
  if (typeName != null) {
    jxImageListItemList.typeName = typeName;
  }
  final bool? recommend = jsonConvert.convert<bool>(json['recommend']);
  if (recommend != null) {
    jxImageListItemList.recommend = recommend;
  }
  final bool? video = jsonConvert.convert<bool>(json['video']);
  if (video != null) {
    jxImageListItemList.video = video;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    jxImageListItemList.type = type;
  }
  final int? examFieldId = jsonConvert.convert<int>(json['examFieldId']);
  if (examFieldId != null) {
    jxImageListItemList.examFieldId = examFieldId;
  }
  final bool? cover = jsonConvert.convert<bool>(json['cover']);
  if (cover != null) {
    jxImageListItemList.cover = cover;
  }
  final String? urlMd5 = jsonConvert.convert<String>(json['urlMd5']);
  if (urlMd5 != null) {
    jxImageListItemList.urlMd5 = urlMd5;
  }
  final int? uploadType = jsonConvert.convert<int>(json['uploadType']);
  if (uploadType != null) {
    jxImageListItemList.uploadType = uploadType;
  }
  final int? height = jsonConvert.convert<int>(json['height']);
  if (height != null) {
    jxImageListItemList.height = height;
  }
  final List<
      JxImageListItemListCategorys>? categorys = (json['categorys'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<JxImageListItemListCategorys>(
          e) as JxImageListItemListCategorys).toList();
  if (categorys != null) {
    jxImageListItemList.categorys = categorys;
  }
  final int? imageId = jsonConvert.convert<int>(json['imageId']);
  if (imageId != null) {
    jxImageListItemList.imageId = imageId;
  }
  final String? large = jsonConvert.convert<String>(json['large']);
  if (large != null) {
    jxImageListItemList.large = large;
  }
  final int? coachId = jsonConvert.convert<int>(json['coachId']);
  if (coachId != null) {
    jxImageListItemList.coachId = coachId;
  }
  final int? trainFieldId = jsonConvert.convert<int>(json['trainFieldId']);
  if (trainFieldId != null) {
    jxImageListItemList.trainFieldId = trainFieldId;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    jxImageListItemList.url = url;
  }
  final int? jiaxiaoId = jsonConvert.convert<int>(json['jiaxiaoId']);
  if (jiaxiaoId != null) {
    jxImageListItemList.jiaxiaoId = jiaxiaoId;
  }
  final int? fileSize = jsonConvert.convert<int>(json['fileSize']);
  if (fileSize != null) {
    jxImageListItemList.fileSize = fileSize;
  }
  final int? width = jsonConvert.convert<int>(json['width']);
  if (width != null) {
    jxImageListItemList.width = width;
  }
  final String? fileType = jsonConvert.convert<String>(json['fileType']);
  if (fileType != null) {
    jxImageListItemList.fileType = fileType;
  }
  return jxImageListItemList;
}

Map<String, dynamic> $JxImageListItemListToJson(JxImageListItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['small'] = entity.small;
  data['recommendTime'] = entity.recommendTime;
  data['typeName'] = entity.typeName;
  data['recommend'] = entity.recommend;
  data['video'] = entity.video;
  data['type'] = entity.type;
  data['examFieldId'] = entity.examFieldId;
  data['cover'] = entity.cover;
  data['urlMd5'] = entity.urlMd5;
  data['uploadType'] = entity.uploadType;
  data['height'] = entity.height;
  data['categorys'] = entity.categorys?.map((v) => v.toJson()).toList();
  data['imageId'] = entity.imageId;
  data['large'] = entity.large;
  data['coachId'] = entity.coachId;
  data['trainFieldId'] = entity.trainFieldId;
  data['url'] = entity.url;
  data['jiaxiaoId'] = entity.jiaxiaoId;
  data['fileSize'] = entity.fileSize;
  data['width'] = entity.width;
  data['fileType'] = entity.fileType;
  return data;
}

extension JxImageListItemListExtension on JxImageListItemList {
  JxImageListItemList copyWith({
    String? small,
    int? recommendTime,
    String? typeName,
    bool? recommend,
    bool? video,
    int? type,
    int? examFieldId,
    bool? cover,
    String? urlMd5,
    int? uploadType,
    int? height,
    List<JxImageListItemListCategorys>? categorys,
    int? imageId,
    String? large,
    int? coachId,
    int? trainFieldId,
    String? url,
    int? jiaxiaoId,
    int? fileSize,
    int? width,
    String? fileType,
  }) {
    return JxImageListItemList()
      ..small = small ?? this.small
      ..recommendTime = recommendTime ?? this.recommendTime
      ..typeName = typeName ?? this.typeName
      ..recommend = recommend ?? this.recommend
      ..video = video ?? this.video
      ..type = type ?? this.type
      ..examFieldId = examFieldId ?? this.examFieldId
      ..cover = cover ?? this.cover
      ..urlMd5 = urlMd5 ?? this.urlMd5
      ..uploadType = uploadType ?? this.uploadType
      ..height = height ?? this.height
      ..categorys = categorys ?? this.categorys
      ..imageId = imageId ?? this.imageId
      ..large = large ?? this.large
      ..coachId = coachId ?? this.coachId
      ..trainFieldId = trainFieldId ?? this.trainFieldId
      ..url = url ?? this.url
      ..jiaxiaoId = jiaxiaoId ?? this.jiaxiaoId
      ..fileSize = fileSize ?? this.fileSize
      ..width = width ?? this.width
      ..fileType = fileType ?? this.fileType;
  }
}

JxImageListItemListCategorys $JxImageListItemListCategorysFromJson(
    Map<String, dynamic> json) {
  final JxImageListItemListCategorys jxImageListItemListCategorys = JxImageListItemListCategorys();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    jxImageListItemListCategorys.code = code;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    jxImageListItemListCategorys.name = name;
  }
  return jxImageListItemListCategorys;
}

Map<String, dynamic> $JxImageListItemListCategorysToJson(
    JxImageListItemListCategorys entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['name'] = entity.name;
  return data;
}

extension JxImageListItemListCategorysExtension on JxImageListItemListCategorys {
  JxImageListItemListCategorys copyWith({
    int? code,
    String? name,
  }) {
    return JxImageListItemListCategorys()
      ..code = code ?? this.code
      ..name = name ?? this.name;
  }
}