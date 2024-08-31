import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/video/video_square_entity.dart';

VideoSquareEntity $VideoSquareEntityFromJson(Map<String, dynamic> json) {
  final VideoSquareEntity videoSquareEntity = VideoSquareEntity();
  final int? cursor = jsonConvert.convert<int>(json['cursor']);
  if (cursor != null) {
    videoSquareEntity.cursor = cursor;
  }
  final bool? hasMore = jsonConvert.convert<bool>(json['hasMore']);
  if (hasMore != null) {
    videoSquareEntity.hasMore = hasMore;
  }
  final List<VideoSquareItemList>? itemList = (json['itemList'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<VideoSquareItemList>(e) as VideoSquareItemList)
      .toList();
  if (itemList != null) {
    videoSquareEntity.itemList = itemList;
  }
  final int? total = jsonConvert.convert<int>(json['total']);
  if (total != null) {
    videoSquareEntity.total = total;
  }
  return videoSquareEntity;
}

Map<String, dynamic> $VideoSquareEntityToJson(VideoSquareEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['cursor'] = entity.cursor;
  data['hasMore'] = entity.hasMore;
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  data['total'] = entity.total;
  return data;
}

extension VideoSquareEntityExtension on VideoSquareEntity {
  VideoSquareEntity copyWith({
    int? cursor,
    bool? hasMore,
    List<VideoSquareItemList>? itemList,
    int? total,
  }) {
    return VideoSquareEntity()
      ..cursor = cursor ?? this.cursor
      ..hasMore = hasMore ?? this.hasMore
      ..itemList = itemList ?? this.itemList
      ..total = total ?? this.total;
  }
}

VideoSquareItemList $VideoSquareItemListFromJson(Map<String, dynamic> json) {
  final VideoSquareItemList videoSquareItemList = VideoSquareItemList();
  final VideoSquareItemListAnchorData? anchorData = jsonConvert.convert<
      VideoSquareItemListAnchorData>(json['anchorData']);
  if (anchorData != null) {
    videoSquareItemList.anchorData = anchorData;
  }
  final int? anchorId = jsonConvert.convert<int>(json['anchorId']);
  if (anchorId != null) {
    videoSquareItemList.anchorId = anchorId;
  }
  final String? carType = jsonConvert.convert<String>(json['carType']);
  if (carType != null) {
    videoSquareItemList.carType = carType;
  }
  final dynamic cityCode = json['cityCode'];
  if (cityCode != null) {
    videoSquareItemList.cityCode = cityCode;
  }
  final dynamic cityName = json['cityName'];
  if (cityName != null) {
    videoSquareItemList.cityName = cityName;
  }
  final String? cover = jsonConvert.convert<String>(json['cover']);
  if (cover != null) {
    videoSquareItemList.cover = cover;
  }
  final int? kemu = jsonConvert.convert<int>(json['kemu']);
  if (kemu != null) {
    videoSquareItemList.kemu = kemu;
  }
  final int? lastLiveTime = jsonConvert.convert<int>(json['lastLiveTime']);
  if (lastLiveTime != null) {
    videoSquareItemList.lastLiveTime = lastLiveTime;
  }
  final int? orientation = jsonConvert.convert<int>(json['orientation']);
  if (orientation != null) {
    videoSquareItemList.orientation = orientation;
  }
  final double? popularityValue = jsonConvert.convert<double>(
      json['popularityValue']);
  if (popularityValue != null) {
    videoSquareItemList.popularityValue = popularityValue;
  }
  final int? pv = jsonConvert.convert<int>(json['pv']);
  if (pv != null) {
    videoSquareItemList.pv = pv;
  }
  final String? sessionDesc = jsonConvert.convert<String>(json['sessionDesc']);
  if (sessionDesc != null) {
    videoSquareItemList.sessionDesc = sessionDesc;
  }
  final int? sessionId = jsonConvert.convert<int>(json['sessionId']);
  if (sessionId != null) {
    videoSquareItemList.sessionId = sessionId;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    videoSquareItemList.status = status;
  }
  final int? thumpUpCount = jsonConvert.convert<int>(json['thumpUpCount']);
  if (thumpUpCount != null) {
    videoSquareItemList.thumpUpCount = thumpUpCount;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    videoSquareItemList.title = title;
  }
  final dynamic topTime = json['topTime'];
  if (topTime != null) {
    videoSquareItemList.topTime = topTime;
  }
  return videoSquareItemList;
}

Map<String, dynamic> $VideoSquareItemListToJson(VideoSquareItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['anchorData'] = entity.anchorData?.toJson();
  data['anchorId'] = entity.anchorId;
  data['carType'] = entity.carType;
  data['cityCode'] = entity.cityCode;
  data['cityName'] = entity.cityName;
  data['cover'] = entity.cover;
  data['kemu'] = entity.kemu;
  data['lastLiveTime'] = entity.lastLiveTime;
  data['orientation'] = entity.orientation;
  data['popularityValue'] = entity.popularityValue;
  data['pv'] = entity.pv;
  data['sessionDesc'] = entity.sessionDesc;
  data['sessionId'] = entity.sessionId;
  data['status'] = entity.status;
  data['thumpUpCount'] = entity.thumpUpCount;
  data['title'] = entity.title;
  data['topTime'] = entity.topTime;
  return data;
}

extension VideoSquareItemListExtension on VideoSquareItemList {
  VideoSquareItemList copyWith({
    VideoSquareItemListAnchorData? anchorData,
    int? anchorId,
    String? carType,
    dynamic cityCode,
    dynamic cityName,
    String? cover,
    int? kemu,
    int? lastLiveTime,
    int? orientation,
    double? popularityValue,
    int? pv,
    String? sessionDesc,
    int? sessionId,
    int? status,
    int? thumpUpCount,
    String? title,
    dynamic topTime,
  }) {
    return VideoSquareItemList()
      ..anchorData = anchorData ?? this.anchorData
      ..anchorId = anchorId ?? this.anchorId
      ..carType = carType ?? this.carType
      ..cityCode = cityCode ?? this.cityCode
      ..cityName = cityName ?? this.cityName
      ..cover = cover ?? this.cover
      ..kemu = kemu ?? this.kemu
      ..lastLiveTime = lastLiveTime ?? this.lastLiveTime
      ..orientation = orientation ?? this.orientation
      ..popularityValue = popularityValue ?? this.popularityValue
      ..pv = pv ?? this.pv
      ..sessionDesc = sessionDesc ?? this.sessionDesc
      ..sessionId = sessionId ?? this.sessionId
      ..status = status ?? this.status
      ..thumpUpCount = thumpUpCount ?? this.thumpUpCount
      ..title = title ?? this.title
      ..topTime = topTime ?? this.topTime;
  }
}

VideoSquareItemListAnchorData $VideoSquareItemListAnchorDataFromJson(
    Map<String, dynamic> json) {
  final VideoSquareItemListAnchorData videoSquareItemListAnchorData = VideoSquareItemListAnchorData();
  final int? anchorId = jsonConvert.convert<int>(json['anchorId']);
  if (anchorId != null) {
    videoSquareItemListAnchorData.anchorId = anchorId;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    videoSquareItemListAnchorData.avatar = avatar;
  }
  final dynamic desc = json['desc'];
  if (desc != null) {
    videoSquareItemListAnchorData.desc = desc;
  }
  final dynamic fansCount = json['fansCount'];
  if (fansCount != null) {
    videoSquareItemListAnchorData.fansCount = fansCount;
  }
  final int? followTime = jsonConvert.convert<int>(json['followTime']);
  if (followTime != null) {
    videoSquareItemListAnchorData.followTime = followTime;
  }
  final String? nickName = jsonConvert.convert<String>(json['nickName']);
  if (nickName != null) {
    videoSquareItemListAnchorData.nickName = nickName;
  }
  final dynamic official = json['official'];
  if (official != null) {
    videoSquareItemListAnchorData.official = official;
  }
  final dynamic status = json['status'];
  if (status != null) {
    videoSquareItemListAnchorData.status = status;
  }
  final dynamic userId = json['userId'];
  if (userId != null) {
    videoSquareItemListAnchorData.userId = userId;
  }
  return videoSquareItemListAnchorData;
}

Map<String, dynamic> $VideoSquareItemListAnchorDataToJson(
    VideoSquareItemListAnchorData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['anchorId'] = entity.anchorId;
  data['avatar'] = entity.avatar;
  data['desc'] = entity.desc;
  data['fansCount'] = entity.fansCount;
  data['followTime'] = entity.followTime;
  data['nickName'] = entity.nickName;
  data['official'] = entity.official;
  data['status'] = entity.status;
  data['userId'] = entity.userId;
  return data;
}

extension VideoSquareItemListAnchorDataExtension on VideoSquareItemListAnchorData {
  VideoSquareItemListAnchorData copyWith({
    int? anchorId,
    String? avatar,
    dynamic desc,
    dynamic fansCount,
    int? followTime,
    String? nickName,
    dynamic official,
    dynamic status,
    dynamic userId,
  }) {
    return VideoSquareItemListAnchorData()
      ..anchorId = anchorId ?? this.anchorId
      ..avatar = avatar ?? this.avatar
      ..desc = desc ?? this.desc
      ..fansCount = fansCount ?? this.fansCount
      ..followTime = followTime ?? this.followTime
      ..nickName = nickName ?? this.nickName
      ..official = official ?? this.official
      ..status = status ?? this.status
      ..userId = userId ?? this.userId;
  }
}