import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/home_filter_label_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class HomeFilterLabelEntity {
	List<HomeFilterLabelItemList>? itemList;

	HomeFilterLabelEntity();

	factory HomeFilterLabelEntity.fromJson(Map<String, dynamic> json) => $HomeFilterLabelEntityFromJson(json);

	Map<String, dynamic> toJson() => $HomeFilterLabelEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeFilterLabelItemList {
	String? code = '';
	String? text = '';
	String? type = '';

	HomeFilterLabelItemList();

	factory HomeFilterLabelItemList.fromJson(Map<String, dynamic> json) => $HomeFilterLabelItemListFromJson(json);

	Map<String, dynamic> toJson() => $HomeFilterLabelItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}