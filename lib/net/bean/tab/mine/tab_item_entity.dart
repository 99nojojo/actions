import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/tab_item_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class TabItemEntity {
	String? clickUrl = '';
	String? icon = '';
	String? name = '';
	String? tagName = '';

	TabItemEntity();

	factory TabItemEntity.fromJson(Map<String, dynamic> json) => $TabItemEntityFromJson(json);

	Map<String, dynamic> toJson() => $TabItemEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}