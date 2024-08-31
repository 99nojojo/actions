import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/motocycle_home_data_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class MotocycleHomeDataEntity {
	List<MotocycleHomeDataItemList>? itemList;

	MotocycleHomeDataEntity();

	factory MotocycleHomeDataEntity.fromJson(Map<String, dynamic> json) => $MotocycleHomeDataEntityFromJson(json);

	Map<String, dynamic> toJson() => $MotocycleHomeDataEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MotocycleHomeDataItemList {
	int? displayOrder = 0;
	List<MotocycleHomeDataItemListItemList>? itemList;
	String? title = '';
	int? typeCode = 0;
	bool? uniOper = false;
	String? moreButtonNav = '';
	String? moreButtonTitle = '';

	MotocycleHomeDataItemList();

	factory MotocycleHomeDataItemList.fromJson(Map<String, dynamic> json) => $MotocycleHomeDataItemListFromJson(json);

	Map<String, dynamic> toJson() => $MotocycleHomeDataItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MotocycleHomeDataItemListItemList {
	String? actionUrl = '';
	int? brandId = 0;
	String? imageUrl = '';
	int? seriesId = 0;
	int? tabId = 0;
	String? title = '';
	bool? uniOper = false;
	MotocycleHomeDataItemListItemListUniOperOortData? uniOperOortData;

	MotocycleHomeDataItemListItemList();

	factory MotocycleHomeDataItemListItemList.fromJson(Map<String, dynamic> json) => $MotocycleHomeDataItemListItemListFromJson(json);

	Map<String, dynamic> toJson() => $MotocycleHomeDataItemListItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MotocycleHomeDataItemListItemListUniOperOortData {
	String? eventName = '';
	MotocycleHomeDataItemListItemListUniOperOortDataProperties? properties;

	MotocycleHomeDataItemListItemListUniOperOortData();

	factory MotocycleHomeDataItemListItemListUniOperOortData.fromJson(Map<String, dynamic> json) => $MotocycleHomeDataItemListItemListUniOperOortDataFromJson(json);

	Map<String, dynamic> toJson() => $MotocycleHomeDataItemListItemListUniOperOortDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MotocycleHomeDataItemListItemListUniOperOortDataProperties {
	String? fragmentName1 = '';
	String? actionType = '';
	int? operId = 0;
	String? pageName = '';
	String? actionName = '';

	MotocycleHomeDataItemListItemListUniOperOortDataProperties();

	factory MotocycleHomeDataItemListItemListUniOperOortDataProperties.fromJson(Map<String, dynamic> json) => $MotocycleHomeDataItemListItemListUniOperOortDataPropertiesFromJson(json);

	Map<String, dynamic> toJson() => $MotocycleHomeDataItemListItemListUniOperOortDataPropertiesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}