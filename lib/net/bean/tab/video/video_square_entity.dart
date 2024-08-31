import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/video_square_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class VideoSquareEntity {
	int? cursor = 0;
	bool? hasMore = false;
	List<VideoSquareItemList>? itemList;
	int? total = 0;

	VideoSquareEntity();

	factory VideoSquareEntity.fromJson(Map<String, dynamic> json) => $VideoSquareEntityFromJson(json);

	Map<String, dynamic> toJson() => $VideoSquareEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VideoSquareItemList {
	VideoSquareItemListAnchorData? anchorData;
	int? anchorId = 0;
	String? carType = '';
	dynamic cityCode;
	dynamic cityName;
	String? cover = '';
	int? kemu = 0;
	int? lastLiveTime = 0;
	int? orientation = 0;
	double? popularityValue;
	int? pv = 0;
	String? sessionDesc = '';
	int? sessionId = 0;
	int? status = 0;
	int? thumpUpCount = 0;
	String? title = '';
	dynamic topTime;

	VideoSquareItemList();

	factory VideoSquareItemList.fromJson(Map<String, dynamic> json) => $VideoSquareItemListFromJson(json);

	Map<String, dynamic> toJson() => $VideoSquareItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VideoSquareItemListAnchorData {
	int? anchorId = 0;
	String? avatar = '';
	dynamic desc;
	dynamic fansCount;
	int? followTime = 0;
	String? nickName = '';
	dynamic official;
	dynamic status;
	dynamic userId;

	VideoSquareItemListAnchorData();

	factory VideoSquareItemListAnchorData.fromJson(Map<String, dynamic> json) => $VideoSquareItemListAnchorDataFromJson(json);

	Map<String, dynamic> toJson() => $VideoSquareItemListAnchorDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}