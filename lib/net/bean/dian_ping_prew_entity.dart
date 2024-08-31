import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/dian_ping_prew_entity.g.dart';
import 'dart:convert';
export 'package:flutter_actions/generated/json/dian_ping_prew_entity.g.dart';

@JsonSerializable()
class DianPingPrewEntity {
	List<DianPingPrewItemList>? itemList = [];

	DianPingPrewEntity();

	factory DianPingPrewEntity.fromJson(Map<String, dynamic> json) => $DianPingPrewEntityFromJson(json);

	Map<String, dynamic> toJson() => $DianPingPrewEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DianPingPrewItemList {
	dynamic address;
	DianPingPrewItemListAuthor? author;
	String? authorId = '';
	bool? buildJiakaoVip = false;
	int? complainStatus = 0;
	String? content = '';
	int? costTime = 0;
	int? createTime = 0;
	int? credibility = 0;
	dynamic credibilityUpdateTime;
	int? dianpingId = 0;
	String? extraData = '';
	int? floor = 0;
	String? floorName = '';
	int? id = 0;
	int? imageCount = 0;
	List<DianPingPrewItemListImageList>? imageList = [];
	String? ipLocation = '';
	bool? jinghua = false;
	dynamic location;
	dynamic originalCredibility;
	String? placeToken = '';
	dynamic quote;
	int? replyCount = 0;
	int? replyId = 0;
	int? score = 0;
	int? status = 0;
	String? topic = '';
	String? version = '';
	int? zanCount = 0;
	bool? zanable = false;

	DianPingPrewItemList();

	factory DianPingPrewItemList.fromJson(Map<String, dynamic> json) => $DianPingPrewItemListFromJson(json);

	Map<String, dynamic> toJson() => $DianPingPrewItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DianPingPrewItemListAuthor {
	bool? admin = false;
	String? avatar = '';
	bool? blacklist = false;
	String? gender = '';
	bool? jiakaoVip = false;
	dynamic jiakaoVipLogo;
	String? mucangId = '';
	String? nickname = '';

	DianPingPrewItemListAuthor();

	factory DianPingPrewItemListAuthor.fromJson(Map<String, dynamic> json) => $DianPingPrewItemListAuthorFromJson(json);

	Map<String, dynamic> toJson() => $DianPingPrewItemListAuthorToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DianPingPrewItemListImageList {
	int? contentLength = 0;
	int? height = 0;
	int? id = 0;
	String? large = '';
	String? small = '';
	String? url = '';
	int? width = 0;

	DianPingPrewItemListImageList();

	factory DianPingPrewItemListImageList.fromJson(Map<String, dynamic> json) => $DianPingPrewItemListImageListFromJson(json);

	Map<String, dynamic> toJson() => $DianPingPrewItemListImageListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}