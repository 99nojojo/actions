import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/image_item_entity.g.dart';
import 'dart:convert';
export 'package:flutter_actions/generated/json/image_item_entity.g.dart';

@JsonSerializable()
class ImageItemEntity {
	late String title = '';
	late String image = '';
	late String url = '';

	ImageItemEntity();

	factory ImageItemEntity.fromJson(Map<String, dynamic> json) => $ImageItemEntityFromJson(json);

	Map<String, dynamic> toJson() => $ImageItemEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}