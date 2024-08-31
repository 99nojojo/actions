import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/coach_filter_condition_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class CoachFilterConditionEntity {
	List<CoachFilterConditionBusTeachTypeList>? busTeachTypeList;
	List<CoachFilterConditionCountyList>? countyList;
	List<CoachFilterConditionCourseClassList>? courseClassList;
	List<CoachFilterConditionDistanceSearchList>? distanceSearchList;
	List<CoachFilterConditionIntelligentLabelList>? intelligentLabelList;
	List<CoachFilterConditionLabelList>? labelList;
	List<CoachFilterConditionMarketTypeList>? marketTypeList;
	List<CoachFilterConditionMiniCarTeachTypeList>? miniCarTeachTypeList;
	List<CoachFilterConditionMotoTeachTypeList>? motoTeachTypeList;
	List<CoachFilterConditionOtherTeachTypeList>? otherTeachTypeList;
	List<CoachFilterConditionTeachTypeDetailList>? teachTypeDetailList;
	List<String>? teachTypeList;
	List<CoachFilterConditionTruckTeachTypeList>? truckTeachTypeList;

	CoachFilterConditionEntity();

	factory CoachFilterConditionEntity.fromJson(Map<String, dynamic> json) => $CoachFilterConditionEntityFromJson(json);

	Map<String, dynamic> toJson() => $CoachFilterConditionEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CoachFilterConditionBusTeachTypeList {
	bool? enable = false;
	String? key = '';
	String? value = '';

	CoachFilterConditionBusTeachTypeList();

	factory CoachFilterConditionBusTeachTypeList.fromJson(Map<String, dynamic> json) => $CoachFilterConditionBusTeachTypeListFromJson(json);

	Map<String, dynamic> toJson() => $CoachFilterConditionBusTeachTypeListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CoachFilterConditionCountyList {
	String? cityCode = '';
	String? cityName = '';
	int? count = 0;

	CoachFilterConditionCountyList();

	factory CoachFilterConditionCountyList.fromJson(Map<String, dynamic> json) => $CoachFilterConditionCountyListFromJson(json);

	Map<String, dynamic> toJson() => $CoachFilterConditionCountyListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CoachFilterConditionCourseClassList {
	int? code = 0;
	String? description = '';
	String? name = '';

	CoachFilterConditionCourseClassList();

	factory CoachFilterConditionCourseClassList.fromJson(Map<String, dynamic> json) => $CoachFilterConditionCourseClassListFromJson(json);

	Map<String, dynamic> toJson() => $CoachFilterConditionCourseClassListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CoachFilterConditionDistanceSearchList {
	bool? enable = false;
	String? key = '';
	int? value = 0;

	CoachFilterConditionDistanceSearchList();

	factory CoachFilterConditionDistanceSearchList.fromJson(Map<String, dynamic> json) => $CoachFilterConditionDistanceSearchListFromJson(json);

	Map<String, dynamic> toJson() => $CoachFilterConditionDistanceSearchListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CoachFilterConditionIntelligentLabelList {
	bool? enable = false;
	String? iconUrl = '';
	String? key = '';
	String? name = '';

	CoachFilterConditionIntelligentLabelList();

	factory CoachFilterConditionIntelligentLabelList.fromJson(Map<String, dynamic> json) => $CoachFilterConditionIntelligentLabelListFromJson(json);

	Map<String, dynamic> toJson() => $CoachFilterConditionIntelligentLabelListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CoachFilterConditionLabelList {
	bool? disPlay = false;
	dynamic iconUrl;
	int? label = 0;
	String? labelDetail = '';

	CoachFilterConditionLabelList();

	factory CoachFilterConditionLabelList.fromJson(Map<String, dynamic> json) => $CoachFilterConditionLabelListFromJson(json);

	Map<String, dynamic> toJson() => $CoachFilterConditionLabelListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CoachFilterConditionMarketTypeList {
	int? code = 0;
	String? defaultPrivilege = '';
	bool? disPlay = false;
	String? icon = '';
	String? name = '';
	bool? remainingTime = false;

	CoachFilterConditionMarketTypeList();

	factory CoachFilterConditionMarketTypeList.fromJson(Map<String, dynamic> json) => $CoachFilterConditionMarketTypeListFromJson(json);

	Map<String, dynamic> toJson() => $CoachFilterConditionMarketTypeListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CoachFilterConditionMiniCarTeachTypeList {
	bool? enable = false;
	String? key = '';
	String? value = '';

	CoachFilterConditionMiniCarTeachTypeList();

	factory CoachFilterConditionMiniCarTeachTypeList.fromJson(Map<String, dynamic> json) => $CoachFilterConditionMiniCarTeachTypeListFromJson(json);

	Map<String, dynamic> toJson() => $CoachFilterConditionMiniCarTeachTypeListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CoachFilterConditionMotoTeachTypeList {
	bool? enable = false;
	String? key = '';
	String? value = '';

	CoachFilterConditionMotoTeachTypeList();

	factory CoachFilterConditionMotoTeachTypeList.fromJson(Map<String, dynamic> json) => $CoachFilterConditionMotoTeachTypeListFromJson(json);

	Map<String, dynamic> toJson() => $CoachFilterConditionMotoTeachTypeListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CoachFilterConditionOtherTeachTypeList {
	bool? enable = false;
	String? key = '';
	String? value = '';

	CoachFilterConditionOtherTeachTypeList();

	factory CoachFilterConditionOtherTeachTypeList.fromJson(Map<String, dynamic> json) => $CoachFilterConditionOtherTeachTypeListFromJson(json);

	Map<String, dynamic> toJson() => $CoachFilterConditionOtherTeachTypeListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CoachFilterConditionTeachTypeDetailList {
	bool? enable = false;
	String? key = '';
	String? value = '';

	CoachFilterConditionTeachTypeDetailList();

	factory CoachFilterConditionTeachTypeDetailList.fromJson(Map<String, dynamic> json) => $CoachFilterConditionTeachTypeDetailListFromJson(json);

	Map<String, dynamic> toJson() => $CoachFilterConditionTeachTypeDetailListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CoachFilterConditionTruckTeachTypeList {
	bool? enable = false;
	String? key = '';
	String? value = '';

	CoachFilterConditionTruckTeachTypeList();

	factory CoachFilterConditionTruckTeachTypeList.fromJson(Map<String, dynamic> json) => $CoachFilterConditionTruckTeachTypeListFromJson(json);

	Map<String, dynamic> toJson() => $CoachFilterConditionTruckTeachTypeListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}