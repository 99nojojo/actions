import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/video/community_data_entity.dart';

CommunityDataEntity $CommunityDataEntityFromJson(Map<String, dynamic> json) {
  final CommunityDataEntity communityDataEntity = CommunityDataEntity();
  final String? cursor = jsonConvert.convert<String>(json['cursor']);
  if (cursor != null) {
    communityDataEntity.cursor = cursor;
  }
  final CommunityDataExtraData? extraData = jsonConvert.convert<
      CommunityDataExtraData>(json['extraData']);
  if (extraData != null) {
    communityDataEntity.extraData = extraData;
  }
  final bool? hasMore = jsonConvert.convert<bool>(json['hasMore']);
  if (hasMore != null) {
    communityDataEntity.hasMore = hasMore;
  }
  final List<CommunityDataItemList>? itemList = (json['itemList'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<CommunityDataItemList>(e) as CommunityDataItemList)
      .toList();
  if (itemList != null) {
    communityDataEntity.itemList = itemList;
  }
  final int? limitId = jsonConvert.convert<int>(json['limitId']);
  if (limitId != null) {
    communityDataEntity.limitId = limitId;
  }
  final int? pageCount = jsonConvert.convert<int>(json['pageCount']);
  if (pageCount != null) {
    communityDataEntity.pageCount = pageCount;
  }
  final int? totalCount = jsonConvert.convert<int>(json['totalCount']);
  if (totalCount != null) {
    communityDataEntity.totalCount = totalCount;
  }
  return communityDataEntity;
}

Map<String, dynamic> $CommunityDataEntityToJson(CommunityDataEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['cursor'] = entity.cursor;
  data['extraData'] = entity.extraData?.toJson();
  data['hasMore'] = entity.hasMore;
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  data['limitId'] = entity.limitId;
  data['pageCount'] = entity.pageCount;
  data['totalCount'] = entity.totalCount;
  return data;
}

extension CommunityDataEntityExtension on CommunityDataEntity {
  CommunityDataEntity copyWith({
    String? cursor,
    CommunityDataExtraData? extraData,
    bool? hasMore,
    List<CommunityDataItemList>? itemList,
    int? limitId,
    int? pageCount,
    int? totalCount,
  }) {
    return CommunityDataEntity()
      ..cursor = cursor ?? this.cursor
      ..extraData = extraData ?? this.extraData
      ..hasMore = hasMore ?? this.hasMore
      ..itemList = itemList ?? this.itemList
      ..limitId = limitId ?? this.limitId
      ..pageCount = pageCount ?? this.pageCount
      ..totalCount = totalCount ?? this.totalCount;
  }
}

CommunityDataExtraData $CommunityDataExtraDataFromJson(
    Map<String, dynamic> json) {
  final CommunityDataExtraData communityDataExtraData = CommunityDataExtraData();
  return communityDataExtraData;
}

Map<String, dynamic> $CommunityDataExtraDataToJson(
    CommunityDataExtraData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  return data;
}

extension CommunityDataExtraDataExtension on CommunityDataExtraData {
}

CommunityDataItemList $CommunityDataItemListFromJson(
    Map<String, dynamic> json) {
  final CommunityDataItemList communityDataItemList = CommunityDataItemList();
  final List<dynamic>? appendList = (json['appendList'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (appendList != null) {
    communityDataItemList.appendList = appendList;
  }
  final int? attr = jsonConvert.convert<int>(json['attr']);
  if (attr != null) {
    communityDataItemList.attr = attr;
  }
  final dynamic audio = json['audio'];
  if (audio != null) {
    communityDataItemList.audio = audio;
  }
  final CommunityDataItemListAuthor? author = jsonConvert.convert<
      CommunityDataItemListAuthor>(json['author']);
  if (author != null) {
    communityDataItemList.author = author;
  }
  final dynamic carSerial = json['carSerial'];
  if (carSerial != null) {
    communityDataItemList.carSerial = carSerial;
  }
  final bool? closedComment = jsonConvert.convert<bool>(json['closedComment']);
  if (closedComment != null) {
    communityDataItemList.closedComment = closedComment;
  }
  final int? collectionCount = jsonConvert.convert<int>(
      json['collectionCount']);
  if (collectionCount != null) {
    communityDataItemList.collectionCount = collectionCount;
  }
  final int? commentCount = jsonConvert.convert<int>(json['commentCount']);
  if (commentCount != null) {
    communityDataItemList.commentCount = commentCount;
  }
  final String? content = jsonConvert.convert<String>(json['content']);
  if (content != null) {
    communityDataItemList.content = content;
  }
  final int? contentType = jsonConvert.convert<int>(json['contentType']);
  if (contentType != null) {
    communityDataItemList.contentType = contentType;
  }
  final int? createTime = jsonConvert.convert<int>(json['createTime']);
  if (createTime != null) {
    communityDataItemList.createTime = createTime;
  }
  final String? extraData = jsonConvert.convert<String>(json['extraData']);
  if (extraData != null) {
    communityDataItemList.extraData = extraData;
  }
  final bool? favorable = jsonConvert.convert<bool>(json['favorable']);
  if (favorable != null) {
    communityDataItemList.favorable = favorable;
  }
  final int? groupId = jsonConvert.convert<int>(json['groupId']);
  if (groupId != null) {
    communityDataItemList.groupId = groupId;
  }
  final dynamic guessDetail = json['guessDetail'];
  if (guessDetail != null) {
    communityDataItemList.guessDetail = guessDetail;
  }
  final bool? hot = jsonConvert.convert<bool>(json['hot']);
  if (hot != null) {
    communityDataItemList.hot = hot;
  }
  final dynamic hotCommentData = json['hotCommentData'];
  if (hotCommentData != null) {
    communityDataItemList.hotCommentData = hotCommentData;
  }
  final List<
      CommunityDataItemListImageList>? imageList = (json['imageList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<CommunityDataItemListImageList>(
          e) as CommunityDataItemListImageList).toList();
  if (imageList != null) {
    communityDataItemList.imageList = imageList;
  }
  final bool? jinghuaRequest = jsonConvert.convert<bool>(
      json['jinghuaRequest']);
  if (jinghuaRequest != null) {
    communityDataItemList.jinghuaRequest = jinghuaRequest;
  }
  final int? jinghuaTime = jsonConvert.convert<int>(json['jinghuaTime']);
  if (jinghuaTime != null) {
    communityDataItemList.jinghuaTime = jinghuaTime;
  }
  final int? lastReplyTime = jsonConvert.convert<int>(json['lastReplyTime']);
  if (lastReplyTime != null) {
    communityDataItemList.lastReplyTime = lastReplyTime;
  }
  final int? limitId = jsonConvert.convert<int>(json['limitId']);
  if (limitId != null) {
    communityDataItemList.limitId = limitId;
  }
  final String? location = jsonConvert.convert<String>(json['location']);
  if (location != null) {
    communityDataItemList.location = location;
  }
  final bool? myself = jsonConvert.convert<bool>(json['myself']);
  if (myself != null) {
    communityDataItemList.myself = myself;
  }
  final dynamic quoteData = json['quoteData'];
  if (quoteData != null) {
    communityDataItemList.quoteData = quoteData;
  }
  final int? readCount = jsonConvert.convert<int>(json['readCount']);
  if (readCount != null) {
    communityDataItemList.readCount = readCount;
  }
  final bool? review = jsonConvert.convert<bool>(json['review']);
  if (review != null) {
    communityDataItemList.review = review;
  }
  final List<dynamic>? rewardList = (json['rewardList'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (rewardList != null) {
    communityDataItemList.rewardList = rewardList;
  }
  final List<
      CommunityDataItemListServiceList>? serviceList = (json['serviceList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<CommunityDataItemListServiceList>(
          e) as CommunityDataItemListServiceList).toList();
  if (serviceList != null) {
    communityDataItemList.serviceList = serviceList;
  }
  final String? shareUrl = jsonConvert.convert<String>(json['shareUrl']);
  if (shareUrl != null) {
    communityDataItemList.shareUrl = shareUrl;
  }
  final int? subjectId = jsonConvert.convert<int>(json['subjectId']);
  if (subjectId != null) {
    communityDataItemList.subjectId = subjectId;
  }
  final String? subjectName = jsonConvert.convert<String>(json['subjectName']);
  if (subjectName != null) {
    communityDataItemList.subjectName = subjectName;
  }
  final String? summary = jsonConvert.convert<String>(json['summary']);
  if (summary != null) {
    communityDataItemList.summary = summary;
  }
  final int? tagId = jsonConvert.convert<int>(json['tagId']);
  if (tagId != null) {
    communityDataItemList.tagId = tagId;
  }
  final List<CommunityDataItemListTagList>? tagList = (json['tagList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<CommunityDataItemListTagList>(
          e) as CommunityDataItemListTagList).toList();
  if (tagList != null) {
    communityDataItemList.tagList = tagList;
  }
  final String? tagName = jsonConvert.convert<String>(json['tagName']);
  if (tagName != null) {
    communityDataItemList.tagName = tagName;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    communityDataItemList.title = title;
  }
  final int? topicId = jsonConvert.convert<int>(json['topicId']);
  if (topicId != null) {
    communityDataItemList.topicId = topicId;
  }
  final int? topicOperation = jsonConvert.convert<int>(json['topicOperation']);
  if (topicOperation != null) {
    communityDataItemList.topicOperation = topicOperation;
  }
  final int? topicType = jsonConvert.convert<int>(json['topicType']);
  if (topicType != null) {
    communityDataItemList.topicType = topicType;
  }
  final dynamic video = json['video'];
  if (video != null) {
    communityDataItemList.video = video;
  }
  final String? webId = jsonConvert.convert<String>(json['webId']);
  if (webId != null) {
    communityDataItemList.webId = webId;
  }
  final int? zanCount = jsonConvert.convert<int>(json['zanCount']);
  if (zanCount != null) {
    communityDataItemList.zanCount = zanCount;
  }
  final List<dynamic>? zanList = (json['zanList'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (zanList != null) {
    communityDataItemList.zanList = zanList;
  }
  final bool? zanable = jsonConvert.convert<bool>(json['zanable']);
  if (zanable != null) {
    communityDataItemList.zanable = zanable;
  }
  return communityDataItemList;
}

Map<String, dynamic> $CommunityDataItemListToJson(
    CommunityDataItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['appendList'] = entity.appendList;
  data['attr'] = entity.attr;
  data['audio'] = entity.audio;
  data['author'] = entity.author?.toJson();
  data['carSerial'] = entity.carSerial;
  data['closedComment'] = entity.closedComment;
  data['collectionCount'] = entity.collectionCount;
  data['commentCount'] = entity.commentCount;
  data['content'] = entity.content;
  data['contentType'] = entity.contentType;
  data['createTime'] = entity.createTime;
  data['extraData'] = entity.extraData;
  data['favorable'] = entity.favorable;
  data['groupId'] = entity.groupId;
  data['guessDetail'] = entity.guessDetail;
  data['hot'] = entity.hot;
  data['hotCommentData'] = entity.hotCommentData;
  data['imageList'] = entity.imageList?.map((v) => v.toJson()).toList();
  data['jinghuaRequest'] = entity.jinghuaRequest;
  data['jinghuaTime'] = entity.jinghuaTime;
  data['lastReplyTime'] = entity.lastReplyTime;
  data['limitId'] = entity.limitId;
  data['location'] = entity.location;
  data['myself'] = entity.myself;
  data['quoteData'] = entity.quoteData;
  data['readCount'] = entity.readCount;
  data['review'] = entity.review;
  data['rewardList'] = entity.rewardList;
  data['serviceList'] = entity.serviceList?.map((v) => v.toJson()).toList();
  data['shareUrl'] = entity.shareUrl;
  data['subjectId'] = entity.subjectId;
  data['subjectName'] = entity.subjectName;
  data['summary'] = entity.summary;
  data['tagId'] = entity.tagId;
  data['tagList'] = entity.tagList?.map((v) => v.toJson()).toList();
  data['tagName'] = entity.tagName;
  data['title'] = entity.title;
  data['topicId'] = entity.topicId;
  data['topicOperation'] = entity.topicOperation;
  data['topicType'] = entity.topicType;
  data['video'] = entity.video;
  data['webId'] = entity.webId;
  data['zanCount'] = entity.zanCount;
  data['zanList'] = entity.zanList;
  data['zanable'] = entity.zanable;
  return data;
}

extension CommunityDataItemListExtension on CommunityDataItemList {
  CommunityDataItemList copyWith({
    List<dynamic>? appendList,
    int? attr,
    dynamic audio,
    CommunityDataItemListAuthor? author,
    dynamic carSerial,
    bool? closedComment,
    int? collectionCount,
    int? commentCount,
    String? content,
    int? contentType,
    int? createTime,
    String? extraData,
    bool? favorable,
    int? groupId,
    dynamic guessDetail,
    bool? hot,
    dynamic hotCommentData,
    List<CommunityDataItemListImageList>? imageList,
    bool? jinghuaRequest,
    int? jinghuaTime,
    int? lastReplyTime,
    int? limitId,
    String? location,
    bool? myself,
    dynamic quoteData,
    int? readCount,
    bool? review,
    List<dynamic>? rewardList,
    List<CommunityDataItemListServiceList>? serviceList,
    String? shareUrl,
    int? subjectId,
    String? subjectName,
    String? summary,
    int? tagId,
    List<CommunityDataItemListTagList>? tagList,
    String? tagName,
    String? title,
    int? topicId,
    int? topicOperation,
    int? topicType,
    dynamic video,
    String? webId,
    int? zanCount,
    List<dynamic>? zanList,
    bool? zanable,
  }) {
    return CommunityDataItemList()
      ..appendList = appendList ?? this.appendList
      ..attr = attr ?? this.attr
      ..audio = audio ?? this.audio
      ..author = author ?? this.author
      ..carSerial = carSerial ?? this.carSerial
      ..closedComment = closedComment ?? this.closedComment
      ..collectionCount = collectionCount ?? this.collectionCount
      ..commentCount = commentCount ?? this.commentCount
      ..content = content ?? this.content
      ..contentType = contentType ?? this.contentType
      ..createTime = createTime ?? this.createTime
      ..extraData = extraData ?? this.extraData
      ..favorable = favorable ?? this.favorable
      ..groupId = groupId ?? this.groupId
      ..guessDetail = guessDetail ?? this.guessDetail
      ..hot = hot ?? this.hot
      ..hotCommentData = hotCommentData ?? this.hotCommentData
      ..imageList = imageList ?? this.imageList
      ..jinghuaRequest = jinghuaRequest ?? this.jinghuaRequest
      ..jinghuaTime = jinghuaTime ?? this.jinghuaTime
      ..lastReplyTime = lastReplyTime ?? this.lastReplyTime
      ..limitId = limitId ?? this.limitId
      ..location = location ?? this.location
      ..myself = myself ?? this.myself
      ..quoteData = quoteData ?? this.quoteData
      ..readCount = readCount ?? this.readCount
      ..review = review ?? this.review
      ..rewardList = rewardList ?? this.rewardList
      ..serviceList = serviceList ?? this.serviceList
      ..shareUrl = shareUrl ?? this.shareUrl
      ..subjectId = subjectId ?? this.subjectId
      ..subjectName = subjectName ?? this.subjectName
      ..summary = summary ?? this.summary
      ..tagId = tagId ?? this.tagId
      ..tagList = tagList ?? this.tagList
      ..tagName = tagName ?? this.tagName
      ..title = title ?? this.title
      ..topicId = topicId ?? this.topicId
      ..topicOperation = topicOperation ?? this.topicOperation
      ..topicType = topicType ?? this.topicType
      ..video = video ?? this.video
      ..webId = webId ?? this.webId
      ..zanCount = zanCount ?? this.zanCount
      ..zanList = zanList ?? this.zanList
      ..zanable = zanable ?? this.zanable;
  }
}

CommunityDataItemListAuthor $CommunityDataItemListAuthorFromJson(
    Map<String, dynamic> json) {
  final CommunityDataItemListAuthor communityDataItemListAuthor = CommunityDataItemListAuthor();
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    communityDataItemListAuthor.avatar = avatar;
  }
  final String? avatarWidgetUrl = jsonConvert.convert<String>(
      json['avatarWidgetUrl']);
  if (avatarWidgetUrl != null) {
    communityDataItemListAuthor.avatarWidgetUrl = avatarWidgetUrl;
  }
  final int? businessIdentity = jsonConvert.convert<int>(
      json['businessIdentity']);
  if (businessIdentity != null) {
    communityDataItemListAuthor.businessIdentity = businessIdentity;
  }
  final List<
      CommunityDataItemListAuthorBusinessIdentityList>? businessIdentityList = (json['businessIdentityList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          CommunityDataItemListAuthorBusinessIdentityList>(
          e) as CommunityDataItemListAuthorBusinessIdentityList).toList();
  if (businessIdentityList != null) {
    communityDataItemListAuthor.businessIdentityList = businessIdentityList;
  }
  final List<dynamic>? carCertificateList = (json['carCertificateList'] as List<
      dynamic>?)?.map(
          (e) => e).toList();
  if (carCertificateList != null) {
    communityDataItemListAuthor.carCertificateList = carCertificateList;
  }
  final int? carCertificateStatus = jsonConvert.convert<int>(
      json['carCertificateStatus']);
  if (carCertificateStatus != null) {
    communityDataItemListAuthor.carCertificateStatus = carCertificateStatus;
  }
  final String? cityCode = jsonConvert.convert<String>(json['cityCode']);
  if (cityCode != null) {
    communityDataItemListAuthor.cityCode = cityCode;
  }
  final String? cityName = jsonConvert.convert<String>(json['cityName']);
  if (cityName != null) {
    communityDataItemListAuthor.cityName = cityName;
  }
  final int? commentCount = jsonConvert.convert<int>(json['commentCount']);
  if (commentCount != null) {
    communityDataItemListAuthor.commentCount = commentCount;
  }
  final int? createTime = jsonConvert.convert<int>(json['createTime']);
  if (createTime != null) {
    communityDataItemListAuthor.createTime = createTime;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    communityDataItemListAuthor.description = description;
  }
  final int? followMeCount = jsonConvert.convert<int>(json['followMeCount']);
  if (followMeCount != null) {
    communityDataItemListAuthor.followMeCount = followMeCount;
  }
  final int? followStatus = jsonConvert.convert<int>(json['followStatus']);
  if (followStatus != null) {
    communityDataItemListAuthor.followStatus = followStatus;
  }
  final String? gender = jsonConvert.convert<String>(json['gender']);
  if (gender != null) {
    communityDataItemListAuthor.gender = gender;
  }
  final int? identity = jsonConvert.convert<int>(json['identity']);
  if (identity != null) {
    communityDataItemListAuthor.identity = identity;
  }
  final String? identityName = jsonConvert.convert<String>(
      json['identityName']);
  if (identityName != null) {
    communityDataItemListAuthor.identityName = identityName;
  }
  final bool? internal = jsonConvert.convert<bool>(json['internal']);
  if (internal != null) {
    communityDataItemListAuthor.internal = internal;
  }
  final bool? jiaxiaoCoach = jsonConvert.convert<bool>(json['jiaxiaoCoach']);
  if (jiaxiaoCoach != null) {
    communityDataItemListAuthor.jiaxiaoCoach = jiaxiaoCoach;
  }
  final int? level = jsonConvert.convert<int>(json['level']);
  if (level != null) {
    communityDataItemListAuthor.level = level;
  }
  final dynamic location = json['location'];
  if (location != null) {
    communityDataItemListAuthor.location = location;
  }
  final bool? manager = jsonConvert.convert<bool>(json['manager']);
  if (manager != null) {
    communityDataItemListAuthor.manager = manager;
  }
  final int? medalCount = jsonConvert.convert<int>(json['medalCount']);
  if (medalCount != null) {
    communityDataItemListAuthor.medalCount = medalCount;
  }
  final List<dynamic>? medalList = (json['medalList'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (medalList != null) {
    communityDataItemListAuthor.medalList = medalList;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    communityDataItemListAuthor.name = name;
  }
  final String? nameColor = jsonConvert.convert<String>(json['nameColor']);
  if (nameColor != null) {
    communityDataItemListAuthor.nameColor = nameColor;
  }
  final String? schoolCode = jsonConvert.convert<String>(json['schoolCode']);
  if (schoolCode != null) {
    communityDataItemListAuthor.schoolCode = schoolCode;
  }
  final String? schoolName = jsonConvert.convert<String>(json['schoolName']);
  if (schoolName != null) {
    communityDataItemListAuthor.schoolName = schoolName;
  }
  final String? ssoNickname = jsonConvert.convert<String>(json['ssoNickname']);
  if (ssoNickname != null) {
    communityDataItemListAuthor.ssoNickname = ssoNickname;
  }
  final String? subDescription = jsonConvert.convert<String>(
      json['subDescription']);
  if (subDescription != null) {
    communityDataItemListAuthor.subDescription = subDescription;
  }
  final int? topicCount = jsonConvert.convert<int>(json['topicCount']);
  if (topicCount != null) {
    communityDataItemListAuthor.topicCount = topicCount;
  }
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    communityDataItemListAuthor.userId = userId;
  }
  return communityDataItemListAuthor;
}

Map<String, dynamic> $CommunityDataItemListAuthorToJson(
    CommunityDataItemListAuthor entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['avatar'] = entity.avatar;
  data['avatarWidgetUrl'] = entity.avatarWidgetUrl;
  data['businessIdentity'] = entity.businessIdentity;
  data['businessIdentityList'] =
      entity.businessIdentityList?.map((v) => v.toJson()).toList();
  data['carCertificateList'] = entity.carCertificateList;
  data['carCertificateStatus'] = entity.carCertificateStatus;
  data['cityCode'] = entity.cityCode;
  data['cityName'] = entity.cityName;
  data['commentCount'] = entity.commentCount;
  data['createTime'] = entity.createTime;
  data['description'] = entity.description;
  data['followMeCount'] = entity.followMeCount;
  data['followStatus'] = entity.followStatus;
  data['gender'] = entity.gender;
  data['identity'] = entity.identity;
  data['identityName'] = entity.identityName;
  data['internal'] = entity.internal;
  data['jiaxiaoCoach'] = entity.jiaxiaoCoach;
  data['level'] = entity.level;
  data['location'] = entity.location;
  data['manager'] = entity.manager;
  data['medalCount'] = entity.medalCount;
  data['medalList'] = entity.medalList;
  data['name'] = entity.name;
  data['nameColor'] = entity.nameColor;
  data['schoolCode'] = entity.schoolCode;
  data['schoolName'] = entity.schoolName;
  data['ssoNickname'] = entity.ssoNickname;
  data['subDescription'] = entity.subDescription;
  data['topicCount'] = entity.topicCount;
  data['userId'] = entity.userId;
  return data;
}

extension CommunityDataItemListAuthorExtension on CommunityDataItemListAuthor {
  CommunityDataItemListAuthor copyWith({
    String? avatar,
    String? avatarWidgetUrl,
    int? businessIdentity,
    List<CommunityDataItemListAuthorBusinessIdentityList>? businessIdentityList,
    List<dynamic>? carCertificateList,
    int? carCertificateStatus,
    String? cityCode,
    String? cityName,
    int? commentCount,
    int? createTime,
    String? description,
    int? followMeCount,
    int? followStatus,
    String? gender,
    int? identity,
    String? identityName,
    bool? internal,
    bool? jiaxiaoCoach,
    int? level,
    dynamic location,
    bool? manager,
    int? medalCount,
    List<dynamic>? medalList,
    String? name,
    String? nameColor,
    String? schoolCode,
    String? schoolName,
    String? ssoNickname,
    String? subDescription,
    int? topicCount,
    String? userId,
  }) {
    return CommunityDataItemListAuthor()
      ..avatar = avatar ?? this.avatar
      ..avatarWidgetUrl = avatarWidgetUrl ?? this.avatarWidgetUrl
      ..businessIdentity = businessIdentity ?? this.businessIdentity
      ..businessIdentityList = businessIdentityList ?? this.businessIdentityList
      ..carCertificateList = carCertificateList ?? this.carCertificateList
      ..carCertificateStatus = carCertificateStatus ?? this.carCertificateStatus
      ..cityCode = cityCode ?? this.cityCode
      ..cityName = cityName ?? this.cityName
      ..commentCount = commentCount ?? this.commentCount
      ..createTime = createTime ?? this.createTime
      ..description = description ?? this.description
      ..followMeCount = followMeCount ?? this.followMeCount
      ..followStatus = followStatus ?? this.followStatus
      ..gender = gender ?? this.gender
      ..identity = identity ?? this.identity
      ..identityName = identityName ?? this.identityName
      ..internal = internal ?? this.internal
      ..jiaxiaoCoach = jiaxiaoCoach ?? this.jiaxiaoCoach
      ..level = level ?? this.level
      ..location = location ?? this.location
      ..manager = manager ?? this.manager
      ..medalCount = medalCount ?? this.medalCount
      ..medalList = medalList ?? this.medalList
      ..name = name ?? this.name
      ..nameColor = nameColor ?? this.nameColor
      ..schoolCode = schoolCode ?? this.schoolCode
      ..schoolName = schoolName ?? this.schoolName
      ..ssoNickname = ssoNickname ?? this.ssoNickname
      ..subDescription = subDescription ?? this.subDescription
      ..topicCount = topicCount ?? this.topicCount
      ..userId = userId ?? this.userId;
  }
}

CommunityDataItemListAuthorBusinessIdentityList $CommunityDataItemListAuthorBusinessIdentityListFromJson(
    Map<String, dynamic> json) {
  final CommunityDataItemListAuthorBusinessIdentityList communityDataItemListAuthorBusinessIdentityList = CommunityDataItemListAuthorBusinessIdentityList();
  final String? actionUrl = jsonConvert.convert<String>(json['actionUrl']);
  if (actionUrl != null) {
    communityDataItemListAuthorBusinessIdentityList.actionUrl = actionUrl;
  }
  final String? conditions = jsonConvert.convert<String>(json['conditions']);
  if (conditions != null) {
    communityDataItemListAuthorBusinessIdentityList.conditions = conditions;
  }
  final int? height = jsonConvert.convert<int>(json['height']);
  if (height != null) {
    communityDataItemListAuthorBusinessIdentityList.height = height;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    communityDataItemListAuthorBusinessIdentityList.id = id;
  }
  final String? imageUrl = jsonConvert.convert<String>(json['imageUrl']);
  if (imageUrl != null) {
    communityDataItemListAuthorBusinessIdentityList.imageUrl = imageUrl;
  }
  final String? subTitle = jsonConvert.convert<String>(json['subTitle']);
  if (subTitle != null) {
    communityDataItemListAuthorBusinessIdentityList.subTitle = subTitle;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    communityDataItemListAuthorBusinessIdentityList.title = title;
  }
  final int? width = jsonConvert.convert<int>(json['width']);
  if (width != null) {
    communityDataItemListAuthorBusinessIdentityList.width = width;
  }
  return communityDataItemListAuthorBusinessIdentityList;
}

Map<String, dynamic> $CommunityDataItemListAuthorBusinessIdentityListToJson(
    CommunityDataItemListAuthorBusinessIdentityList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['actionUrl'] = entity.actionUrl;
  data['conditions'] = entity.conditions;
  data['height'] = entity.height;
  data['id'] = entity.id;
  data['imageUrl'] = entity.imageUrl;
  data['subTitle'] = entity.subTitle;
  data['title'] = entity.title;
  data['width'] = entity.width;
  return data;
}

extension CommunityDataItemListAuthorBusinessIdentityListExtension on CommunityDataItemListAuthorBusinessIdentityList {
  CommunityDataItemListAuthorBusinessIdentityList copyWith({
    String? actionUrl,
    String? conditions,
    int? height,
    int? id,
    String? imageUrl,
    String? subTitle,
    String? title,
    int? width,
  }) {
    return CommunityDataItemListAuthorBusinessIdentityList()
      ..actionUrl = actionUrl ?? this.actionUrl
      ..conditions = conditions ?? this.conditions
      ..height = height ?? this.height
      ..id = id ?? this.id
      ..imageUrl = imageUrl ?? this.imageUrl
      ..subTitle = subTitle ?? this.subTitle
      ..title = title ?? this.title
      ..width = width ?? this.width;
  }
}

CommunityDataItemListImageList $CommunityDataItemListImageListFromJson(
    Map<String, dynamic> json) {
  final CommunityDataItemListImageList communityDataItemListImageList = CommunityDataItemListImageList();
  final CommunityDataItemListImageListDetail? detail = jsonConvert.convert<
      CommunityDataItemListImageListDetail>(json['detail']);
  if (detail != null) {
    communityDataItemListImageList.detail = detail;
  }
  final CommunityDataItemListImageListList? list = jsonConvert.convert<
      CommunityDataItemListImageListList>(json['list']);
  if (list != null) {
    communityDataItemListImageList.list = list;
  }
  return communityDataItemListImageList;
}

Map<String, dynamic> $CommunityDataItemListImageListToJson(
    CommunityDataItemListImageList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['detail'] = entity.detail?.toJson();
  data['list'] = entity.list?.toJson();
  return data;
}

extension CommunityDataItemListImageListExtension on CommunityDataItemListImageList {
  CommunityDataItemListImageList copyWith({
    CommunityDataItemListImageListDetail? detail,
    CommunityDataItemListImageListList? list,
  }) {
    return CommunityDataItemListImageList()
      ..detail = detail ?? this.detail
      ..list = list ?? this.list;
  }
}

CommunityDataItemListImageListDetail $CommunityDataItemListImageListDetailFromJson(
    Map<String, dynamic> json) {
  final CommunityDataItemListImageListDetail communityDataItemListImageListDetail = CommunityDataItemListImageListDetail();
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    communityDataItemListImageListDetail.description = description;
  }
  final String? fileKey = jsonConvert.convert<String>(json['fileKey']);
  if (fileKey != null) {
    communityDataItemListImageListDetail.fileKey = fileKey;
  }
  final int? height = jsonConvert.convert<int>(json['height']);
  if (height != null) {
    communityDataItemListImageListDetail.height = height;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    communityDataItemListImageListDetail.url = url;
  }
  final String? urlBk = jsonConvert.convert<String>(json['urlBk']);
  if (urlBk != null) {
    communityDataItemListImageListDetail.urlBk = urlBk;
  }
  final int? width = jsonConvert.convert<int>(json['width']);
  if (width != null) {
    communityDataItemListImageListDetail.width = width;
  }
  return communityDataItemListImageListDetail;
}

Map<String, dynamic> $CommunityDataItemListImageListDetailToJson(
    CommunityDataItemListImageListDetail entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['description'] = entity.description;
  data['fileKey'] = entity.fileKey;
  data['height'] = entity.height;
  data['url'] = entity.url;
  data['urlBk'] = entity.urlBk;
  data['width'] = entity.width;
  return data;
}

extension CommunityDataItemListImageListDetailExtension on CommunityDataItemListImageListDetail {
  CommunityDataItemListImageListDetail copyWith({
    String? description,
    String? fileKey,
    int? height,
    String? url,
    String? urlBk,
    int? width,
  }) {
    return CommunityDataItemListImageListDetail()
      ..description = description ?? this.description
      ..fileKey = fileKey ?? this.fileKey
      ..height = height ?? this.height
      ..url = url ?? this.url
      ..urlBk = urlBk ?? this.urlBk
      ..width = width ?? this.width;
  }
}

CommunityDataItemListImageListList $CommunityDataItemListImageListListFromJson(
    Map<String, dynamic> json) {
  final CommunityDataItemListImageListList communityDataItemListImageListList = CommunityDataItemListImageListList();
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    communityDataItemListImageListList.description = description;
  }
  final String? fileKey = jsonConvert.convert<String>(json['fileKey']);
  if (fileKey != null) {
    communityDataItemListImageListList.fileKey = fileKey;
  }
  final int? height = jsonConvert.convert<int>(json['height']);
  if (height != null) {
    communityDataItemListImageListList.height = height;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    communityDataItemListImageListList.url = url;
  }
  final String? urlBk = jsonConvert.convert<String>(json['urlBk']);
  if (urlBk != null) {
    communityDataItemListImageListList.urlBk = urlBk;
  }
  final int? width = jsonConvert.convert<int>(json['width']);
  if (width != null) {
    communityDataItemListImageListList.width = width;
  }
  return communityDataItemListImageListList;
}

Map<String, dynamic> $CommunityDataItemListImageListListToJson(
    CommunityDataItemListImageListList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['description'] = entity.description;
  data['fileKey'] = entity.fileKey;
  data['height'] = entity.height;
  data['url'] = entity.url;
  data['urlBk'] = entity.urlBk;
  data['width'] = entity.width;
  return data;
}

extension CommunityDataItemListImageListListExtension on CommunityDataItemListImageListList {
  CommunityDataItemListImageListList copyWith({
    String? description,
    String? fileKey,
    int? height,
    String? url,
    String? urlBk,
    int? width,
  }) {
    return CommunityDataItemListImageListList()
      ..description = description ?? this.description
      ..fileKey = fileKey ?? this.fileKey
      ..height = height ?? this.height
      ..url = url ?? this.url
      ..urlBk = urlBk ?? this.urlBk
      ..width = width ?? this.width;
  }
}

CommunityDataItemListServiceList $CommunityDataItemListServiceListFromJson(
    Map<String, dynamic> json) {
  final CommunityDataItemListServiceList communityDataItemListServiceList = CommunityDataItemListServiceList();
  final String? actionUrl = jsonConvert.convert<String>(json['actionUrl']);
  if (actionUrl != null) {
    communityDataItemListServiceList.actionUrl = actionUrl;
  }
  final String? conditions = jsonConvert.convert<String>(json['conditions']);
  if (conditions != null) {
    communityDataItemListServiceList.conditions = conditions;
  }
  final int? height = jsonConvert.convert<int>(json['height']);
  if (height != null) {
    communityDataItemListServiceList.height = height;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    communityDataItemListServiceList.id = id;
  }
  final String? imageUrl = jsonConvert.convert<String>(json['imageUrl']);
  if (imageUrl != null) {
    communityDataItemListServiceList.imageUrl = imageUrl;
  }
  final String? subTitle = jsonConvert.convert<String>(json['subTitle']);
  if (subTitle != null) {
    communityDataItemListServiceList.subTitle = subTitle;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    communityDataItemListServiceList.title = title;
  }
  final int? width = jsonConvert.convert<int>(json['width']);
  if (width != null) {
    communityDataItemListServiceList.width = width;
  }
  return communityDataItemListServiceList;
}

Map<String, dynamic> $CommunityDataItemListServiceListToJson(
    CommunityDataItemListServiceList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['actionUrl'] = entity.actionUrl;
  data['conditions'] = entity.conditions;
  data['height'] = entity.height;
  data['id'] = entity.id;
  data['imageUrl'] = entity.imageUrl;
  data['subTitle'] = entity.subTitle;
  data['title'] = entity.title;
  data['width'] = entity.width;
  return data;
}

extension CommunityDataItemListServiceListExtension on CommunityDataItemListServiceList {
  CommunityDataItemListServiceList copyWith({
    String? actionUrl,
    String? conditions,
    int? height,
    int? id,
    String? imageUrl,
    String? subTitle,
    String? title,
    int? width,
  }) {
    return CommunityDataItemListServiceList()
      ..actionUrl = actionUrl ?? this.actionUrl
      ..conditions = conditions ?? this.conditions
      ..height = height ?? this.height
      ..id = id ?? this.id
      ..imageUrl = imageUrl ?? this.imageUrl
      ..subTitle = subTitle ?? this.subTitle
      ..title = title ?? this.title
      ..width = width ?? this.width;
  }
}

CommunityDataItemListTagList $CommunityDataItemListTagListFromJson(
    Map<String, dynamic> json) {
  final CommunityDataItemListTagList communityDataItemListTagList = CommunityDataItemListTagList();
  final dynamic askTagInfo = json['askTagInfo'];
  if (askTagInfo != null) {
    communityDataItemListTagList.askTagInfo = askTagInfo;
  }
  final String? banner = jsonConvert.convert<String>(json['banner']);
  if (banner != null) {
    communityDataItemListTagList.banner = banner;
  }
  final String? bannerActionUrl = jsonConvert.convert<String>(
      json['bannerActionUrl']);
  if (bannerActionUrl != null) {
    communityDataItemListTagList.bannerActionUrl = bannerActionUrl;
  }
  final CommunityDataItemListTagListConfig? config = jsonConvert.convert<
      CommunityDataItemListTagListConfig>(json['config']);
  if (config != null) {
    communityDataItemListTagList.config = config;
  }
  final dynamic darenSimple = json['darenSimple'];
  if (darenSimple != null) {
    communityDataItemListTagList.darenSimple = darenSimple;
  }
  final CommunityDataItemListTagListExtraData? extraData = jsonConvert.convert<
      CommunityDataItemListTagListExtraData>(json['extraData']);
  if (extraData != null) {
    communityDataItemListTagList.extraData = extraData;
  }
  final String? introduction = jsonConvert.convert<String>(
      json['introduction']);
  if (introduction != null) {
    communityDataItemListTagList.introduction = introduction;
  }
  final String? introductionActionUrl = jsonConvert.convert<String>(
      json['introductionActionUrl']);
  if (introductionActionUrl != null) {
    communityDataItemListTagList.introductionActionUrl = introductionActionUrl;
  }
  final bool? joined = jsonConvert.convert<bool>(json['joined']);
  if (joined != null) {
    communityDataItemListTagList.joined = joined;
  }
  final String? labelName = jsonConvert.convert<String>(json['labelName']);
  if (labelName != null) {
    communityDataItemListTagList.labelName = labelName;
  }
  final String? logo = jsonConvert.convert<String>(json['logo']);
  if (logo != null) {
    communityDataItemListTagList.logo = logo;
  }
  final int? memberCount = jsonConvert.convert<int>(json['memberCount']);
  if (memberCount != null) {
    communityDataItemListTagList.memberCount = memberCount;
  }
  final int? newTopicCount = jsonConvert.convert<int>(json['newTopicCount']);
  if (newTopicCount != null) {
    communityDataItemListTagList.newTopicCount = newTopicCount;
  }
  final List<dynamic>? noticeList = (json['noticeList'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (noticeList != null) {
    communityDataItemListTagList.noticeList = noticeList;
  }
  final List<dynamic>? relatedTags = (json['relatedTags'] as List<dynamic>?)
      ?.map(
          (e) => e)
      .toList();
  if (relatedTags != null) {
    communityDataItemListTagList.relatedTags = relatedTags;
  }
  final int? tagId = jsonConvert.convert<int>(json['tagId']);
  if (tagId != null) {
    communityDataItemListTagList.tagId = tagId;
  }
  final String? tagName = jsonConvert.convert<String>(json['tagName']);
  if (tagName != null) {
    communityDataItemListTagList.tagName = tagName;
  }
  final int? tagType = jsonConvert.convert<int>(json['tagType']);
  if (tagType != null) {
    communityDataItemListTagList.tagType = tagType;
  }
  final int? topicCount = jsonConvert.convert<int>(json['topicCount']);
  if (topicCount != null) {
    communityDataItemListTagList.topicCount = topicCount;
  }
  return communityDataItemListTagList;
}

Map<String, dynamic> $CommunityDataItemListTagListToJson(
    CommunityDataItemListTagList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['askTagInfo'] = entity.askTagInfo;
  data['banner'] = entity.banner;
  data['bannerActionUrl'] = entity.bannerActionUrl;
  data['config'] = entity.config?.toJson();
  data['darenSimple'] = entity.darenSimple;
  data['extraData'] = entity.extraData?.toJson();
  data['introduction'] = entity.introduction;
  data['introductionActionUrl'] = entity.introductionActionUrl;
  data['joined'] = entity.joined;
  data['labelName'] = entity.labelName;
  data['logo'] = entity.logo;
  data['memberCount'] = entity.memberCount;
  data['newTopicCount'] = entity.newTopicCount;
  data['noticeList'] = entity.noticeList;
  data['relatedTags'] = entity.relatedTags;
  data['tagId'] = entity.tagId;
  data['tagName'] = entity.tagName;
  data['tagType'] = entity.tagType;
  data['topicCount'] = entity.topicCount;
  return data;
}

extension CommunityDataItemListTagListExtension on CommunityDataItemListTagList {
  CommunityDataItemListTagList copyWith({
    dynamic askTagInfo,
    String? banner,
    String? bannerActionUrl,
    CommunityDataItemListTagListConfig? config,
    dynamic darenSimple,
    CommunityDataItemListTagListExtraData? extraData,
    String? introduction,
    String? introductionActionUrl,
    bool? joined,
    String? labelName,
    String? logo,
    int? memberCount,
    int? newTopicCount,
    List<dynamic>? noticeList,
    List<dynamic>? relatedTags,
    int? tagId,
    String? tagName,
    int? tagType,
    int? topicCount,
  }) {
    return CommunityDataItemListTagList()
      ..askTagInfo = askTagInfo ?? this.askTagInfo
      ..banner = banner ?? this.banner
      ..bannerActionUrl = bannerActionUrl ?? this.bannerActionUrl
      ..config = config ?? this.config
      ..darenSimple = darenSimple ?? this.darenSimple
      ..extraData = extraData ?? this.extraData
      ..introduction = introduction ?? this.introduction
      ..introductionActionUrl = introductionActionUrl ??
          this.introductionActionUrl
      ..joined = joined ?? this.joined
      ..labelName = labelName ?? this.labelName
      ..logo = logo ?? this.logo
      ..memberCount = memberCount ?? this.memberCount
      ..newTopicCount = newTopicCount ?? this.newTopicCount
      ..noticeList = noticeList ?? this.noticeList
      ..relatedTags = relatedTags ?? this.relatedTags
      ..tagId = tagId ?? this.tagId
      ..tagName = tagName ?? this.tagName
      ..tagType = tagType ?? this.tagType
      ..topicCount = topicCount ?? this.topicCount;
  }
}

CommunityDataItemListTagListConfig $CommunityDataItemListTagListConfigFromJson(
    Map<String, dynamic> json) {
  final CommunityDataItemListTagListConfig communityDataItemListTagListConfig = CommunityDataItemListTagListConfig();
  final List<
      int>? allowCreateTopicTypes = (json['allowCreateTopicTypes'] as List<
      dynamic>?)?.map(
          (e) => jsonConvert.convert<int>(e) as int).toList();
  if (allowCreateTopicTypes != null) {
    communityDataItemListTagListConfig.allowCreateTopicTypes =
        allowCreateTopicTypes;
  }
  final List<String>? enableApps = (json['enableApps'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (enableApps != null) {
    communityDataItemListTagListConfig.enableApps = enableApps;
  }
  final bool? openDarentang = jsonConvert.convert<bool>(json['openDarentang']);
  if (openDarentang != null) {
    communityDataItemListTagListConfig.openDarentang = openDarentang;
  }
  final List<int>? showTabs = (json['showTabs'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<int>(e) as int).toList();
  if (showTabs != null) {
    communityDataItemListTagListConfig.showTabs = showTabs;
  }
  return communityDataItemListTagListConfig;
}

Map<String, dynamic> $CommunityDataItemListTagListConfigToJson(
    CommunityDataItemListTagListConfig entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['allowCreateTopicTypes'] = entity.allowCreateTopicTypes;
  data['enableApps'] = entity.enableApps;
  data['openDarentang'] = entity.openDarentang;
  data['showTabs'] = entity.showTabs;
  return data;
}

extension CommunityDataItemListTagListConfigExtension on CommunityDataItemListTagListConfig {
  CommunityDataItemListTagListConfig copyWith({
    List<int>? allowCreateTopicTypes,
    List<String>? enableApps,
    bool? openDarentang,
    List<int>? showTabs,
  }) {
    return CommunityDataItemListTagListConfig()
      ..allowCreateTopicTypes = allowCreateTopicTypes ??
          this.allowCreateTopicTypes
      ..enableApps = enableApps ?? this.enableApps
      ..openDarentang = openDarentang ?? this.openDarentang
      ..showTabs = showTabs ?? this.showTabs;
  }
}

CommunityDataItemListTagListExtraData $CommunityDataItemListTagListExtraDataFromJson(
    Map<String, dynamic> json) {
  final CommunityDataItemListTagListExtraData communityDataItemListTagListExtraData = CommunityDataItemListTagListExtraData();
  return communityDataItemListTagListExtraData;
}

Map<String, dynamic> $CommunityDataItemListTagListExtraDataToJson(
    CommunityDataItemListTagListExtraData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  return data;
}

extension CommunityDataItemListTagListExtraDataExtension on CommunityDataItemListTagListExtraData {
}