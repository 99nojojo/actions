import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/message_data_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class MessageDataEntity {
	int? total = 0;
	bool? clearUp = false;
	List<MessageDataItemList>? itemList;

	MessageDataEntity();

	factory MessageDataEntity.fromJson(Map<String, dynamic> json) => $MessageDataEntityFromJson(json);

	Map<String, dynamic> toJson() => $MessageDataEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MessageDataItemList {
	int? articleId = 0;
	MessageDataItemListAction? action;
	MessageDataItemListWeMediaProfile? weMediaProfile;
	int? categoryId = 0;
	MessageDataItemListContent? content;

	MessageDataItemList();

	factory MessageDataItemList.fromJson(Map<String, dynamic> json) => $MessageDataItemListFromJson(json);

	Map<String, dynamic> toJson() => $MessageDataItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MessageDataItemListAction {
	int? jumpType = 0;
	int? innerDataType = 0;
	int? type = 0;
	dynamic content;

	MessageDataItemListAction();

	factory MessageDataItemListAction.fromJson(Map<String, dynamic> json) => $MessageDataItemListActionFromJson(json);

	Map<String, dynamic> toJson() => $MessageDataItemListActionToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MessageDataItemListWeMediaProfile {
	String? summary = '';
	int? weMediaId = 0;
	String? name = '';
	int? subscriptionCount = 0;
	int? articleCount = 0;
	String? avatar = '';
	bool? isOfficial = false;

	MessageDataItemListWeMediaProfile();

	factory MessageDataItemListWeMediaProfile.fromJson(Map<String, dynamic> json) => $MessageDataItemListWeMediaProfileFromJson(json);

	Map<String, dynamic> toJson() => $MessageDataItemListWeMediaProfileToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MessageDataItemListContent {
	int? publishTime = 0;
	int? hitCount = 0;
	int? profileDisplayType = 0;
	String? author = '';
	int? upCount = 0;
	String? shareLink = '';
	dynamic shortTitle;
	@JSONField(name: "source")
	String? xSource = '';
	int? lockType = 0;
	String? title = '';
	String? tags = '';
	int? commentCount = 0;
	int? downCount = 0;
	int? displayType = 0;
	int? sourceType = 0;
	String? coverImage = '';
	int? recommendHot = 0;
	int? width = 0;
	List<String>? thumbnails;
	int? height = 0;
	int? status = 0;

	MessageDataItemListContent();

	factory MessageDataItemListContent.fromJson(Map<String, dynamic> json) => $MessageDataItemListContentFromJson(json);

	Map<String, dynamic> toJson() => $MessageDataItemListContentToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}