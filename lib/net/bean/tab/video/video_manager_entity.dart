import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/video_manager_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class VideoCalendarEntity {
  List<VideoManagerItemList>? itemList;

  VideoCalendarEntity();

  factory VideoCalendarEntity.fromJson(Map<String, dynamic> json) =>
      $VideoCalendarEntityFromJson(json);

  Map<String, dynamic> toJson() => $VideoCalendarEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoManagerItemList {
  int? endTime = 0;
  int? lessonItemId = 0;
  int? startTime = 0;
  int? status = 0;
  dynamic subscribeStatus;
  String? teacherAvatar = '';
  String? teacherName = '';
  String? title = '';

  VideoManagerItemList();

  factory VideoManagerItemList.fromJson(Map<String, dynamic> json) =>
      $VideoManagerItemListFromJson(json);

  Map<String, dynamic> toJson() => $VideoManagerItemListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
