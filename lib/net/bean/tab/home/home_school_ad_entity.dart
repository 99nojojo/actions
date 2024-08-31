import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/home_school_ad_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class HomeSchoolAdEntity {
	String? icon = '';
	List<HomeSchoolAdItemList>? itemList=[];
	String? title = '';

	HomeSchoolAdEntity();

	factory HomeSchoolAdEntity.fromJson(Map<String, dynamic> json) => $HomeSchoolAdEntityFromJson(json);

	Map<String, dynamic> toJson() => $HomeSchoolAdEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeSchoolAdItemList {
	String? courseName = '';
	List<HomeSchoolAdItemListCourseObject>? courseObject;
	String? courseType = '';
	String? distance = '';
	int? jiaxiaoId = 0;
	String? jiaxiaoName = '';
	HomeSchoolAdItemListJiaxiaoPhone? jiaxiaoPhone;
	String? logo = '';
	String? logoIcon = '';
	int? price = 0;
	String? privatePhone = '';

	HomeSchoolAdItemList();

	factory HomeSchoolAdItemList.fromJson(Map<String, dynamic> json) => $HomeSchoolAdItemListFromJson(json);

	Map<String, dynamic> toJson() => $HomeSchoolAdItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeSchoolAdItemListCourseObject {
	bool? concessionalCourse = false;
	String? courseClassName = '';
	int? originPrice = 0;
	int? price = 0;
	int? storePrice = 0;
	String? type = '';

	HomeSchoolAdItemListCourseObject();

	factory HomeSchoolAdItemListCourseObject.fromJson(Map<String, dynamic> json) => $HomeSchoolAdItemListCourseObjectFromJson(json);

	Map<String, dynamic> toJson() => $HomeSchoolAdItemListCourseObjectToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeSchoolAdItemListJiaxiaoPhone {
	String? complaintPhone = '';
	int? phoneStatus = 0;
	String? privatePhone = '';

	HomeSchoolAdItemListJiaxiaoPhone();

	factory HomeSchoolAdItemListJiaxiaoPhone.fromJson(Map<String, dynamic> json) => $HomeSchoolAdItemListJiaxiaoPhoneFromJson(json);

	Map<String, dynamic> toJson() => $HomeSchoolAdItemListJiaxiaoPhoneToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}