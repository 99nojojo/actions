import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/video/message_data_entity.dart';

MessageDataEntity $MessageDataEntityFromJson(Map<String, dynamic> json) {
  final MessageDataEntity messageDataEntity = MessageDataEntity();
  final int? total = jsonConvert.convert<int>(json['total']);
  if (total != null) {
    messageDataEntity.total = total;
  }
  final bool? clearUp = jsonConvert.convert<bool>(json['clearUp']);
  if (clearUp != null) {
    messageDataEntity.clearUp = clearUp;
  }
  final List<MessageDataItemList>? itemList = (json['itemList'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<MessageDataItemList>(e) as MessageDataItemList)
      .toList();
  if (itemList != null) {
    messageDataEntity.itemList = itemList;
  }
  return messageDataEntity;
}

Map<String, dynamic> $MessageDataEntityToJson(MessageDataEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['total'] = entity.total;
  data['clearUp'] = entity.clearUp;
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  return data;
}

extension MessageDataEntityExtension on MessageDataEntity {
  MessageDataEntity copyWith({
    int? total,
    bool? clearUp,
    List<MessageDataItemList>? itemList,
  }) {
    return MessageDataEntity()
      ..total = total ?? this.total
      ..clearUp = clearUp ?? this.clearUp
      ..itemList = itemList ?? this.itemList;
  }
}

MessageDataItemList $MessageDataItemListFromJson(Map<String, dynamic> json) {
  final MessageDataItemList messageDataItemList = MessageDataItemList();
  final int? articleId = jsonConvert.convert<int>(json['articleId']);
  if (articleId != null) {
    messageDataItemList.articleId = articleId;
  }
  final MessageDataItemListAction? action = jsonConvert.convert<
      MessageDataItemListAction>(json['action']);
  if (action != null) {
    messageDataItemList.action = action;
  }
  final MessageDataItemListWeMediaProfile? weMediaProfile = jsonConvert.convert<
      MessageDataItemListWeMediaProfile>(json['weMediaProfile']);
  if (weMediaProfile != null) {
    messageDataItemList.weMediaProfile = weMediaProfile;
  }
  final int? categoryId = jsonConvert.convert<int>(json['categoryId']);
  if (categoryId != null) {
    messageDataItemList.categoryId = categoryId;
  }
  final MessageDataItemListContent? content = jsonConvert.convert<
      MessageDataItemListContent>(json['content']);
  if (content != null) {
    messageDataItemList.content = content;
  }
  return messageDataItemList;
}

Map<String, dynamic> $MessageDataItemListToJson(MessageDataItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['articleId'] = entity.articleId;
  data['action'] = entity.action?.toJson();
  data['weMediaProfile'] = entity.weMediaProfile?.toJson();
  data['categoryId'] = entity.categoryId;
  data['content'] = entity.content?.toJson();
  return data;
}

extension MessageDataItemListExtension on MessageDataItemList {
  MessageDataItemList copyWith({
    int? articleId,
    MessageDataItemListAction? action,
    MessageDataItemListWeMediaProfile? weMediaProfile,
    int? categoryId,
    MessageDataItemListContent? content,
  }) {
    return MessageDataItemList()
      ..articleId = articleId ?? this.articleId
      ..action = action ?? this.action
      ..weMediaProfile = weMediaProfile ?? this.weMediaProfile
      ..categoryId = categoryId ?? this.categoryId
      ..content = content ?? this.content;
  }
}

MessageDataItemListAction $MessageDataItemListActionFromJson(
    Map<String, dynamic> json) {
  final MessageDataItemListAction messageDataItemListAction = MessageDataItemListAction();
  final int? jumpType = jsonConvert.convert<int>(json['jumpType']);
  if (jumpType != null) {
    messageDataItemListAction.jumpType = jumpType;
  }
  final int? innerDataType = jsonConvert.convert<int>(json['innerDataType']);
  if (innerDataType != null) {
    messageDataItemListAction.innerDataType = innerDataType;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    messageDataItemListAction.type = type;
  }
  final dynamic content = json['content'];
  if (content != null) {
    messageDataItemListAction.content = content;
  }
  return messageDataItemListAction;
}

Map<String, dynamic> $MessageDataItemListActionToJson(
    MessageDataItemListAction entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['jumpType'] = entity.jumpType;
  data['innerDataType'] = entity.innerDataType;
  data['type'] = entity.type;
  data['content'] = entity.content;
  return data;
}

extension MessageDataItemListActionExtension on MessageDataItemListAction {
  MessageDataItemListAction copyWith({
    int? jumpType,
    int? innerDataType,
    int? type,
    dynamic content,
  }) {
    return MessageDataItemListAction()
      ..jumpType = jumpType ?? this.jumpType
      ..innerDataType = innerDataType ?? this.innerDataType
      ..type = type ?? this.type
      ..content = content ?? this.content;
  }
}

MessageDataItemListWeMediaProfile $MessageDataItemListWeMediaProfileFromJson(
    Map<String, dynamic> json) {
  final MessageDataItemListWeMediaProfile messageDataItemListWeMediaProfile = MessageDataItemListWeMediaProfile();
  final String? summary = jsonConvert.convert<String>(json['summary']);
  if (summary != null) {
    messageDataItemListWeMediaProfile.summary = summary;
  }
  final int? weMediaId = jsonConvert.convert<int>(json['weMediaId']);
  if (weMediaId != null) {
    messageDataItemListWeMediaProfile.weMediaId = weMediaId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    messageDataItemListWeMediaProfile.name = name;
  }
  final int? subscriptionCount = jsonConvert.convert<int>(
      json['subscriptionCount']);
  if (subscriptionCount != null) {
    messageDataItemListWeMediaProfile.subscriptionCount = subscriptionCount;
  }
  final int? articleCount = jsonConvert.convert<int>(json['articleCount']);
  if (articleCount != null) {
    messageDataItemListWeMediaProfile.articleCount = articleCount;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    messageDataItemListWeMediaProfile.avatar = avatar;
  }
  final bool? isOfficial = jsonConvert.convert<bool>(json['isOfficial']);
  if (isOfficial != null) {
    messageDataItemListWeMediaProfile.isOfficial = isOfficial;
  }
  return messageDataItemListWeMediaProfile;
}

Map<String, dynamic> $MessageDataItemListWeMediaProfileToJson(
    MessageDataItemListWeMediaProfile entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['summary'] = entity.summary;
  data['weMediaId'] = entity.weMediaId;
  data['name'] = entity.name;
  data['subscriptionCount'] = entity.subscriptionCount;
  data['articleCount'] = entity.articleCount;
  data['avatar'] = entity.avatar;
  data['isOfficial'] = entity.isOfficial;
  return data;
}

extension MessageDataItemListWeMediaProfileExtension on MessageDataItemListWeMediaProfile {
  MessageDataItemListWeMediaProfile copyWith({
    String? summary,
    int? weMediaId,
    String? name,
    int? subscriptionCount,
    int? articleCount,
    String? avatar,
    bool? isOfficial,
  }) {
    return MessageDataItemListWeMediaProfile()
      ..summary = summary ?? this.summary
      ..weMediaId = weMediaId ?? this.weMediaId
      ..name = name ?? this.name
      ..subscriptionCount = subscriptionCount ?? this.subscriptionCount
      ..articleCount = articleCount ?? this.articleCount
      ..avatar = avatar ?? this.avatar
      ..isOfficial = isOfficial ?? this.isOfficial;
  }
}

MessageDataItemListContent $MessageDataItemListContentFromJson(
    Map<String, dynamic> json) {
  final MessageDataItemListContent messageDataItemListContent = MessageDataItemListContent();
  final int? publishTime = jsonConvert.convert<int>(json['publishTime']);
  if (publishTime != null) {
    messageDataItemListContent.publishTime = publishTime;
  }
  final int? hitCount = jsonConvert.convert<int>(json['hitCount']);
  if (hitCount != null) {
    messageDataItemListContent.hitCount = hitCount;
  }
  final int? profileDisplayType = jsonConvert.convert<int>(
      json['profileDisplayType']);
  if (profileDisplayType != null) {
    messageDataItemListContent.profileDisplayType = profileDisplayType;
  }
  final String? author = jsonConvert.convert<String>(json['author']);
  if (author != null) {
    messageDataItemListContent.author = author;
  }
  final int? upCount = jsonConvert.convert<int>(json['upCount']);
  if (upCount != null) {
    messageDataItemListContent.upCount = upCount;
  }
  final String? shareLink = jsonConvert.convert<String>(json['shareLink']);
  if (shareLink != null) {
    messageDataItemListContent.shareLink = shareLink;
  }
  final dynamic shortTitle = json['shortTitle'];
  if (shortTitle != null) {
    messageDataItemListContent.shortTitle = shortTitle;
  }
  final String? xSource = jsonConvert.convert<String>(json['source']);
  if (xSource != null) {
    messageDataItemListContent.xSource = xSource;
  }
  final int? lockType = jsonConvert.convert<int>(json['lockType']);
  if (lockType != null) {
    messageDataItemListContent.lockType = lockType;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    messageDataItemListContent.title = title;
  }
  final String? tags = jsonConvert.convert<String>(json['tags']);
  if (tags != null) {
    messageDataItemListContent.tags = tags;
  }
  final int? commentCount = jsonConvert.convert<int>(json['commentCount']);
  if (commentCount != null) {
    messageDataItemListContent.commentCount = commentCount;
  }
  final int? downCount = jsonConvert.convert<int>(json['downCount']);
  if (downCount != null) {
    messageDataItemListContent.downCount = downCount;
  }
  final int? displayType = jsonConvert.convert<int>(json['displayType']);
  if (displayType != null) {
    messageDataItemListContent.displayType = displayType;
  }
  final int? sourceType = jsonConvert.convert<int>(json['sourceType']);
  if (sourceType != null) {
    messageDataItemListContent.sourceType = sourceType;
  }
  final String? coverImage = jsonConvert.convert<String>(json['coverImage']);
  if (coverImage != null) {
    messageDataItemListContent.coverImage = coverImage;
  }
  final int? recommendHot = jsonConvert.convert<int>(json['recommendHot']);
  if (recommendHot != null) {
    messageDataItemListContent.recommendHot = recommendHot;
  }
  final int? width = jsonConvert.convert<int>(json['width']);
  if (width != null) {
    messageDataItemListContent.width = width;
  }
  final List<String>? thumbnails = (json['thumbnails'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (thumbnails != null) {
    messageDataItemListContent.thumbnails = thumbnails;
  }
  final int? height = jsonConvert.convert<int>(json['height']);
  if (height != null) {
    messageDataItemListContent.height = height;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    messageDataItemListContent.status = status;
  }
  return messageDataItemListContent;
}

Map<String, dynamic> $MessageDataItemListContentToJson(
    MessageDataItemListContent entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['publishTime'] = entity.publishTime;
  data['hitCount'] = entity.hitCount;
  data['profileDisplayType'] = entity.profileDisplayType;
  data['author'] = entity.author;
  data['upCount'] = entity.upCount;
  data['shareLink'] = entity.shareLink;
  data['shortTitle'] = entity.shortTitle;
  data['source'] = entity.xSource;
  data['lockType'] = entity.lockType;
  data['title'] = entity.title;
  data['tags'] = entity.tags;
  data['commentCount'] = entity.commentCount;
  data['downCount'] = entity.downCount;
  data['displayType'] = entity.displayType;
  data['sourceType'] = entity.sourceType;
  data['coverImage'] = entity.coverImage;
  data['recommendHot'] = entity.recommendHot;
  data['width'] = entity.width;
  data['thumbnails'] = entity.thumbnails;
  data['height'] = entity.height;
  data['status'] = entity.status;
  return data;
}

extension MessageDataItemListContentExtension on MessageDataItemListContent {
  MessageDataItemListContent copyWith({
    int? publishTime,
    int? hitCount,
    int? profileDisplayType,
    String? author,
    int? upCount,
    String? shareLink,
    dynamic shortTitle,
    String? xSource,
    int? lockType,
    String? title,
    String? tags,
    int? commentCount,
    int? downCount,
    int? displayType,
    int? sourceType,
    String? coverImage,
    int? recommendHot,
    int? width,
    List<String>? thumbnails,
    int? height,
    int? status,
  }) {
    return MessageDataItemListContent()
      ..publishTime = publishTime ?? this.publishTime
      ..hitCount = hitCount ?? this.hitCount
      ..profileDisplayType = profileDisplayType ?? this.profileDisplayType
      ..author = author ?? this.author
      ..upCount = upCount ?? this.upCount
      ..shareLink = shareLink ?? this.shareLink
      ..shortTitle = shortTitle ?? this.shortTitle
      ..xSource = xSource ?? this.xSource
      ..lockType = lockType ?? this.lockType
      ..title = title ?? this.title
      ..tags = tags ?? this.tags
      ..commentCount = commentCount ?? this.commentCount
      ..downCount = downCount ?? this.downCount
      ..displayType = displayType ?? this.displayType
      ..sourceType = sourceType ?? this.sourceType
      ..coverImage = coverImage ?? this.coverImage
      ..recommendHot = recommendHot ?? this.recommendHot
      ..width = width ?? this.width
      ..thumbnails = thumbnails ?? this.thumbnails
      ..height = height ?? this.height
      ..status = status ?? this.status;
  }
}