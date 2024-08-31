import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/community_data_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class CommunityDataEntity {
	String? cursor = '';
	CommunityDataExtraData? extraData;
	bool? hasMore = false;
	List<CommunityDataItemList>? itemList;
	int? limitId = 0;
	int? pageCount = 0;
	int? totalCount = 0;

	CommunityDataEntity();

	factory CommunityDataEntity.fromJson(Map<String, dynamic> json) => $CommunityDataEntityFromJson(json);

	Map<String, dynamic> toJson() => $CommunityDataEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CommunityDataExtraData {


	CommunityDataExtraData();

	factory CommunityDataExtraData.fromJson(Map<String, dynamic> json) => $CommunityDataExtraDataFromJson(json);

	Map<String, dynamic> toJson() => $CommunityDataExtraDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CommunityDataItemList {
	List<dynamic>? appendList;
	int? attr = 0;
	dynamic audio;
	CommunityDataItemListAuthor? author;
	dynamic carSerial;
	bool? closedComment = false;
	int? collectionCount = 0;
	int? commentCount = 0;
	String? content = '';
	int? contentType = 0;
	int? createTime = 0;
	String? extraData = '';
	bool? favorable = false;
	int? groupId = 0;
	dynamic guessDetail;
	bool? hot = false;
	dynamic hotCommentData;
	List<CommunityDataItemListImageList>? imageList;
	bool? jinghuaRequest = false;
	int? jinghuaTime = 0;
	int? lastReplyTime = 0;
	int? limitId = 0;
	String? location = '';
	bool? myself = false;
	dynamic quoteData;
	int? readCount = 0;
	bool? review = false;
	List<dynamic>? rewardList;
	List<CommunityDataItemListServiceList>? serviceList;
	String? shareUrl = '';
	int? subjectId = 0;
	String? subjectName = '';
	String? summary = '';
	int? tagId = 0;
	List<CommunityDataItemListTagList>? tagList;
	String? tagName = '';
	String? title = '';
	int? topicId = 0;
	int? topicOperation = 0;
	int? topicType = 0;
	dynamic video;
	String? webId = '';
	int? zanCount = 0;
	List<dynamic>? zanList;
	bool? zanable = false;

	CommunityDataItemList();

	factory CommunityDataItemList.fromJson(Map<String, dynamic> json) => $CommunityDataItemListFromJson(json);

	Map<String, dynamic> toJson() => $CommunityDataItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CommunityDataItemListAuthor {
	String? avatar = '';
	String? avatarWidgetUrl = '';
	int? businessIdentity = 0;
	List<CommunityDataItemListAuthorBusinessIdentityList>? businessIdentityList;
	List<dynamic>? carCertificateList;
	int? carCertificateStatus = 0;
	String? cityCode = '';
	String? cityName = '';
	int? commentCount = 0;
	int? createTime = 0;
	String? description = '';
	int? followMeCount = 0;
	int? followStatus = 0;
	String? gender = '';
	int? identity = 0;
	String? identityName = '';
	bool? internal = false;
	bool? jiaxiaoCoach = false;
	int? level = 0;
	dynamic location;
	bool? manager = false;
	int? medalCount = 0;
	List<dynamic>? medalList;
	String? name = '';
	String? nameColor = '';
	String? schoolCode = '';
	String? schoolName = '';
	String? ssoNickname = '';
	String? subDescription = '';
	int? topicCount = 0;
	String? userId = '';

	CommunityDataItemListAuthor();

	factory CommunityDataItemListAuthor.fromJson(Map<String, dynamic> json) => $CommunityDataItemListAuthorFromJson(json);

	Map<String, dynamic> toJson() => $CommunityDataItemListAuthorToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CommunityDataItemListAuthorBusinessIdentityList {
	String? actionUrl = '';
	String? conditions = '';
	int? height = 0;
	int? id = 0;
	String? imageUrl = '';
	String? subTitle = '';
	String? title = '';
	int? width = 0;

	CommunityDataItemListAuthorBusinessIdentityList();

	factory CommunityDataItemListAuthorBusinessIdentityList.fromJson(Map<String, dynamic> json) => $CommunityDataItemListAuthorBusinessIdentityListFromJson(json);

	Map<String, dynamic> toJson() => $CommunityDataItemListAuthorBusinessIdentityListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CommunityDataItemListImageList {
	CommunityDataItemListImageListDetail? detail;
	CommunityDataItemListImageListList? list;

	CommunityDataItemListImageList();

	factory CommunityDataItemListImageList.fromJson(Map<String, dynamic> json) => $CommunityDataItemListImageListFromJson(json);

	Map<String, dynamic> toJson() => $CommunityDataItemListImageListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CommunityDataItemListImageListDetail {
	String? description = '';
	String? fileKey = '';
	int? height = 0;
	String? url = '';
	String? urlBk = '';
	int? width = 0;

	CommunityDataItemListImageListDetail();

	factory CommunityDataItemListImageListDetail.fromJson(Map<String, dynamic> json) => $CommunityDataItemListImageListDetailFromJson(json);

	Map<String, dynamic> toJson() => $CommunityDataItemListImageListDetailToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CommunityDataItemListImageListList {
	String? description = '';
	String? fileKey = '';
	int? height = 0;
	String? url = '';
	String? urlBk = '';
	int? width = 0;

	CommunityDataItemListImageListList();

	factory CommunityDataItemListImageListList.fromJson(Map<String, dynamic> json) => $CommunityDataItemListImageListListFromJson(json);

	Map<String, dynamic> toJson() => $CommunityDataItemListImageListListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CommunityDataItemListServiceList {
	String? actionUrl = '';
	String? conditions = '';
	int? height = 0;
	int? id = 0;
	String? imageUrl = '';
	String? subTitle = '';
	String? title = '';
	int? width = 0;

	CommunityDataItemListServiceList();

	factory CommunityDataItemListServiceList.fromJson(Map<String, dynamic> json) => $CommunityDataItemListServiceListFromJson(json);

	Map<String, dynamic> toJson() => $CommunityDataItemListServiceListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CommunityDataItemListTagList {
	dynamic askTagInfo;
	String? banner = '';
	String? bannerActionUrl = '';
	CommunityDataItemListTagListConfig? config;
	dynamic darenSimple;
	CommunityDataItemListTagListExtraData? extraData;
	String? introduction = '';
	String? introductionActionUrl = '';
	bool? joined = false;
	String? labelName = '';
	String? logo = '';
	int? memberCount = 0;
	int? newTopicCount = 0;
	List<dynamic>? noticeList;
	List<dynamic>? relatedTags;
	int? tagId = 0;
	String? tagName = '';
	int? tagType = 0;
	int? topicCount = 0;

	CommunityDataItemListTagList();

	factory CommunityDataItemListTagList.fromJson(Map<String, dynamic> json) => $CommunityDataItemListTagListFromJson(json);

	Map<String, dynamic> toJson() => $CommunityDataItemListTagListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CommunityDataItemListTagListConfig {
	List<int>? allowCreateTopicTypes;
	List<String>? enableApps;
	bool? openDarentang = false;
	List<int>? showTabs;

	CommunityDataItemListTagListConfig();

	factory CommunityDataItemListTagListConfig.fromJson(Map<String, dynamic> json) => $CommunityDataItemListTagListConfigFromJson(json);

	Map<String, dynamic> toJson() => $CommunityDataItemListTagListConfigToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CommunityDataItemListTagListExtraData {


	CommunityDataItemListTagListExtraData();

	factory CommunityDataItemListTagListExtraData.fromJson(Map<String, dynamic> json) => $CommunityDataItemListTagListExtraDataFromJson(json);

	Map<String, dynamic> toJson() => $CommunityDataItemListTagListExtraDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}