import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/home_filter_school_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class HomeFilterSchoolEntity {
	List<HomeFilterSchoolItemList>? itemList;
	dynamic page;

	HomeFilterSchoolEntity();

	factory HomeFilterSchoolEntity.fromJson(Map<String, dynamic> json) => $HomeFilterSchoolEntityFromJson(json);

	Map<String, dynamic> toJson() => $HomeFilterSchoolEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeFilterSchoolItemList {
	List<HomeFilterSchoolItemListActivity>? activity;
	bool? ad = false;
	String? countyName = '';
	String? course = '';
	List<HomeFilterSchoolItemListCourseObject>? courseObject;
	int? dianpingCount = 0;
	String? distance = '';
	String? distanceText = '';
	bool? hasVideo = false;
	bool? hasVr = false;
	int? id = 0;
	bool? intelligent = false;
	HomeFilterSchoolItemListJiaxiaoPhone? jiaxiaoPhone;
	List<HomeFilterSchoolItemListLabelObjects>? labelObjects;
	List<String>? labels;
	String? logo = '';
	String? logoIcon = '';
	String? name = '';
	bool? newCertification = false;
	dynamic oneWordRecommendation;
	List<String>? privileges;
	String? rank = '';
	double? score;
	dynamic topIcon;
	int? vipLevel = 0;
	int? vipYear = 0;

	HomeFilterSchoolItemList();

	factory HomeFilterSchoolItemList.fromJson(Map<String, dynamic> json) => $HomeFilterSchoolItemListFromJson(json);

	Map<String, dynamic> toJson() => $HomeFilterSchoolItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeFilterSchoolItemListActivity {
	int? activityId = 0;
	String? activityUrl = '';
	dynamic courseName;
	dynamic driveLicenseType;
	String? icon = '';
	String? iconTitle = '';
	bool? mustLogin = false;
	String? newIconTitle = '';
	dynamic remainingDays;
	dynamic type;

	HomeFilterSchoolItemListActivity();

	factory HomeFilterSchoolItemListActivity.fromJson(Map<String, dynamic> json) => $HomeFilterSchoolItemListActivityFromJson(json);

	Map<String, dynamic> toJson() => $HomeFilterSchoolItemListActivityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeFilterSchoolItemListCourseObject {
	bool? concessionalCourse = false;
	String? courseClassName = '';
	int? originPrice = 0;
	int? price = 0;
	int? storePrice = 0;
	String? type = '';

	HomeFilterSchoolItemListCourseObject();

	factory HomeFilterSchoolItemListCourseObject.fromJson(Map<String, dynamic> json) => $HomeFilterSchoolItemListCourseObjectFromJson(json);

	Map<String, dynamic> toJson() => $HomeFilterSchoolItemListCourseObjectToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeFilterSchoolItemListJiaxiaoPhone {
	String? complaintPhone = '';
	int? phoneStatus = 0;
	String? privatePhone = '';

	HomeFilterSchoolItemListJiaxiaoPhone();

	factory HomeFilterSchoolItemListJiaxiaoPhone.fromJson(Map<String, dynamic> json) => $HomeFilterSchoolItemListJiaxiaoPhoneFromJson(json);

	Map<String, dynamic> toJson() => $HomeFilterSchoolItemListJiaxiaoPhoneToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeFilterSchoolItemListLabelObjects {
	String? name = '';
	int? type = 0;

	HomeFilterSchoolItemListLabelObjects();

	factory HomeFilterSchoolItemListLabelObjects.fromJson(Map<String, dynamic> json) => $HomeFilterSchoolItemListLabelObjectsFromJson(json);

	Map<String, dynamic> toJson() => $HomeFilterSchoolItemListLabelObjectsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}