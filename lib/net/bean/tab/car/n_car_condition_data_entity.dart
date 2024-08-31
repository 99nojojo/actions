import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/n_car_condition_data_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class NCarConditionDataEntity {
	List<NCarConditionDataItemList>? itemList;

	NCarConditionDataEntity();

	factory NCarConditionDataEntity.fromJson(Map<String, dynamic> json) => $NCarConditionDataEntityFromJson(json);

	Map<String, dynamic> toJson() => $NCarConditionDataEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NCarConditionDataItemList {
	String? conditionUrl = '';
	String? name = '';

	NCarConditionDataItemList();

	factory NCarConditionDataItemList.fromJson(Map<String, dynamic> json) => $NCarConditionDataItemListFromJson(json);

	Map<String, dynamic> toJson() => $NCarConditionDataItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}