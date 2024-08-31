import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/video/video_manager_entity.dart';

VideoCalendarEntity $VideoCalendarEntityFromJson(Map<String, dynamic> json) {
  final VideoCalendarEntity videoCalendarEntity = VideoCalendarEntity();
  final List<VideoManagerItemList>? itemList = (json['itemList'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<VideoManagerItemList>(e) as VideoManagerItemList)
      .toList();
  if (itemList != null) {
    videoCalendarEntity.itemList = itemList;
  }
  return videoCalendarEntity;
}

Map<String, dynamic> $VideoCalendarEntityToJson(VideoCalendarEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  return data;
}

extension VideoCalendarEntityExtension on VideoCalendarEntity {
  VideoCalendarEntity copyWith({
    List<VideoManagerItemList>? itemList,
  }) {
    return VideoCalendarEntity()
      ..itemList = itemList ?? this.itemList;
  }
}

VideoManagerItemList $VideoManagerItemListFromJson(Map<String, dynamic> json) {
  final VideoManagerItemList videoManagerItemList = VideoManagerItemList();
  final int? endTime = jsonConvert.convert<int>(json['endTime']);
  if (endTime != null) {
    videoManagerItemList.endTime = endTime;
  }
  final int? lessonItemId = jsonConvert.convert<int>(json['lessonItemId']);
  if (lessonItemId != null) {
    videoManagerItemList.lessonItemId = lessonItemId;
  }
  final int? startTime = jsonConvert.convert<int>(json['startTime']);
  if (startTime != null) {
    videoManagerItemList.startTime = startTime;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    videoManagerItemList.status = status;
  }
  final dynamic subscribeStatus = json['subscribeStatus'];
  if (subscribeStatus != null) {
    videoManagerItemList.subscribeStatus = subscribeStatus;
  }
  final String? teacherAvatar = jsonConvert.convert<String>(
      json['teacherAvatar']);
  if (teacherAvatar != null) {
    videoManagerItemList.teacherAvatar = teacherAvatar;
  }
  final String? teacherName = jsonConvert.convert<String>(json['teacherName']);
  if (teacherName != null) {
    videoManagerItemList.teacherName = teacherName;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    videoManagerItemList.title = title;
  }
  return videoManagerItemList;
}

Map<String, dynamic> $VideoManagerItemListToJson(VideoManagerItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['endTime'] = entity.endTime;
  data['lessonItemId'] = entity.lessonItemId;
  data['startTime'] = entity.startTime;
  data['status'] = entity.status;
  data['subscribeStatus'] = entity.subscribeStatus;
  data['teacherAvatar'] = entity.teacherAvatar;
  data['teacherName'] = entity.teacherName;
  data['title'] = entity.title;
  return data;
}

extension VideoManagerItemListExtension on VideoManagerItemList {
  VideoManagerItemList copyWith({
    int? endTime,
    int? lessonItemId,
    int? startTime,
    int? status,
    dynamic subscribeStatus,
    String? teacherAvatar,
    String? teacherName,
    String? title,
  }) {
    return VideoManagerItemList()
      ..endTime = endTime ?? this.endTime
      ..lessonItemId = lessonItemId ?? this.lessonItemId
      ..startTime = startTime ?? this.startTime
      ..status = status ?? this.status
      ..subscribeStatus = subscribeStatus ?? this.subscribeStatus
      ..teacherAvatar = teacherAvatar ?? this.teacherAvatar
      ..teacherName = teacherName ?? this.teacherName
      ..title = title ?? this.title;
  }
}