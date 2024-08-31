import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/home_coach_filter_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class HomeCoachFilterEntity {
	List<HomeCoachFilterItemList>? itemList;

	HomeCoachFilterEntity();

	factory HomeCoachFilterEntity.fromJson(Map<String, dynamic> json) => $HomeCoachFilterEntityFromJson(json);

	Map<String, dynamic> toJson() => $HomeCoachFilterEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeCoachFilterItemList {
	List<HomeCoachFilterItemListActivity>? activity;
	String? avatar = '';
	String? avatarFrame = '';
	dynamic certificationIcon;
	int? certificationStatus = 0;
	String? countyName = '';
	List<HomeCoachFilterItemListCourseObject>? courseObject;
	int? dianpingCount = 0;
	String? distance = '';
	String? distanceText = '';
	bool? goldCoach = false;
	String? goldCoachIcon = '';
	int? id = 0;
	bool? jiaxiaoGrant = false;
	int? jiaxiaoId = 0;
	String? jiaxiaoName = '';
	List<dynamic>? labels;
	bool? lukaoyi = false;
	dynamic lukaoyiIcon;
	bool? myCoach = false;
	String? name = '';
	String? peilianCarType = '';
	String? peilianPrice = '';
	String? peilianType = '';
	String? price = '';
	dynamic priorCoachIcon;
	dynamic rankDesc;
	int? rankNum = 0;
	double? rankScore;
	double? score;
	bool? showPhoneBtn = false;
	dynamic studentCount;
	int? teachAge = 0;
	String? trainFieldAddress = '';
	bool? vip = false;
	dynamic vipIcon;
	dynamic wechat;

	HomeCoachFilterItemList();

	factory HomeCoachFilterItemList.fromJson(Map<String, dynamic> json) => $HomeCoachFilterItemListFromJson(json);

	Map<String, dynamic> toJson() => $HomeCoachFilterItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeCoachFilterItemListActivity {
	int? activityId = 0;
	String? activityUrl = '';
	String? courseName = '';
	String? driveLicenseType = '';
	String? icon = '';
	String? iconTitle = '';
	bool? mustLogin = false;
	dynamic newIconTitle;
	String? remainingDays = '';
	String? type = '';

	HomeCoachFilterItemListActivity();

	factory HomeCoachFilterItemListActivity.fromJson(Map<String, dynamic> json) => $HomeCoachFilterItemListActivityFromJson(json);

	Map<String, dynamic> toJson() => $HomeCoachFilterItemListActivityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeCoachFilterItemListCourseObject {
	bool? concessionalCourse = false;
	String? courseClassName = '';
	int? originPrice = 0;
	int? price = 0;
	int? storePrice = 0;
	String? type = '';

	HomeCoachFilterItemListCourseObject();

	factory HomeCoachFilterItemListCourseObject.fromJson(Map<String, dynamic> json) => $HomeCoachFilterItemListCourseObjectFromJson(json);

	Map<String, dynamic> toJson() => $HomeCoachFilterItemListCourseObjectToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}