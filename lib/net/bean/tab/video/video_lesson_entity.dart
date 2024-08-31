import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/video_lesson_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class VideoLessonEntity {
  List<VideoLessonExcellentItemLessonList>? excellentItemLessonList;
  List<VideoLessonOtherLessonList>? otherLessonList;
  List<VideoLessonRecommendLessonList>? recommendLessonList;

  VideoLessonEntity();

  factory VideoLessonEntity.fromJson(Map<String, dynamic> json) =>
      $VideoLessonEntityFromJson(json);

  Map<String, dynamic> toJson() => $VideoLessonEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoLessonExcellentItemLessonList {
  String? albumCode = '';
  String? albumDesc = '';
  String? albumName = '';
  List<VideoLessonExcellentItemLessonListTopLessonListData>? topLessonListData;

  VideoLessonExcellentItemLessonList();

  factory VideoLessonExcellentItemLessonList.fromJson(
          Map<String, dynamic> json) =>
      $VideoLessonExcellentItemLessonListFromJson(json);

  Map<String, dynamic> toJson() =>
      $VideoLessonExcellentItemLessonListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoLessonExcellentItemLessonListTopLessonListData {
  String? channelCode = '';
  String? cover = '';
  int? firstSubLessonId = 0;
  bool? hasPermission = false;
  int? id = 0;
  String? image = '';
  dynamic label;
  bool? lesson = false;
  bool? live = false;
  int? liveBeginTime = 0;
  int? liveEndTime = 0;
  int? orientation = 0;
  int? originalPrice = 0;
  int? price = 0;
  bool? showVipIcon = false;
  int? subLessonCount = 0;
  int? subLessonId = 0;
  dynamic subTitle;
  List<String>? tagList;
  List<VideoLessonExcellentItemLessonListTopLessonListDataTeacherList>?
      teacherList;
  String? title = '';
  VideoLessonExcellentItemLessonListTopLessonListDataTrialLesson? trialLesson;
  int? videoDuration = 0;
  int? viewCount = 0;

  VideoLessonExcellentItemLessonListTopLessonListData();

  factory VideoLessonExcellentItemLessonListTopLessonListData.fromJson(
          Map<String, dynamic> json) =>
      $VideoLessonExcellentItemLessonListTopLessonListDataFromJson(json);

  Map<String, dynamic> toJson() =>
      $VideoLessonExcellentItemLessonListTopLessonListDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoLessonExcellentItemLessonListTopLessonListDataTeacherList {
  String? avatar = '';
  int? courseCount = 0;
  dynamic coverImg;
  dynamic createTime;
  dynamic creator;
  String? desc = '';
  dynamic featureUrl;
  dynamic groupIds;
  int? id = 0;
  String? kemuOneImg = '';
  String? kemuTwoImg = '';
  dynamic liveAnchorId;
  String? name = '';
  List<String>? tagList;
  String? tags = '';
  String? teachingVideo = '';
  dynamic updateTime;
  dynamic updator;
  dynamic videoUrl;

  VideoLessonExcellentItemLessonListTopLessonListDataTeacherList();

  factory VideoLessonExcellentItemLessonListTopLessonListDataTeacherList.fromJson(
          Map<String, dynamic> json) =>
      $VideoLessonExcellentItemLessonListTopLessonListDataTeacherListFromJson(
          json);

  Map<String, dynamic> toJson() =>
      $VideoLessonExcellentItemLessonListTopLessonListDataTeacherListToJson(
          this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoLessonExcellentItemLessonListTopLessonListDataTrialLesson {
  dynamic duration;
  String? image = '';
  String? name = '';
  String? url = '';

  VideoLessonExcellentItemLessonListTopLessonListDataTrialLesson();

  factory VideoLessonExcellentItemLessonListTopLessonListDataTrialLesson.fromJson(
          Map<String, dynamic> json) =>
      $VideoLessonExcellentItemLessonListTopLessonListDataTrialLessonFromJson(
          json);

  Map<String, dynamic> toJson() =>
      $VideoLessonExcellentItemLessonListTopLessonListDataTrialLessonToJson(
          this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoLessonOtherLessonList {
  String? channelCode = '';
  String? cover = '';
  int? firstSubLessonId = 0;
  bool? hasPermission = false;
  int? id = 0;
  String? image = '';
  dynamic label;
  bool? lesson = false;
  bool? live = false;
  int? liveBeginTime = 0;
  int? liveEndTime = 0;
  int? orientation = 0;
  int? originalPrice = 0;
  int? price = 0;
  bool? showVipIcon = false;
  int? subLessonCount = 0;
  int? subLessonId = 0;
  dynamic subTitle;
  List<String>? tagList;
  List<VideoLessonOtherLessonListTeacherList>? teacherList;
  String? title = '';
  VideoLessonOtherLessonListTrialLesson? trialLesson;
  int? videoDuration = 0;
  int? viewCount = 0;

  VideoLessonOtherLessonList();

  factory VideoLessonOtherLessonList.fromJson(Map<String, dynamic> json) =>
      $VideoLessonOtherLessonListFromJson(json);

  Map<String, dynamic> toJson() => $VideoLessonOtherLessonListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoLessonOtherLessonListTeacherList {
  String? avatar = '';
  int? courseCount = 0;
  dynamic coverImg;
  dynamic createTime;
  dynamic creator;
  String? desc = '';
  dynamic featureUrl;
  dynamic groupIds;
  int? id = 0;
  String? kemuOneImg = '';
  String? kemuTwoImg = '';
  dynamic liveAnchorId;
  String? name = '';
  List<String>? tagList;
  String? tags = '';
  String? teachingVideo = '';
  dynamic updateTime;
  dynamic updator;
  dynamic videoUrl;

  VideoLessonOtherLessonListTeacherList();

  factory VideoLessonOtherLessonListTeacherList.fromJson(
          Map<String, dynamic> json) =>
      $VideoLessonOtherLessonListTeacherListFromJson(json);

  Map<String, dynamic> toJson() =>
      $VideoLessonOtherLessonListTeacherListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoLessonOtherLessonListTrialLesson {
  dynamic duration;
  String? image = '';
  String? name = '';
  String? url = '';

  VideoLessonOtherLessonListTrialLesson();

  factory VideoLessonOtherLessonListTrialLesson.fromJson(
          Map<String, dynamic> json) =>
      $VideoLessonOtherLessonListTrialLessonFromJson(json);

  Map<String, dynamic> toJson() =>
      $VideoLessonOtherLessonListTrialLessonToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoLessonRecommendLessonList {
  String? channelCode = '';
  List<String>? commentList;
  String? cover = '';
  int? firstSubLessonId = 0;
  bool? hasPermission = false;
  int? id = 0;
  String? image = '';
  dynamic label;
  bool? lesson = false;
  bool? live = false;
  int? liveBeginTime = 0;
  int? liveEndTime = 0;
  int? orientation = 0;
  int? originalPrice = 0;
  int? price = 0;
  bool? showVipIcon = false;
  int? subLessonCount = 0;
  int? subLessonId = 0;
  dynamic subTitle;
  List<String>? tagList;
  List<VideoLessonRecommendLessonListTeacherList>? teacherList;
  String? title = '';
  VideoLessonRecommendLessonListTrialLesson? trialLesson;
  int? videoDuration = 0;
  int? viewCount = 0;

  VideoLessonRecommendLessonList();

  factory VideoLessonRecommendLessonList.fromJson(Map<String, dynamic> json) =>
      $VideoLessonRecommendLessonListFromJson(json);

  Map<String, dynamic> toJson() => $VideoLessonRecommendLessonListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoLessonRecommendLessonListTeacherList {
  String? avatar = '';
  int? courseCount = 0;
  dynamic coverImg;
  dynamic createTime;
  dynamic creator;
  String? desc = '';
  dynamic featureUrl;
  dynamic groupIds;
  int? id = 0;
  String? kemuOneImg = '';
  String? kemuTwoImg = '';
  dynamic liveAnchorId;
  String? name = '';
  List<String>? tagList;
  String? tags = '';
  String? teachingVideo = '';
  dynamic updateTime;
  dynamic updator;
  dynamic videoUrl;

  VideoLessonRecommendLessonListTeacherList();

  factory VideoLessonRecommendLessonListTeacherList.fromJson(
          Map<String, dynamic> json) =>
      $VideoLessonRecommendLessonListTeacherListFromJson(json);

  Map<String, dynamic> toJson() =>
      $VideoLessonRecommendLessonListTeacherListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class VideoLessonRecommendLessonListTrialLesson {
  dynamic duration;
  String? image = '';
  String? name = '';
  String? url = '';

  VideoLessonRecommendLessonListTrialLesson();

  factory VideoLessonRecommendLessonListTrialLesson.fromJson(
          Map<String, dynamic> json) =>
      $VideoLessonRecommendLessonListTrialLessonFromJson(json);

  Map<String, dynamic> toJson() =>
      $VideoLessonRecommendLessonListTrialLessonToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
