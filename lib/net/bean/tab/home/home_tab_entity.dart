import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/home_tab_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class HomeTabEntity {
	List<HomeTabItemList>? itemList;

	HomeTabEntity();

	factory HomeTabEntity.fromJson(Map<String, dynamic> json) => $HomeTabEntityFromJson(json);

	Map<String, dynamic> toJson() => $HomeTabEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeTabItemList {
	String? name = '';
	String? type = '';

	HomeTabItemList();

	factory HomeTabItemList.fromJson(Map<String, dynamic> json) => $HomeTabItemListFromJson(json);

	Map<String, dynamic> toJson() => $HomeTabItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}