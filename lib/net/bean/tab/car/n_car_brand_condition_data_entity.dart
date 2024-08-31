import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/n_car_brand_condition_data_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class NCarBrandConditionDataEntity {
	double? articleId;
	String? country = '';
	String? firstLetter = '';
	String? homeUrl = '';
	double? id;
	String? logoUrl = '';
	String? name = '';
	double? seriesCount;
	bool? uniOper = false;
	NCarBrandConditionDataUniOperOortData? uniOperOortData;
	double? vehicleType;

	NCarBrandConditionDataEntity();

	factory NCarBrandConditionDataEntity.fromJson(Map<String, dynamic> json) => $NCarBrandConditionDataEntityFromJson(json);

	Map<String, dynamic> toJson() => $NCarBrandConditionDataEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NCarBrandConditionDataUniOperOortData {
	String? entrancePage1 = '';
	String? eventName = '';
	NCarBrandConditionDataUniOperOortDataProperties? properties;

	NCarBrandConditionDataUniOperOortData();

	factory NCarBrandConditionDataUniOperOortData.fromJson(Map<String, dynamic> json) => $NCarBrandConditionDataUniOperOortDataFromJson(json);

	Map<String, dynamic> toJson() => $NCarBrandConditionDataUniOperOortDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NCarBrandConditionDataUniOperOortDataProperties {
	String? fragmentName1 = '';
	String? actionType = '';
	double? operId;
	String? pageName = '';
	String? actionName = '';

	NCarBrandConditionDataUniOperOortDataProperties();

	factory NCarBrandConditionDataUniOperOortDataProperties.fromJson(Map<String, dynamic> json) => $NCarBrandConditionDataUniOperOortDataPropertiesFromJson(json);

	Map<String, dynamic> toJson() => $NCarBrandConditionDataUniOperOortDataPropertiesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}