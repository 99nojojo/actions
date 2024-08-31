import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/find_pwd_auth_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class FindPwdAuthEntity {
	String? captchaId = '';
	String? captchaUrl = '';
	String? title = '';
	dynamic verifyUrl;

	FindPwdAuthEntity();

	factory FindPwdAuthEntity.fromJson(Map<String, dynamic> json) => $FindPwdAuthEntityFromJson(json);

	Map<String, dynamic> toJson() => $FindPwdAuthEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}