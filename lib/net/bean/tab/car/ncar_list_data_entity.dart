import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/ncar_list_data_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class NcarListDataEntity {
	List<NcarListDataBrandList>? brandList;
	String? groupName = '';
	double? showStyle;

	NcarListDataEntity();

	factory NcarListDataEntity.fromJson(Map<String, dynamic> json) => $NcarListDataEntityFromJson(json);

	Map<String, dynamic> toJson() => $NcarListDataEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NcarListDataBrandList {
	double? articleId;
	String? country = '';
	String? firstLetter = '';
	String? homeUrl = '';
	double? id;
	String? logoUrl = '';
	String? name = '';
	double? seriesCount;
	bool? uniOper = false;
	double? vehicleType;

	NcarListDataBrandList();

	factory NcarListDataBrandList.fromJson(Map<String, dynamic> json) => $NcarListDataBrandListFromJson(json);

	Map<String, dynamic> toJson() => $NcarListDataBrandListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}