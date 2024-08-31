import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/advert_sdk_data_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class AdvertSdkDataEntity {
	int? id = 0;
	String? style = '';
	bool? closeable = false;
	int? checkTime = 0;
	int? cacheTime = 0;
	List<AdvertSdkDataList>? list;
	String? extra = '';
	int? showLogType = 0;
	dynamic debugInfo;
	int? adlessDuration = 0;
	int? advertNumber = 0;
	String? closeWho = '';
	int? rewardRegisterTime = 0;

	AdvertSdkDataEntity();

	factory AdvertSdkDataEntity.fromJson(Map<String, dynamic> json) => $AdvertSdkDataEntityFromJson(json);

	Map<String, dynamic> toJson() => $AdvertSdkDataEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AdvertSdkDataList {
	String? advertId = '';
	String? resourceId = '';
	String? type = '';
	String? label = '';
	String? title = '';
	String? description = '';
	String? expiredTimeInfo = '';
	int? expiredTime = 0;
	String? startTimeInfo = '';
	int? startTime = 0;
	int? displayOrder = 0;
	AdvertSdkDataListContent? content;
	List<AdvertSdkDataListOutsideStatistics>? outsideStatistics;
	double? showDuration;
	dynamic track;
	int? adCreateTime = 0;
	int? adShowTime = 0;
	String? extra = '';
	dynamic redDot;
	String? adOriginMarkIcon = '';
	dynamic adWebviewDisclaimerContent;
	String? adWebviewLeaveAlert = '';
	dynamic adWebviewPayAlert;
	double? biddingPrice;
	int? biddingType = 0;
	int? cd = 0;
	String? clickableArea = '';
	AdvertSdkDataListCtaInfo? ctaInfo;
	dynamic ecpmLevel;
	double? er;
	int? flowAdType = 0;
	dynamic interactiveStyle;
	dynamic labelLocation;
	int? landingPagePaymentPopupType = 0;
	int? marketProtocol = 0;
	int? popupButtonCountdown = 0;
	String? redPacketUrl = '';
	int? requestType = 0;
	int? resourceDisplayStyle = 0;
	dynamic settlePrice;
	List<dynamic>? subAdvertList;
	dynamic webViewHeaders;
	int? webviewDownloadType = 0;
	dynamic webviewUaSuffix;
	int? wipeStyle = 0;
	String? wipeText = '';
	bool? closeable = false;
	bool? commercial = false;
	bool? dislike = false;

	AdvertSdkDataList();

	factory AdvertSdkDataList.fromJson(Map<String, dynamic> json) => $AdvertSdkDataListFromJson(json);

	Map<String, dynamic> toJson() => $AdvertSdkDataListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AdvertSdkDataListContent {
	String? image = '';
	String? subtitle = '';
	String? width = '';
	AdvertSdkDataListContentAction? action;
	String? label = '';
	String? title = '';
	String? height = '';
	String? target = '';

	AdvertSdkDataListContent();

	factory AdvertSdkDataListContent.fromJson(Map<String, dynamic> json) => $AdvertSdkDataListContentFromJson(json);

	Map<String, dynamic> toJson() => $AdvertSdkDataListContentToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AdvertSdkDataListContentAction {
	String? showToolbar = '';
	String? aslUrl = '';
	String? text = '';
	String? event = '';
	String? type = '';
	String? dplUrl = '';

	AdvertSdkDataListContentAction();

	factory AdvertSdkDataListContentAction.fromJson(Map<String, dynamic> json) => $AdvertSdkDataListContentActionFromJson(json);

	Map<String, dynamic> toJson() => $AdvertSdkDataListContentActionToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AdvertSdkDataListOutsideStatistics {
	int? interval = 0;
	String? onlineTrack = '';
	String? type = '';

	AdvertSdkDataListOutsideStatistics();

	factory AdvertSdkDataListOutsideStatistics.fromJson(Map<String, dynamic> json) => $AdvertSdkDataListOutsideStatisticsFromJson(json);

	Map<String, dynamic> toJson() => $AdvertSdkDataListOutsideStatisticsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AdvertSdkDataListCtaInfo {
	dynamic ctaStyle;
	dynamic ctaText;

	AdvertSdkDataListCtaInfo();

	factory AdvertSdkDataListCtaInfo.fromJson(Map<String, dynamic> json) => $AdvertSdkDataListCtaInfoFromJson(json);

	Map<String, dynamic> toJson() => $AdvertSdkDataListCtaInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}