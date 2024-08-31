import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/video/video_lesson_entity.dart';

VideoLessonEntity $VideoLessonEntityFromJson(Map<String, dynamic> json) {
  final VideoLessonEntity videoLessonEntity = VideoLessonEntity();
  final List<
      VideoLessonExcellentItemLessonList>? excellentItemLessonList = (json['excellentItemLessonList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<VideoLessonExcellentItemLessonList>(
          e) as VideoLessonExcellentItemLessonList).toList();
  if (excellentItemLessonList != null) {
    videoLessonEntity.excellentItemLessonList = excellentItemLessonList;
  }
  final List<
      VideoLessonOtherLessonList>? otherLessonList = (json['otherLessonList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<VideoLessonOtherLessonList>(
          e) as VideoLessonOtherLessonList).toList();
  if (otherLessonList != null) {
    videoLessonEntity.otherLessonList = otherLessonList;
  }
  final List<
      VideoLessonRecommendLessonList>? recommendLessonList = (json['recommendLessonList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<VideoLessonRecommendLessonList>(
          e) as VideoLessonRecommendLessonList).toList();
  if (recommendLessonList != null) {
    videoLessonEntity.recommendLessonList = recommendLessonList;
  }
  return videoLessonEntity;
}

Map<String, dynamic> $VideoLessonEntityToJson(VideoLessonEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['excellentItemLessonList'] =
      entity.excellentItemLessonList?.map((v) => v.toJson()).toList();
  data['otherLessonList'] =
      entity.otherLessonList?.map((v) => v.toJson()).toList();
  data['recommendLessonList'] =
      entity.recommendLessonList?.map((v) => v.toJson()).toList();
  return data;
}

extension VideoLessonEntityExtension on VideoLessonEntity {
  VideoLessonEntity copyWith({
    List<VideoLessonExcellentItemLessonList>? excellentItemLessonList,
    List<VideoLessonOtherLessonList>? otherLessonList,
    List<VideoLessonRecommendLessonList>? recommendLessonList,
  }) {
    return VideoLessonEntity()
      ..excellentItemLessonList = excellentItemLessonList ??
          this.excellentItemLessonList
      ..otherLessonList = otherLessonList ?? this.otherLessonList
      ..recommendLessonList = recommendLessonList ?? this.recommendLessonList;
  }
}

VideoLessonExcellentItemLessonList $VideoLessonExcellentItemLessonListFromJson(
    Map<String, dynamic> json) {
  final VideoLessonExcellentItemLessonList videoLessonExcellentItemLessonList = VideoLessonExcellentItemLessonList();
  final String? albumCode = jsonConvert.convert<String>(json['albumCode']);
  if (albumCode != null) {
    videoLessonExcellentItemLessonList.albumCode = albumCode;
  }
  final String? albumDesc = jsonConvert.convert<String>(json['albumDesc']);
  if (albumDesc != null) {
    videoLessonExcellentItemLessonList.albumDesc = albumDesc;
  }
  final String? albumName = jsonConvert.convert<String>(json['albumName']);
  if (albumName != null) {
    videoLessonExcellentItemLessonList.albumName = albumName;
  }
  final List<
      VideoLessonExcellentItemLessonListTopLessonListData>? topLessonListData = (json['topLessonListData'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          VideoLessonExcellentItemLessonListTopLessonListData>(
          e) as VideoLessonExcellentItemLessonListTopLessonListData).toList();
  if (topLessonListData != null) {
    videoLessonExcellentItemLessonList.topLessonListData = topLessonListData;
  }
  return videoLessonExcellentItemLessonList;
}

Map<String, dynamic> $VideoLessonExcellentItemLessonListToJson(
    VideoLessonExcellentItemLessonList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['albumCode'] = entity.albumCode;
  data['albumDesc'] = entity.albumDesc;
  data['albumName'] = entity.albumName;
  data['topLessonListData'] =
      entity.topLessonListData?.map((v) => v.toJson()).toList();
  return data;
}

extension VideoLessonExcellentItemLessonListExtension on VideoLessonExcellentItemLessonList {
  VideoLessonExcellentItemLessonList copyWith({
    String? albumCode,
    String? albumDesc,
    String? albumName,
    List<
        VideoLessonExcellentItemLessonListTopLessonListData>? topLessonListData,
  }) {
    return VideoLessonExcellentItemLessonList()
      ..albumCode = albumCode ?? this.albumCode
      ..albumDesc = albumDesc ?? this.albumDesc
      ..albumName = albumName ?? this.albumName
      ..topLessonListData = topLessonListData ?? this.topLessonListData;
  }
}

VideoLessonExcellentItemLessonListTopLessonListData $VideoLessonExcellentItemLessonListTopLessonListDataFromJson(
    Map<String, dynamic> json) {
  final VideoLessonExcellentItemLessonListTopLessonListData videoLessonExcellentItemLessonListTopLessonListData = VideoLessonExcellentItemLessonListTopLessonListData();
  final String? channelCode = jsonConvert.convert<String>(json['channelCode']);
  if (channelCode != null) {
    videoLessonExcellentItemLessonListTopLessonListData.channelCode =
        channelCode;
  }
  final String? cover = jsonConvert.convert<String>(json['cover']);
  if (cover != null) {
    videoLessonExcellentItemLessonListTopLessonListData.cover = cover;
  }
  final int? firstSubLessonId = jsonConvert.convert<int>(
      json['firstSubLessonId']);
  if (firstSubLessonId != null) {
    videoLessonExcellentItemLessonListTopLessonListData.firstSubLessonId =
        firstSubLessonId;
  }
  final bool? hasPermission = jsonConvert.convert<bool>(json['hasPermission']);
  if (hasPermission != null) {
    videoLessonExcellentItemLessonListTopLessonListData.hasPermission =
        hasPermission;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    videoLessonExcellentItemLessonListTopLessonListData.id = id;
  }
  final String? image = jsonConvert.convert<String>(json['image']);
  if (image != null) {
    videoLessonExcellentItemLessonListTopLessonListData.image = image;
  }
  final dynamic label = json['label'];
  if (label != null) {
    videoLessonExcellentItemLessonListTopLessonListData.label = label;
  }
  final bool? lesson = jsonConvert.convert<bool>(json['lesson']);
  if (lesson != null) {
    videoLessonExcellentItemLessonListTopLessonListData.lesson = lesson;
  }
  final bool? live = jsonConvert.convert<bool>(json['live']);
  if (live != null) {
    videoLessonExcellentItemLessonListTopLessonListData.live = live;
  }
  final int? liveBeginTime = jsonConvert.convert<int>(json['liveBeginTime']);
  if (liveBeginTime != null) {
    videoLessonExcellentItemLessonListTopLessonListData.liveBeginTime =
        liveBeginTime;
  }
  final int? liveEndTime = jsonConvert.convert<int>(json['liveEndTime']);
  if (liveEndTime != null) {
    videoLessonExcellentItemLessonListTopLessonListData.liveEndTime =
        liveEndTime;
  }
  final int? orientation = jsonConvert.convert<int>(json['orientation']);
  if (orientation != null) {
    videoLessonExcellentItemLessonListTopLessonListData.orientation =
        orientation;
  }
  final int? originalPrice = jsonConvert.convert<int>(json['originalPrice']);
  if (originalPrice != null) {
    videoLessonExcellentItemLessonListTopLessonListData.originalPrice =
        originalPrice;
  }
  final int? price = jsonConvert.convert<int>(json['price']);
  if (price != null) {
    videoLessonExcellentItemLessonListTopLessonListData.price = price;
  }
  final bool? showVipIcon = jsonConvert.convert<bool>(json['showVipIcon']);
  if (showVipIcon != null) {
    videoLessonExcellentItemLessonListTopLessonListData.showVipIcon =
        showVipIcon;
  }
  final int? subLessonCount = jsonConvert.convert<int>(json['subLessonCount']);
  if (subLessonCount != null) {
    videoLessonExcellentItemLessonListTopLessonListData.subLessonCount =
        subLessonCount;
  }
  final int? subLessonId = jsonConvert.convert<int>(json['subLessonId']);
  if (subLessonId != null) {
    videoLessonExcellentItemLessonListTopLessonListData.subLessonId =
        subLessonId;
  }
  final dynamic subTitle = json['subTitle'];
  if (subTitle != null) {
    videoLessonExcellentItemLessonListTopLessonListData.subTitle = subTitle;
  }
  final List<String>? tagList = (json['tagList'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (tagList != null) {
    videoLessonExcellentItemLessonListTopLessonListData.tagList = tagList;
  }
  final List<
      VideoLessonExcellentItemLessonListTopLessonListDataTeacherList>? teacherList = (json['teacherList'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<
          VideoLessonExcellentItemLessonListTopLessonListDataTeacherList>(
          e) as VideoLessonExcellentItemLessonListTopLessonListDataTeacherList)
      .toList();
  if (teacherList != null) {
    videoLessonExcellentItemLessonListTopLessonListData.teacherList =
        teacherList;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    videoLessonExcellentItemLessonListTopLessonListData.title = title;
  }
  final VideoLessonExcellentItemLessonListTopLessonListDataTrialLesson? trialLesson = jsonConvert
      .convert<VideoLessonExcellentItemLessonListTopLessonListDataTrialLesson>(
      json['trialLesson']);
  if (trialLesson != null) {
    videoLessonExcellentItemLessonListTopLessonListData.trialLesson =
        trialLesson;
  }
  final int? videoDuration = jsonConvert.convert<int>(json['videoDuration']);
  if (videoDuration != null) {
    videoLessonExcellentItemLessonListTopLessonListData.videoDuration =
        videoDuration;
  }
  final int? viewCount = jsonConvert.convert<int>(json['viewCount']);
  if (viewCount != null) {
    videoLessonExcellentItemLessonListTopLessonListData.viewCount = viewCount;
  }
  return videoLessonExcellentItemLessonListTopLessonListData;
}

Map<String, dynamic> $VideoLessonExcellentItemLessonListTopLessonListDataToJson(
    VideoLessonExcellentItemLessonListTopLessonListData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['channelCode'] = entity.channelCode;
  data['cover'] = entity.cover;
  data['firstSubLessonId'] = entity.firstSubLessonId;
  data['hasPermission'] = entity.hasPermission;
  data['id'] = entity.id;
  data['image'] = entity.image;
  data['label'] = entity.label;
  data['lesson'] = entity.lesson;
  data['live'] = entity.live;
  data['liveBeginTime'] = entity.liveBeginTime;
  data['liveEndTime'] = entity.liveEndTime;
  data['orientation'] = entity.orientation;
  data['originalPrice'] = entity.originalPrice;
  data['price'] = entity.price;
  data['showVipIcon'] = entity.showVipIcon;
  data['subLessonCount'] = entity.subLessonCount;
  data['subLessonId'] = entity.subLessonId;
  data['subTitle'] = entity.subTitle;
  data['tagList'] = entity.tagList;
  data['teacherList'] = entity.teacherList?.map((v) => v.toJson()).toList();
  data['title'] = entity.title;
  data['trialLesson'] = entity.trialLesson?.toJson();
  data['videoDuration'] = entity.videoDuration;
  data['viewCount'] = entity.viewCount;
  return data;
}

extension VideoLessonExcellentItemLessonListTopLessonListDataExtension on VideoLessonExcellentItemLessonListTopLessonListData {
  VideoLessonExcellentItemLessonListTopLessonListData copyWith({
    String? channelCode,
    String? cover,
    int? firstSubLessonId,
    bool? hasPermission,
    int? id,
    String? image,
    dynamic label,
    bool? lesson,
    bool? live,
    int? liveBeginTime,
    int? liveEndTime,
    int? orientation,
    int? originalPrice,
    int? price,
    bool? showVipIcon,
    int? subLessonCount,
    int? subLessonId,
    dynamic subTitle,
    List<String>? tagList,
    List<
        VideoLessonExcellentItemLessonListTopLessonListDataTeacherList>? teacherList,
    String? title,
    VideoLessonExcellentItemLessonListTopLessonListDataTrialLesson? trialLesson,
    int? videoDuration,
    int? viewCount,
  }) {
    return VideoLessonExcellentItemLessonListTopLessonListData()
      ..channelCode = channelCode ?? this.channelCode
      ..cover = cover ?? this.cover
      ..firstSubLessonId = firstSubLessonId ?? this.firstSubLessonId
      ..hasPermission = hasPermission ?? this.hasPermission
      ..id = id ?? this.id
      ..image = image ?? this.image
      ..label = label ?? this.label
      ..lesson = lesson ?? this.lesson
      ..live = live ?? this.live
      ..liveBeginTime = liveBeginTime ?? this.liveBeginTime
      ..liveEndTime = liveEndTime ?? this.liveEndTime
      ..orientation = orientation ?? this.orientation
      ..originalPrice = originalPrice ?? this.originalPrice
      ..price = price ?? this.price
      ..showVipIcon = showVipIcon ?? this.showVipIcon
      ..subLessonCount = subLessonCount ?? this.subLessonCount
      ..subLessonId = subLessonId ?? this.subLessonId
      ..subTitle = subTitle ?? this.subTitle
      ..tagList = tagList ?? this.tagList
      ..teacherList = teacherList ?? this.teacherList
      ..title = title ?? this.title
      ..trialLesson = trialLesson ?? this.trialLesson
      ..videoDuration = videoDuration ?? this.videoDuration
      ..viewCount = viewCount ?? this.viewCount;
  }
}

VideoLessonExcellentItemLessonListTopLessonListDataTeacherList $VideoLessonExcellentItemLessonListTopLessonListDataTeacherListFromJson(
    Map<String, dynamic> json) {
  final VideoLessonExcellentItemLessonListTopLessonListDataTeacherList videoLessonExcellentItemLessonListTopLessonListDataTeacherList = VideoLessonExcellentItemLessonListTopLessonListDataTeacherList();
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTeacherList.avatar =
        avatar;
  }
  final int? courseCount = jsonConvert.convert<int>(json['courseCount']);
  if (courseCount != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTeacherList.courseCount =
        courseCount;
  }
  final dynamic coverImg = json['coverImg'];
  if (coverImg != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTeacherList.coverImg =
        coverImg;
  }
  final dynamic createTime = json['createTime'];
  if (createTime != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTeacherList.createTime =
        createTime;
  }
  final dynamic creator = json['creator'];
  if (creator != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTeacherList.creator =
        creator;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTeacherList.desc = desc;
  }
  final dynamic featureUrl = json['featureUrl'];
  if (featureUrl != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTeacherList.featureUrl =
        featureUrl;
  }
  final dynamic groupIds = json['groupIds'];
  if (groupIds != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTeacherList.groupIds =
        groupIds;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTeacherList.id = id;
  }
  final String? kemuOneImg = jsonConvert.convert<String>(json['kemuOneImg']);
  if (kemuOneImg != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTeacherList.kemuOneImg =
        kemuOneImg;
  }
  final String? kemuTwoImg = jsonConvert.convert<String>(json['kemuTwoImg']);
  if (kemuTwoImg != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTeacherList.kemuTwoImg =
        kemuTwoImg;
  }
  final dynamic liveAnchorId = json['liveAnchorId'];
  if (liveAnchorId != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTeacherList
        .liveAnchorId = liveAnchorId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTeacherList.name = name;
  }
  final List<String>? tagList = (json['tagList'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (tagList != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTeacherList.tagList =
        tagList;
  }
  final String? tags = jsonConvert.convert<String>(json['tags']);
  if (tags != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTeacherList.tags = tags;
  }
  final String? teachingVideo = jsonConvert.convert<String>(
      json['teachingVideo']);
  if (teachingVideo != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTeacherList
        .teachingVideo = teachingVideo;
  }
  final dynamic updateTime = json['updateTime'];
  if (updateTime != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTeacherList.updateTime =
        updateTime;
  }
  final dynamic updator = json['updator'];
  if (updator != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTeacherList.updator =
        updator;
  }
  final dynamic videoUrl = json['videoUrl'];
  if (videoUrl != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTeacherList.videoUrl =
        videoUrl;
  }
  return videoLessonExcellentItemLessonListTopLessonListDataTeacherList;
}

Map<String,
    dynamic> $VideoLessonExcellentItemLessonListTopLessonListDataTeacherListToJson(
    VideoLessonExcellentItemLessonListTopLessonListDataTeacherList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['avatar'] = entity.avatar;
  data['courseCount'] = entity.courseCount;
  data['coverImg'] = entity.coverImg;
  data['createTime'] = entity.createTime;
  data['creator'] = entity.creator;
  data['desc'] = entity.desc;
  data['featureUrl'] = entity.featureUrl;
  data['groupIds'] = entity.groupIds;
  data['id'] = entity.id;
  data['kemuOneImg'] = entity.kemuOneImg;
  data['kemuTwoImg'] = entity.kemuTwoImg;
  data['liveAnchorId'] = entity.liveAnchorId;
  data['name'] = entity.name;
  data['tagList'] = entity.tagList;
  data['tags'] = entity.tags;
  data['teachingVideo'] = entity.teachingVideo;
  data['updateTime'] = entity.updateTime;
  data['updator'] = entity.updator;
  data['videoUrl'] = entity.videoUrl;
  return data;
}

extension VideoLessonExcellentItemLessonListTopLessonListDataTeacherListExtension on VideoLessonExcellentItemLessonListTopLessonListDataTeacherList {
  VideoLessonExcellentItemLessonListTopLessonListDataTeacherList copyWith({
    String? avatar,
    int? courseCount,
    dynamic coverImg,
    dynamic createTime,
    dynamic creator,
    String? desc,
    dynamic featureUrl,
    dynamic groupIds,
    int? id,
    String? kemuOneImg,
    String? kemuTwoImg,
    dynamic liveAnchorId,
    String? name,
    List<String>? tagList,
    String? tags,
    String? teachingVideo,
    dynamic updateTime,
    dynamic updator,
    dynamic videoUrl,
  }) {
    return VideoLessonExcellentItemLessonListTopLessonListDataTeacherList()
      ..avatar = avatar ?? this.avatar
      ..courseCount = courseCount ?? this.courseCount
      ..coverImg = coverImg ?? this.coverImg
      ..createTime = createTime ?? this.createTime
      ..creator = creator ?? this.creator
      ..desc = desc ?? this.desc
      ..featureUrl = featureUrl ?? this.featureUrl
      ..groupIds = groupIds ?? this.groupIds
      ..id = id ?? this.id
      ..kemuOneImg = kemuOneImg ?? this.kemuOneImg
      ..kemuTwoImg = kemuTwoImg ?? this.kemuTwoImg
      ..liveAnchorId = liveAnchorId ?? this.liveAnchorId
      ..name = name ?? this.name
      ..tagList = tagList ?? this.tagList
      ..tags = tags ?? this.tags
      ..teachingVideo = teachingVideo ?? this.teachingVideo
      ..updateTime = updateTime ?? this.updateTime
      ..updator = updator ?? this.updator
      ..videoUrl = videoUrl ?? this.videoUrl;
  }
}

VideoLessonExcellentItemLessonListTopLessonListDataTrialLesson $VideoLessonExcellentItemLessonListTopLessonListDataTrialLessonFromJson(
    Map<String, dynamic> json) {
  final VideoLessonExcellentItemLessonListTopLessonListDataTrialLesson videoLessonExcellentItemLessonListTopLessonListDataTrialLesson = VideoLessonExcellentItemLessonListTopLessonListDataTrialLesson();
  final dynamic duration = json['duration'];
  if (duration != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTrialLesson.duration =
        duration;
  }
  final String? image = jsonConvert.convert<String>(json['image']);
  if (image != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTrialLesson.image =
        image;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTrialLesson.name = name;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    videoLessonExcellentItemLessonListTopLessonListDataTrialLesson.url = url;
  }
  return videoLessonExcellentItemLessonListTopLessonListDataTrialLesson;
}

Map<String,
    dynamic> $VideoLessonExcellentItemLessonListTopLessonListDataTrialLessonToJson(
    VideoLessonExcellentItemLessonListTopLessonListDataTrialLesson entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['duration'] = entity.duration;
  data['image'] = entity.image;
  data['name'] = entity.name;
  data['url'] = entity.url;
  return data;
}

extension VideoLessonExcellentItemLessonListTopLessonListDataTrialLessonExtension on VideoLessonExcellentItemLessonListTopLessonListDataTrialLesson {
  VideoLessonExcellentItemLessonListTopLessonListDataTrialLesson copyWith({
    dynamic duration,
    String? image,
    String? name,
    String? url,
  }) {
    return VideoLessonExcellentItemLessonListTopLessonListDataTrialLesson()
      ..duration = duration ?? this.duration
      ..image = image ?? this.image
      ..name = name ?? this.name
      ..url = url ?? this.url;
  }
}

VideoLessonOtherLessonList $VideoLessonOtherLessonListFromJson(
    Map<String, dynamic> json) {
  final VideoLessonOtherLessonList videoLessonOtherLessonList = VideoLessonOtherLessonList();
  final String? channelCode = jsonConvert.convert<String>(json['channelCode']);
  if (channelCode != null) {
    videoLessonOtherLessonList.channelCode = channelCode;
  }
  final String? cover = jsonConvert.convert<String>(json['cover']);
  if (cover != null) {
    videoLessonOtherLessonList.cover = cover;
  }
  final int? firstSubLessonId = jsonConvert.convert<int>(
      json['firstSubLessonId']);
  if (firstSubLessonId != null) {
    videoLessonOtherLessonList.firstSubLessonId = firstSubLessonId;
  }
  final bool? hasPermission = jsonConvert.convert<bool>(json['hasPermission']);
  if (hasPermission != null) {
    videoLessonOtherLessonList.hasPermission = hasPermission;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    videoLessonOtherLessonList.id = id;
  }
  final String? image = jsonConvert.convert<String>(json['image']);
  if (image != null) {
    videoLessonOtherLessonList.image = image;
  }
  final dynamic label = json['label'];
  if (label != null) {
    videoLessonOtherLessonList.label = label;
  }
  final bool? lesson = jsonConvert.convert<bool>(json['lesson']);
  if (lesson != null) {
    videoLessonOtherLessonList.lesson = lesson;
  }
  final bool? live = jsonConvert.convert<bool>(json['live']);
  if (live != null) {
    videoLessonOtherLessonList.live = live;
  }
  final int? liveBeginTime = jsonConvert.convert<int>(json['liveBeginTime']);
  if (liveBeginTime != null) {
    videoLessonOtherLessonList.liveBeginTime = liveBeginTime;
  }
  final int? liveEndTime = jsonConvert.convert<int>(json['liveEndTime']);
  if (liveEndTime != null) {
    videoLessonOtherLessonList.liveEndTime = liveEndTime;
  }
  final int? orientation = jsonConvert.convert<int>(json['orientation']);
  if (orientation != null) {
    videoLessonOtherLessonList.orientation = orientation;
  }
  final int? originalPrice = jsonConvert.convert<int>(json['originalPrice']);
  if (originalPrice != null) {
    videoLessonOtherLessonList.originalPrice = originalPrice;
  }
  final int? price = jsonConvert.convert<int>(json['price']);
  if (price != null) {
    videoLessonOtherLessonList.price = price;
  }
  final bool? showVipIcon = jsonConvert.convert<bool>(json['showVipIcon']);
  if (showVipIcon != null) {
    videoLessonOtherLessonList.showVipIcon = showVipIcon;
  }
  final int? subLessonCount = jsonConvert.convert<int>(json['subLessonCount']);
  if (subLessonCount != null) {
    videoLessonOtherLessonList.subLessonCount = subLessonCount;
  }
  final int? subLessonId = jsonConvert.convert<int>(json['subLessonId']);
  if (subLessonId != null) {
    videoLessonOtherLessonList.subLessonId = subLessonId;
  }
  final dynamic subTitle = json['subTitle'];
  if (subTitle != null) {
    videoLessonOtherLessonList.subTitle = subTitle;
  }
  final List<String>? tagList = (json['tagList'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (tagList != null) {
    videoLessonOtherLessonList.tagList = tagList;
  }
  final List<
      VideoLessonOtherLessonListTeacherList>? teacherList = (json['teacherList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<VideoLessonOtherLessonListTeacherList>(
          e) as VideoLessonOtherLessonListTeacherList).toList();
  if (teacherList != null) {
    videoLessonOtherLessonList.teacherList = teacherList;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    videoLessonOtherLessonList.title = title;
  }
  final VideoLessonOtherLessonListTrialLesson? trialLesson = jsonConvert
      .convert<VideoLessonOtherLessonListTrialLesson>(json['trialLesson']);
  if (trialLesson != null) {
    videoLessonOtherLessonList.trialLesson = trialLesson;
  }
  final int? videoDuration = jsonConvert.convert<int>(json['videoDuration']);
  if (videoDuration != null) {
    videoLessonOtherLessonList.videoDuration = videoDuration;
  }
  final int? viewCount = jsonConvert.convert<int>(json['viewCount']);
  if (viewCount != null) {
    videoLessonOtherLessonList.viewCount = viewCount;
  }
  return videoLessonOtherLessonList;
}

Map<String, dynamic> $VideoLessonOtherLessonListToJson(
    VideoLessonOtherLessonList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['channelCode'] = entity.channelCode;
  data['cover'] = entity.cover;
  data['firstSubLessonId'] = entity.firstSubLessonId;
  data['hasPermission'] = entity.hasPermission;
  data['id'] = entity.id;
  data['image'] = entity.image;
  data['label'] = entity.label;
  data['lesson'] = entity.lesson;
  data['live'] = entity.live;
  data['liveBeginTime'] = entity.liveBeginTime;
  data['liveEndTime'] = entity.liveEndTime;
  data['orientation'] = entity.orientation;
  data['originalPrice'] = entity.originalPrice;
  data['price'] = entity.price;
  data['showVipIcon'] = entity.showVipIcon;
  data['subLessonCount'] = entity.subLessonCount;
  data['subLessonId'] = entity.subLessonId;
  data['subTitle'] = entity.subTitle;
  data['tagList'] = entity.tagList;
  data['teacherList'] = entity.teacherList?.map((v) => v.toJson()).toList();
  data['title'] = entity.title;
  data['trialLesson'] = entity.trialLesson?.toJson();
  data['videoDuration'] = entity.videoDuration;
  data['viewCount'] = entity.viewCount;
  return data;
}

extension VideoLessonOtherLessonListExtension on VideoLessonOtherLessonList {
  VideoLessonOtherLessonList copyWith({
    String? channelCode,
    String? cover,
    int? firstSubLessonId,
    bool? hasPermission,
    int? id,
    String? image,
    dynamic label,
    bool? lesson,
    bool? live,
    int? liveBeginTime,
    int? liveEndTime,
    int? orientation,
    int? originalPrice,
    int? price,
    bool? showVipIcon,
    int? subLessonCount,
    int? subLessonId,
    dynamic subTitle,
    List<String>? tagList,
    List<VideoLessonOtherLessonListTeacherList>? teacherList,
    String? title,
    VideoLessonOtherLessonListTrialLesson? trialLesson,
    int? videoDuration,
    int? viewCount,
  }) {
    return VideoLessonOtherLessonList()
      ..channelCode = channelCode ?? this.channelCode
      ..cover = cover ?? this.cover
      ..firstSubLessonId = firstSubLessonId ?? this.firstSubLessonId
      ..hasPermission = hasPermission ?? this.hasPermission
      ..id = id ?? this.id
      ..image = image ?? this.image
      ..label = label ?? this.label
      ..lesson = lesson ?? this.lesson
      ..live = live ?? this.live
      ..liveBeginTime = liveBeginTime ?? this.liveBeginTime
      ..liveEndTime = liveEndTime ?? this.liveEndTime
      ..orientation = orientation ?? this.orientation
      ..originalPrice = originalPrice ?? this.originalPrice
      ..price = price ?? this.price
      ..showVipIcon = showVipIcon ?? this.showVipIcon
      ..subLessonCount = subLessonCount ?? this.subLessonCount
      ..subLessonId = subLessonId ?? this.subLessonId
      ..subTitle = subTitle ?? this.subTitle
      ..tagList = tagList ?? this.tagList
      ..teacherList = teacherList ?? this.teacherList
      ..title = title ?? this.title
      ..trialLesson = trialLesson ?? this.trialLesson
      ..videoDuration = videoDuration ?? this.videoDuration
      ..viewCount = viewCount ?? this.viewCount;
  }
}

VideoLessonOtherLessonListTeacherList $VideoLessonOtherLessonListTeacherListFromJson(
    Map<String, dynamic> json) {
  final VideoLessonOtherLessonListTeacherList videoLessonOtherLessonListTeacherList = VideoLessonOtherLessonListTeacherList();
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    videoLessonOtherLessonListTeacherList.avatar = avatar;
  }
  final int? courseCount = jsonConvert.convert<int>(json['courseCount']);
  if (courseCount != null) {
    videoLessonOtherLessonListTeacherList.courseCount = courseCount;
  }
  final dynamic coverImg = json['coverImg'];
  if (coverImg != null) {
    videoLessonOtherLessonListTeacherList.coverImg = coverImg;
  }
  final dynamic createTime = json['createTime'];
  if (createTime != null) {
    videoLessonOtherLessonListTeacherList.createTime = createTime;
  }
  final dynamic creator = json['creator'];
  if (creator != null) {
    videoLessonOtherLessonListTeacherList.creator = creator;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    videoLessonOtherLessonListTeacherList.desc = desc;
  }
  final dynamic featureUrl = json['featureUrl'];
  if (featureUrl != null) {
    videoLessonOtherLessonListTeacherList.featureUrl = featureUrl;
  }
  final dynamic groupIds = json['groupIds'];
  if (groupIds != null) {
    videoLessonOtherLessonListTeacherList.groupIds = groupIds;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    videoLessonOtherLessonListTeacherList.id = id;
  }
  final String? kemuOneImg = jsonConvert.convert<String>(json['kemuOneImg']);
  if (kemuOneImg != null) {
    videoLessonOtherLessonListTeacherList.kemuOneImg = kemuOneImg;
  }
  final String? kemuTwoImg = jsonConvert.convert<String>(json['kemuTwoImg']);
  if (kemuTwoImg != null) {
    videoLessonOtherLessonListTeacherList.kemuTwoImg = kemuTwoImg;
  }
  final dynamic liveAnchorId = json['liveAnchorId'];
  if (liveAnchorId != null) {
    videoLessonOtherLessonListTeacherList.liveAnchorId = liveAnchorId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    videoLessonOtherLessonListTeacherList.name = name;
  }
  final List<String>? tagList = (json['tagList'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (tagList != null) {
    videoLessonOtherLessonListTeacherList.tagList = tagList;
  }
  final String? tags = jsonConvert.convert<String>(json['tags']);
  if (tags != null) {
    videoLessonOtherLessonListTeacherList.tags = tags;
  }
  final String? teachingVideo = jsonConvert.convert<String>(
      json['teachingVideo']);
  if (teachingVideo != null) {
    videoLessonOtherLessonListTeacherList.teachingVideo = teachingVideo;
  }
  final dynamic updateTime = json['updateTime'];
  if (updateTime != null) {
    videoLessonOtherLessonListTeacherList.updateTime = updateTime;
  }
  final dynamic updator = json['updator'];
  if (updator != null) {
    videoLessonOtherLessonListTeacherList.updator = updator;
  }
  final dynamic videoUrl = json['videoUrl'];
  if (videoUrl != null) {
    videoLessonOtherLessonListTeacherList.videoUrl = videoUrl;
  }
  return videoLessonOtherLessonListTeacherList;
}

Map<String, dynamic> $VideoLessonOtherLessonListTeacherListToJson(
    VideoLessonOtherLessonListTeacherList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['avatar'] = entity.avatar;
  data['courseCount'] = entity.courseCount;
  data['coverImg'] = entity.coverImg;
  data['createTime'] = entity.createTime;
  data['creator'] = entity.creator;
  data['desc'] = entity.desc;
  data['featureUrl'] = entity.featureUrl;
  data['groupIds'] = entity.groupIds;
  data['id'] = entity.id;
  data['kemuOneImg'] = entity.kemuOneImg;
  data['kemuTwoImg'] = entity.kemuTwoImg;
  data['liveAnchorId'] = entity.liveAnchorId;
  data['name'] = entity.name;
  data['tagList'] = entity.tagList;
  data['tags'] = entity.tags;
  data['teachingVideo'] = entity.teachingVideo;
  data['updateTime'] = entity.updateTime;
  data['updator'] = entity.updator;
  data['videoUrl'] = entity.videoUrl;
  return data;
}

extension VideoLessonOtherLessonListTeacherListExtension on VideoLessonOtherLessonListTeacherList {
  VideoLessonOtherLessonListTeacherList copyWith({
    String? avatar,
    int? courseCount,
    dynamic coverImg,
    dynamic createTime,
    dynamic creator,
    String? desc,
    dynamic featureUrl,
    dynamic groupIds,
    int? id,
    String? kemuOneImg,
    String? kemuTwoImg,
    dynamic liveAnchorId,
    String? name,
    List<String>? tagList,
    String? tags,
    String? teachingVideo,
    dynamic updateTime,
    dynamic updator,
    dynamic videoUrl,
  }) {
    return VideoLessonOtherLessonListTeacherList()
      ..avatar = avatar ?? this.avatar
      ..courseCount = courseCount ?? this.courseCount
      ..coverImg = coverImg ?? this.coverImg
      ..createTime = createTime ?? this.createTime
      ..creator = creator ?? this.creator
      ..desc = desc ?? this.desc
      ..featureUrl = featureUrl ?? this.featureUrl
      ..groupIds = groupIds ?? this.groupIds
      ..id = id ?? this.id
      ..kemuOneImg = kemuOneImg ?? this.kemuOneImg
      ..kemuTwoImg = kemuTwoImg ?? this.kemuTwoImg
      ..liveAnchorId = liveAnchorId ?? this.liveAnchorId
      ..name = name ?? this.name
      ..tagList = tagList ?? this.tagList
      ..tags = tags ?? this.tags
      ..teachingVideo = teachingVideo ?? this.teachingVideo
      ..updateTime = updateTime ?? this.updateTime
      ..updator = updator ?? this.updator
      ..videoUrl = videoUrl ?? this.videoUrl;
  }
}

VideoLessonOtherLessonListTrialLesson $VideoLessonOtherLessonListTrialLessonFromJson(
    Map<String, dynamic> json) {
  final VideoLessonOtherLessonListTrialLesson videoLessonOtherLessonListTrialLesson = VideoLessonOtherLessonListTrialLesson();
  final dynamic duration = json['duration'];
  if (duration != null) {
    videoLessonOtherLessonListTrialLesson.duration = duration;
  }
  final String? image = jsonConvert.convert<String>(json['image']);
  if (image != null) {
    videoLessonOtherLessonListTrialLesson.image = image;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    videoLessonOtherLessonListTrialLesson.name = name;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    videoLessonOtherLessonListTrialLesson.url = url;
  }
  return videoLessonOtherLessonListTrialLesson;
}

Map<String, dynamic> $VideoLessonOtherLessonListTrialLessonToJson(
    VideoLessonOtherLessonListTrialLesson entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['duration'] = entity.duration;
  data['image'] = entity.image;
  data['name'] = entity.name;
  data['url'] = entity.url;
  return data;
}

extension VideoLessonOtherLessonListTrialLessonExtension on VideoLessonOtherLessonListTrialLesson {
  VideoLessonOtherLessonListTrialLesson copyWith({
    dynamic duration,
    String? image,
    String? name,
    String? url,
  }) {
    return VideoLessonOtherLessonListTrialLesson()
      ..duration = duration ?? this.duration
      ..image = image ?? this.image
      ..name = name ?? this.name
      ..url = url ?? this.url;
  }
}

VideoLessonRecommendLessonList $VideoLessonRecommendLessonListFromJson(
    Map<String, dynamic> json) {
  final VideoLessonRecommendLessonList videoLessonRecommendLessonList = VideoLessonRecommendLessonList();
  final String? channelCode = jsonConvert.convert<String>(json['channelCode']);
  if (channelCode != null) {
    videoLessonRecommendLessonList.channelCode = channelCode;
  }
  final List<String>? commentList = (json['commentList'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<String>(e) as String)
      .toList();
  if (commentList != null) {
    videoLessonRecommendLessonList.commentList = commentList;
  }
  final String? cover = jsonConvert.convert<String>(json['cover']);
  if (cover != null) {
    videoLessonRecommendLessonList.cover = cover;
  }
  final int? firstSubLessonId = jsonConvert.convert<int>(
      json['firstSubLessonId']);
  if (firstSubLessonId != null) {
    videoLessonRecommendLessonList.firstSubLessonId = firstSubLessonId;
  }
  final bool? hasPermission = jsonConvert.convert<bool>(json['hasPermission']);
  if (hasPermission != null) {
    videoLessonRecommendLessonList.hasPermission = hasPermission;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    videoLessonRecommendLessonList.id = id;
  }
  final String? image = jsonConvert.convert<String>(json['image']);
  if (image != null) {
    videoLessonRecommendLessonList.image = image;
  }
  final dynamic label = json['label'];
  if (label != null) {
    videoLessonRecommendLessonList.label = label;
  }
  final bool? lesson = jsonConvert.convert<bool>(json['lesson']);
  if (lesson != null) {
    videoLessonRecommendLessonList.lesson = lesson;
  }
  final bool? live = jsonConvert.convert<bool>(json['live']);
  if (live != null) {
    videoLessonRecommendLessonList.live = live;
  }
  final int? liveBeginTime = jsonConvert.convert<int>(json['liveBeginTime']);
  if (liveBeginTime != null) {
    videoLessonRecommendLessonList.liveBeginTime = liveBeginTime;
  }
  final int? liveEndTime = jsonConvert.convert<int>(json['liveEndTime']);
  if (liveEndTime != null) {
    videoLessonRecommendLessonList.liveEndTime = liveEndTime;
  }
  final int? orientation = jsonConvert.convert<int>(json['orientation']);
  if (orientation != null) {
    videoLessonRecommendLessonList.orientation = orientation;
  }
  final int? originalPrice = jsonConvert.convert<int>(json['originalPrice']);
  if (originalPrice != null) {
    videoLessonRecommendLessonList.originalPrice = originalPrice;
  }
  final int? price = jsonConvert.convert<int>(json['price']);
  if (price != null) {
    videoLessonRecommendLessonList.price = price;
  }
  final bool? showVipIcon = jsonConvert.convert<bool>(json['showVipIcon']);
  if (showVipIcon != null) {
    videoLessonRecommendLessonList.showVipIcon = showVipIcon;
  }
  final int? subLessonCount = jsonConvert.convert<int>(json['subLessonCount']);
  if (subLessonCount != null) {
    videoLessonRecommendLessonList.subLessonCount = subLessonCount;
  }
  final int? subLessonId = jsonConvert.convert<int>(json['subLessonId']);
  if (subLessonId != null) {
    videoLessonRecommendLessonList.subLessonId = subLessonId;
  }
  final dynamic subTitle = json['subTitle'];
  if (subTitle != null) {
    videoLessonRecommendLessonList.subTitle = subTitle;
  }
  final List<String>? tagList = (json['tagList'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (tagList != null) {
    videoLessonRecommendLessonList.tagList = tagList;
  }
  final List<
      VideoLessonRecommendLessonListTeacherList>? teacherList = (json['teacherList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<VideoLessonRecommendLessonListTeacherList>(
          e) as VideoLessonRecommendLessonListTeacherList).toList();
  if (teacherList != null) {
    videoLessonRecommendLessonList.teacherList = teacherList;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    videoLessonRecommendLessonList.title = title;
  }
  final VideoLessonRecommendLessonListTrialLesson? trialLesson = jsonConvert
      .convert<VideoLessonRecommendLessonListTrialLesson>(json['trialLesson']);
  if (trialLesson != null) {
    videoLessonRecommendLessonList.trialLesson = trialLesson;
  }
  final int? videoDuration = jsonConvert.convert<int>(json['videoDuration']);
  if (videoDuration != null) {
    videoLessonRecommendLessonList.videoDuration = videoDuration;
  }
  final int? viewCount = jsonConvert.convert<int>(json['viewCount']);
  if (viewCount != null) {
    videoLessonRecommendLessonList.viewCount = viewCount;
  }
  return videoLessonRecommendLessonList;
}

Map<String, dynamic> $VideoLessonRecommendLessonListToJson(
    VideoLessonRecommendLessonList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['channelCode'] = entity.channelCode;
  data['commentList'] = entity.commentList;
  data['cover'] = entity.cover;
  data['firstSubLessonId'] = entity.firstSubLessonId;
  data['hasPermission'] = entity.hasPermission;
  data['id'] = entity.id;
  data['image'] = entity.image;
  data['label'] = entity.label;
  data['lesson'] = entity.lesson;
  data['live'] = entity.live;
  data['liveBeginTime'] = entity.liveBeginTime;
  data['liveEndTime'] = entity.liveEndTime;
  data['orientation'] = entity.orientation;
  data['originalPrice'] = entity.originalPrice;
  data['price'] = entity.price;
  data['showVipIcon'] = entity.showVipIcon;
  data['subLessonCount'] = entity.subLessonCount;
  data['subLessonId'] = entity.subLessonId;
  data['subTitle'] = entity.subTitle;
  data['tagList'] = entity.tagList;
  data['teacherList'] = entity.teacherList?.map((v) => v.toJson()).toList();
  data['title'] = entity.title;
  data['trialLesson'] = entity.trialLesson?.toJson();
  data['videoDuration'] = entity.videoDuration;
  data['viewCount'] = entity.viewCount;
  return data;
}

extension VideoLessonRecommendLessonListExtension on VideoLessonRecommendLessonList {
  VideoLessonRecommendLessonList copyWith({
    String? channelCode,
    List<String>? commentList,
    String? cover,
    int? firstSubLessonId,
    bool? hasPermission,
    int? id,
    String? image,
    dynamic label,
    bool? lesson,
    bool? live,
    int? liveBeginTime,
    int? liveEndTime,
    int? orientation,
    int? originalPrice,
    int? price,
    bool? showVipIcon,
    int? subLessonCount,
    int? subLessonId,
    dynamic subTitle,
    List<String>? tagList,
    List<VideoLessonRecommendLessonListTeacherList>? teacherList,
    String? title,
    VideoLessonRecommendLessonListTrialLesson? trialLesson,
    int? videoDuration,
    int? viewCount,
  }) {
    return VideoLessonRecommendLessonList()
      ..channelCode = channelCode ?? this.channelCode
      ..commentList = commentList ?? this.commentList
      ..cover = cover ?? this.cover
      ..firstSubLessonId = firstSubLessonId ?? this.firstSubLessonId
      ..hasPermission = hasPermission ?? this.hasPermission
      ..id = id ?? this.id
      ..image = image ?? this.image
      ..label = label ?? this.label
      ..lesson = lesson ?? this.lesson
      ..live = live ?? this.live
      ..liveBeginTime = liveBeginTime ?? this.liveBeginTime
      ..liveEndTime = liveEndTime ?? this.liveEndTime
      ..orientation = orientation ?? this.orientation
      ..originalPrice = originalPrice ?? this.originalPrice
      ..price = price ?? this.price
      ..showVipIcon = showVipIcon ?? this.showVipIcon
      ..subLessonCount = subLessonCount ?? this.subLessonCount
      ..subLessonId = subLessonId ?? this.subLessonId
      ..subTitle = subTitle ?? this.subTitle
      ..tagList = tagList ?? this.tagList
      ..teacherList = teacherList ?? this.teacherList
      ..title = title ?? this.title
      ..trialLesson = trialLesson ?? this.trialLesson
      ..videoDuration = videoDuration ?? this.videoDuration
      ..viewCount = viewCount ?? this.viewCount;
  }
}

VideoLessonRecommendLessonListTeacherList $VideoLessonRecommendLessonListTeacherListFromJson(
    Map<String, dynamic> json) {
  final VideoLessonRecommendLessonListTeacherList videoLessonRecommendLessonListTeacherList = VideoLessonRecommendLessonListTeacherList();
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    videoLessonRecommendLessonListTeacherList.avatar = avatar;
  }
  final int? courseCount = jsonConvert.convert<int>(json['courseCount']);
  if (courseCount != null) {
    videoLessonRecommendLessonListTeacherList.courseCount = courseCount;
  }
  final dynamic coverImg = json['coverImg'];
  if (coverImg != null) {
    videoLessonRecommendLessonListTeacherList.coverImg = coverImg;
  }
  final dynamic createTime = json['createTime'];
  if (createTime != null) {
    videoLessonRecommendLessonListTeacherList.createTime = createTime;
  }
  final dynamic creator = json['creator'];
  if (creator != null) {
    videoLessonRecommendLessonListTeacherList.creator = creator;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    videoLessonRecommendLessonListTeacherList.desc = desc;
  }
  final dynamic featureUrl = json['featureUrl'];
  if (featureUrl != null) {
    videoLessonRecommendLessonListTeacherList.featureUrl = featureUrl;
  }
  final dynamic groupIds = json['groupIds'];
  if (groupIds != null) {
    videoLessonRecommendLessonListTeacherList.groupIds = groupIds;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    videoLessonRecommendLessonListTeacherList.id = id;
  }
  final String? kemuOneImg = jsonConvert.convert<String>(json['kemuOneImg']);
  if (kemuOneImg != null) {
    videoLessonRecommendLessonListTeacherList.kemuOneImg = kemuOneImg;
  }
  final String? kemuTwoImg = jsonConvert.convert<String>(json['kemuTwoImg']);
  if (kemuTwoImg != null) {
    videoLessonRecommendLessonListTeacherList.kemuTwoImg = kemuTwoImg;
  }
  final dynamic liveAnchorId = json['liveAnchorId'];
  if (liveAnchorId != null) {
    videoLessonRecommendLessonListTeacherList.liveAnchorId = liveAnchorId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    videoLessonRecommendLessonListTeacherList.name = name;
  }
  final List<String>? tagList = (json['tagList'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (tagList != null) {
    videoLessonRecommendLessonListTeacherList.tagList = tagList;
  }
  final String? tags = jsonConvert.convert<String>(json['tags']);
  if (tags != null) {
    videoLessonRecommendLessonListTeacherList.tags = tags;
  }
  final String? teachingVideo = jsonConvert.convert<String>(
      json['teachingVideo']);
  if (teachingVideo != null) {
    videoLessonRecommendLessonListTeacherList.teachingVideo = teachingVideo;
  }
  final dynamic updateTime = json['updateTime'];
  if (updateTime != null) {
    videoLessonRecommendLessonListTeacherList.updateTime = updateTime;
  }
  final dynamic updator = json['updator'];
  if (updator != null) {
    videoLessonRecommendLessonListTeacherList.updator = updator;
  }
  final dynamic videoUrl = json['videoUrl'];
  if (videoUrl != null) {
    videoLessonRecommendLessonListTeacherList.videoUrl = videoUrl;
  }
  return videoLessonRecommendLessonListTeacherList;
}

Map<String, dynamic> $VideoLessonRecommendLessonListTeacherListToJson(
    VideoLessonRecommendLessonListTeacherList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['avatar'] = entity.avatar;
  data['courseCount'] = entity.courseCount;
  data['coverImg'] = entity.coverImg;
  data['createTime'] = entity.createTime;
  data['creator'] = entity.creator;
  data['desc'] = entity.desc;
  data['featureUrl'] = entity.featureUrl;
  data['groupIds'] = entity.groupIds;
  data['id'] = entity.id;
  data['kemuOneImg'] = entity.kemuOneImg;
  data['kemuTwoImg'] = entity.kemuTwoImg;
  data['liveAnchorId'] = entity.liveAnchorId;
  data['name'] = entity.name;
  data['tagList'] = entity.tagList;
  data['tags'] = entity.tags;
  data['teachingVideo'] = entity.teachingVideo;
  data['updateTime'] = entity.updateTime;
  data['updator'] = entity.updator;
  data['videoUrl'] = entity.videoUrl;
  return data;
}

extension VideoLessonRecommendLessonListTeacherListExtension on VideoLessonRecommendLessonListTeacherList {
  VideoLessonRecommendLessonListTeacherList copyWith({
    String? avatar,
    int? courseCount,
    dynamic coverImg,
    dynamic createTime,
    dynamic creator,
    String? desc,
    dynamic featureUrl,
    dynamic groupIds,
    int? id,
    String? kemuOneImg,
    String? kemuTwoImg,
    dynamic liveAnchorId,
    String? name,
    List<String>? tagList,
    String? tags,
    String? teachingVideo,
    dynamic updateTime,
    dynamic updator,
    dynamic videoUrl,
  }) {
    return VideoLessonRecommendLessonListTeacherList()
      ..avatar = avatar ?? this.avatar
      ..courseCount = courseCount ?? this.courseCount
      ..coverImg = coverImg ?? this.coverImg
      ..createTime = createTime ?? this.createTime
      ..creator = creator ?? this.creator
      ..desc = desc ?? this.desc
      ..featureUrl = featureUrl ?? this.featureUrl
      ..groupIds = groupIds ?? this.groupIds
      ..id = id ?? this.id
      ..kemuOneImg = kemuOneImg ?? this.kemuOneImg
      ..kemuTwoImg = kemuTwoImg ?? this.kemuTwoImg
      ..liveAnchorId = liveAnchorId ?? this.liveAnchorId
      ..name = name ?? this.name
      ..tagList = tagList ?? this.tagList
      ..tags = tags ?? this.tags
      ..teachingVideo = teachingVideo ?? this.teachingVideo
      ..updateTime = updateTime ?? this.updateTime
      ..updator = updator ?? this.updator
      ..videoUrl = videoUrl ?? this.videoUrl;
  }
}

VideoLessonRecommendLessonListTrialLesson $VideoLessonRecommendLessonListTrialLessonFromJson(
    Map<String, dynamic> json) {
  final VideoLessonRecommendLessonListTrialLesson videoLessonRecommendLessonListTrialLesson = VideoLessonRecommendLessonListTrialLesson();
  final dynamic duration = json['duration'];
  if (duration != null) {
    videoLessonRecommendLessonListTrialLesson.duration = duration;
  }
  final String? image = jsonConvert.convert<String>(json['image']);
  if (image != null) {
    videoLessonRecommendLessonListTrialLesson.image = image;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    videoLessonRecommendLessonListTrialLesson.name = name;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    videoLessonRecommendLessonListTrialLesson.url = url;
  }
  return videoLessonRecommendLessonListTrialLesson;
}

Map<String, dynamic> $VideoLessonRecommendLessonListTrialLessonToJson(
    VideoLessonRecommendLessonListTrialLesson entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['duration'] = entity.duration;
  data['image'] = entity.image;
  data['name'] = entity.name;
  data['url'] = entity.url;
  return data;
}

extension VideoLessonRecommendLessonListTrialLessonExtension on VideoLessonRecommendLessonListTrialLesson {
  VideoLessonRecommendLessonListTrialLesson copyWith({
    dynamic duration,
    String? image,
    String? name,
    String? url,
  }) {
    return VideoLessonRecommendLessonListTrialLesson()
      ..duration = duration ?? this.duration
      ..image = image ?? this.image
      ..name = name ?? this.name
      ..url = url ?? this.url;
  }
}