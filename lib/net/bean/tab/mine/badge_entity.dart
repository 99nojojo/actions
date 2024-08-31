import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/badge_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class BadgeEntity {
	String? badgeName = '';
	String? code = '';
	String? image = '';
	String? triggerImage = '';
	bool? unlock = false;

	BadgeEntity();

	factory BadgeEntity.fromJson(Map<String, dynamic> json) => $BadgeEntityFromJson(json);

	Map<String, dynamic> toJson() => $BadgeEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}