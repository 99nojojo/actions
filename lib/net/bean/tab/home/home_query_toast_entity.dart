import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/home_query_toast_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class HomeQueryToastEntity {
	int? height = 0;
	dynamic linkUrl;
	dynamic toastImg;
	int? width = 0;

	HomeQueryToastEntity();

	factory HomeQueryToastEntity.fromJson(Map<String, dynamic> json) => $HomeQueryToastEntityFromJson(json);

	Map<String, dynamic> toJson() => $HomeQueryToastEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}