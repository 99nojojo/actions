import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/jx_image_list_entity.g.dart';
import 'dart:convert';
export 'package:flutter_actions/generated/json/jx_image_list_entity.g.dart';

@JsonSerializable()
class JxImageListEntity {
	List<JxImageListItemList>? itemList = [];

	JxImageListEntity();

	factory JxImageListEntity.fromJson(Map<String, dynamic> json) => $JxImageListEntityFromJson(json);

	Map<String, dynamic> toJson() => $JxImageListEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class JxImageListItemList {
	String? small = '';
	int? recommendTime = 0;
	String? typeName = '';
	bool? recommend = false;
	bool? video = false;
	int? type = 0;
	int? examFieldId = 0;
	bool? cover = false;
	String? urlMd5 = '';
	int? uploadType = 0;
	int? height = 0;
	List<JxImageListItemListCategorys>? categorys = [];
	int? imageId = 0;
	String? large = '';
	int? coachId = 0;
	int? trainFieldId = 0;
	String? url = '';
	int? jiaxiaoId = 0;
	int? fileSize = 0;
	int? width = 0;
	String? fileType = '';

	JxImageListItemList();

	factory JxImageListItemList.fromJson(Map<String, dynamic> json) => $JxImageListItemListFromJson(json);

	Map<String, dynamic> toJson() => $JxImageListItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class JxImageListItemListCategorys {
	int? code = 0;
	String? name = '';

	JxImageListItemListCategorys();

	factory JxImageListItemListCategorys.fromJson(Map<String, dynamic> json) => $JxImageListItemListCategorysFromJson(json);

	Map<String, dynamic> toJson() => $JxImageListItemListCategorysToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}