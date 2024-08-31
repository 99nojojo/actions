import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/coach_filter_condition_entity.dart';

CoachFilterConditionEntity $CoachFilterConditionEntityFromJson(
    Map<String, dynamic> json) {
  final CoachFilterConditionEntity coachFilterConditionEntity = CoachFilterConditionEntity();
  final List<
      CoachFilterConditionBusTeachTypeList>? busTeachTypeList = (json['busTeachTypeList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<CoachFilterConditionBusTeachTypeList>(
          e) as CoachFilterConditionBusTeachTypeList).toList();
  if (busTeachTypeList != null) {
    coachFilterConditionEntity.busTeachTypeList = busTeachTypeList;
  }
  final List<
      CoachFilterConditionCountyList>? countyList = (json['countyList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<CoachFilterConditionCountyList>(
          e) as CoachFilterConditionCountyList).toList();
  if (countyList != null) {
    coachFilterConditionEntity.countyList = countyList;
  }
  final List<
      CoachFilterConditionCourseClassList>? courseClassList = (json['courseClassList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<CoachFilterConditionCourseClassList>(
          e) as CoachFilterConditionCourseClassList).toList();
  if (courseClassList != null) {
    coachFilterConditionEntity.courseClassList = courseClassList;
  }
  final List<
      CoachFilterConditionDistanceSearchList>? distanceSearchList = (json['distanceSearchList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<CoachFilterConditionDistanceSearchList>(
          e) as CoachFilterConditionDistanceSearchList).toList();
  if (distanceSearchList != null) {
    coachFilterConditionEntity.distanceSearchList = distanceSearchList;
  }
  final List<
      CoachFilterConditionIntelligentLabelList>? intelligentLabelList = (json['intelligentLabelList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<CoachFilterConditionIntelligentLabelList>(
          e) as CoachFilterConditionIntelligentLabelList).toList();
  if (intelligentLabelList != null) {
    coachFilterConditionEntity.intelligentLabelList = intelligentLabelList;
  }
  final List<
      CoachFilterConditionLabelList>? labelList = (json['labelList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<CoachFilterConditionLabelList>(
          e) as CoachFilterConditionLabelList).toList();
  if (labelList != null) {
    coachFilterConditionEntity.labelList = labelList;
  }
  final List<
      CoachFilterConditionMarketTypeList>? marketTypeList = (json['marketTypeList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<CoachFilterConditionMarketTypeList>(
          e) as CoachFilterConditionMarketTypeList).toList();
  if (marketTypeList != null) {
    coachFilterConditionEntity.marketTypeList = marketTypeList;
  }
  final List<
      CoachFilterConditionMiniCarTeachTypeList>? miniCarTeachTypeList = (json['miniCarTeachTypeList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<CoachFilterConditionMiniCarTeachTypeList>(
          e) as CoachFilterConditionMiniCarTeachTypeList).toList();
  if (miniCarTeachTypeList != null) {
    coachFilterConditionEntity.miniCarTeachTypeList = miniCarTeachTypeList;
  }
  final List<
      CoachFilterConditionMotoTeachTypeList>? motoTeachTypeList = (json['motoTeachTypeList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<CoachFilterConditionMotoTeachTypeList>(
          e) as CoachFilterConditionMotoTeachTypeList).toList();
  if (motoTeachTypeList != null) {
    coachFilterConditionEntity.motoTeachTypeList = motoTeachTypeList;
  }
  final List<
      CoachFilterConditionOtherTeachTypeList>? otherTeachTypeList = (json['otherTeachTypeList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<CoachFilterConditionOtherTeachTypeList>(
          e) as CoachFilterConditionOtherTeachTypeList).toList();
  if (otherTeachTypeList != null) {
    coachFilterConditionEntity.otherTeachTypeList = otherTeachTypeList;
  }
  final List<
      CoachFilterConditionTeachTypeDetailList>? teachTypeDetailList = (json['teachTypeDetailList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<CoachFilterConditionTeachTypeDetailList>(
          e) as CoachFilterConditionTeachTypeDetailList).toList();
  if (teachTypeDetailList != null) {
    coachFilterConditionEntity.teachTypeDetailList = teachTypeDetailList;
  }
  final List<String>? teachTypeList = (json['teachTypeList'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<String>(e) as String)
      .toList();
  if (teachTypeList != null) {
    coachFilterConditionEntity.teachTypeList = teachTypeList;
  }
  final List<
      CoachFilterConditionTruckTeachTypeList>? truckTeachTypeList = (json['truckTeachTypeList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<CoachFilterConditionTruckTeachTypeList>(
          e) as CoachFilterConditionTruckTeachTypeList).toList();
  if (truckTeachTypeList != null) {
    coachFilterConditionEntity.truckTeachTypeList = truckTeachTypeList;
  }
  return coachFilterConditionEntity;
}

Map<String, dynamic> $CoachFilterConditionEntityToJson(
    CoachFilterConditionEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['busTeachTypeList'] =
      entity.busTeachTypeList?.map((v) => v.toJson()).toList();
  data['countyList'] = entity.countyList?.map((v) => v.toJson()).toList();
  data['courseClassList'] =
      entity.courseClassList?.map((v) => v.toJson()).toList();
  data['distanceSearchList'] =
      entity.distanceSearchList?.map((v) => v.toJson()).toList();
  data['intelligentLabelList'] =
      entity.intelligentLabelList?.map((v) => v.toJson()).toList();
  data['labelList'] = entity.labelList?.map((v) => v.toJson()).toList();
  data['marketTypeList'] =
      entity.marketTypeList?.map((v) => v.toJson()).toList();
  data['miniCarTeachTypeList'] =
      entity.miniCarTeachTypeList?.map((v) => v.toJson()).toList();
  data['motoTeachTypeList'] =
      entity.motoTeachTypeList?.map((v) => v.toJson()).toList();
  data['otherTeachTypeList'] =
      entity.otherTeachTypeList?.map((v) => v.toJson()).toList();
  data['teachTypeDetailList'] =
      entity.teachTypeDetailList?.map((v) => v.toJson()).toList();
  data['teachTypeList'] = entity.teachTypeList;
  data['truckTeachTypeList'] =
      entity.truckTeachTypeList?.map((v) => v.toJson()).toList();
  return data;
}

extension CoachFilterConditionEntityExtension on CoachFilterConditionEntity {
  CoachFilterConditionEntity copyWith({
    List<CoachFilterConditionBusTeachTypeList>? busTeachTypeList,
    List<CoachFilterConditionCountyList>? countyList,
    List<CoachFilterConditionCourseClassList>? courseClassList,
    List<CoachFilterConditionDistanceSearchList>? distanceSearchList,
    List<CoachFilterConditionIntelligentLabelList>? intelligentLabelList,
    List<CoachFilterConditionLabelList>? labelList,
    List<CoachFilterConditionMarketTypeList>? marketTypeList,
    List<CoachFilterConditionMiniCarTeachTypeList>? miniCarTeachTypeList,
    List<CoachFilterConditionMotoTeachTypeList>? motoTeachTypeList,
    List<CoachFilterConditionOtherTeachTypeList>? otherTeachTypeList,
    List<CoachFilterConditionTeachTypeDetailList>? teachTypeDetailList,
    List<String>? teachTypeList,
    List<CoachFilterConditionTruckTeachTypeList>? truckTeachTypeList,
  }) {
    return CoachFilterConditionEntity()
      ..busTeachTypeList = busTeachTypeList ?? this.busTeachTypeList
      ..countyList = countyList ?? this.countyList
      ..courseClassList = courseClassList ?? this.courseClassList
      ..distanceSearchList = distanceSearchList ?? this.distanceSearchList
      ..intelligentLabelList = intelligentLabelList ?? this.intelligentLabelList
      ..labelList = labelList ?? this.labelList
      ..marketTypeList = marketTypeList ?? this.marketTypeList
      ..miniCarTeachTypeList = miniCarTeachTypeList ?? this.miniCarTeachTypeList
      ..motoTeachTypeList = motoTeachTypeList ?? this.motoTeachTypeList
      ..otherTeachTypeList = otherTeachTypeList ?? this.otherTeachTypeList
      ..teachTypeDetailList = teachTypeDetailList ?? this.teachTypeDetailList
      ..teachTypeList = teachTypeList ?? this.teachTypeList
      ..truckTeachTypeList = truckTeachTypeList ?? this.truckTeachTypeList;
  }
}

CoachFilterConditionBusTeachTypeList $CoachFilterConditionBusTeachTypeListFromJson(
    Map<String, dynamic> json) {
  final CoachFilterConditionBusTeachTypeList coachFilterConditionBusTeachTypeList = CoachFilterConditionBusTeachTypeList();
  final bool? enable = jsonConvert.convert<bool>(json['enable']);
  if (enable != null) {
    coachFilterConditionBusTeachTypeList.enable = enable;
  }
  final String? key = jsonConvert.convert<String>(json['key']);
  if (key != null) {
    coachFilterConditionBusTeachTypeList.key = key;
  }
  final String? value = jsonConvert.convert<String>(json['value']);
  if (value != null) {
    coachFilterConditionBusTeachTypeList.value = value;
  }
  return coachFilterConditionBusTeachTypeList;
}

Map<String, dynamic> $CoachFilterConditionBusTeachTypeListToJson(
    CoachFilterConditionBusTeachTypeList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['enable'] = entity.enable;
  data['key'] = entity.key;
  data['value'] = entity.value;
  return data;
}

extension CoachFilterConditionBusTeachTypeListExtension on CoachFilterConditionBusTeachTypeList {
  CoachFilterConditionBusTeachTypeList copyWith({
    bool? enable,
    String? key,
    String? value,
  }) {
    return CoachFilterConditionBusTeachTypeList()
      ..enable = enable ?? this.enable
      ..key = key ?? this.key
      ..value = value ?? this.value;
  }
}

CoachFilterConditionCountyList $CoachFilterConditionCountyListFromJson(
    Map<String, dynamic> json) {
  final CoachFilterConditionCountyList coachFilterConditionCountyList = CoachFilterConditionCountyList();
  final String? cityCode = jsonConvert.convert<String>(json['cityCode']);
  if (cityCode != null) {
    coachFilterConditionCountyList.cityCode = cityCode;
  }
  final String? cityName = jsonConvert.convert<String>(json['cityName']);
  if (cityName != null) {
    coachFilterConditionCountyList.cityName = cityName;
  }
  final int? count = jsonConvert.convert<int>(json['count']);
  if (count != null) {
    coachFilterConditionCountyList.count = count;
  }
  return coachFilterConditionCountyList;
}

Map<String, dynamic> $CoachFilterConditionCountyListToJson(
    CoachFilterConditionCountyList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['cityCode'] = entity.cityCode;
  data['cityName'] = entity.cityName;
  data['count'] = entity.count;
  return data;
}

extension CoachFilterConditionCountyListExtension on CoachFilterConditionCountyList {
  CoachFilterConditionCountyList copyWith({
    String? cityCode,
    String? cityName,
    int? count,
  }) {
    return CoachFilterConditionCountyList()
      ..cityCode = cityCode ?? this.cityCode
      ..cityName = cityName ?? this.cityName
      ..count = count ?? this.count;
  }
}

CoachFilterConditionCourseClassList $CoachFilterConditionCourseClassListFromJson(
    Map<String, dynamic> json) {
  final CoachFilterConditionCourseClassList coachFilterConditionCourseClassList = CoachFilterConditionCourseClassList();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    coachFilterConditionCourseClassList.code = code;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    coachFilterConditionCourseClassList.description = description;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    coachFilterConditionCourseClassList.name = name;
  }
  return coachFilterConditionCourseClassList;
}

Map<String, dynamic> $CoachFilterConditionCourseClassListToJson(
    CoachFilterConditionCourseClassList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['description'] = entity.description;
  data['name'] = entity.name;
  return data;
}

extension CoachFilterConditionCourseClassListExtension on CoachFilterConditionCourseClassList {
  CoachFilterConditionCourseClassList copyWith({
    int? code,
    String? description,
    String? name,
  }) {
    return CoachFilterConditionCourseClassList()
      ..code = code ?? this.code
      ..description = description ?? this.description
      ..name = name ?? this.name;
  }
}

CoachFilterConditionDistanceSearchList $CoachFilterConditionDistanceSearchListFromJson(
    Map<String, dynamic> json) {
  final CoachFilterConditionDistanceSearchList coachFilterConditionDistanceSearchList = CoachFilterConditionDistanceSearchList();
  final bool? enable = jsonConvert.convert<bool>(json['enable']);
  if (enable != null) {
    coachFilterConditionDistanceSearchList.enable = enable;
  }
  final String? key = jsonConvert.convert<String>(json['key']);
  if (key != null) {
    coachFilterConditionDistanceSearchList.key = key;
  }
  final int? value = jsonConvert.convert<int>(json['value']);
  if (value != null) {
    coachFilterConditionDistanceSearchList.value = value;
  }
  return coachFilterConditionDistanceSearchList;
}

Map<String, dynamic> $CoachFilterConditionDistanceSearchListToJson(
    CoachFilterConditionDistanceSearchList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['enable'] = entity.enable;
  data['key'] = entity.key;
  data['value'] = entity.value;
  return data;
}

extension CoachFilterConditionDistanceSearchListExtension on CoachFilterConditionDistanceSearchList {
  CoachFilterConditionDistanceSearchList copyWith({
    bool? enable,
    String? key,
    int? value,
  }) {
    return CoachFilterConditionDistanceSearchList()
      ..enable = enable ?? this.enable
      ..key = key ?? this.key
      ..value = value ?? this.value;
  }
}

CoachFilterConditionIntelligentLabelList $CoachFilterConditionIntelligentLabelListFromJson(
    Map<String, dynamic> json) {
  final CoachFilterConditionIntelligentLabelList coachFilterConditionIntelligentLabelList = CoachFilterConditionIntelligentLabelList();
  final bool? enable = jsonConvert.convert<bool>(json['enable']);
  if (enable != null) {
    coachFilterConditionIntelligentLabelList.enable = enable;
  }
  final String? iconUrl = jsonConvert.convert<String>(json['iconUrl']);
  if (iconUrl != null) {
    coachFilterConditionIntelligentLabelList.iconUrl = iconUrl;
  }
  final String? key = jsonConvert.convert<String>(json['key']);
  if (key != null) {
    coachFilterConditionIntelligentLabelList.key = key;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    coachFilterConditionIntelligentLabelList.name = name;
  }
  return coachFilterConditionIntelligentLabelList;
}

Map<String, dynamic> $CoachFilterConditionIntelligentLabelListToJson(
    CoachFilterConditionIntelligentLabelList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['enable'] = entity.enable;
  data['iconUrl'] = entity.iconUrl;
  data['key'] = entity.key;
  data['name'] = entity.name;
  return data;
}

extension CoachFilterConditionIntelligentLabelListExtension on CoachFilterConditionIntelligentLabelList {
  CoachFilterConditionIntelligentLabelList copyWith({
    bool? enable,
    String? iconUrl,
    String? key,
    String? name,
  }) {
    return CoachFilterConditionIntelligentLabelList()
      ..enable = enable ?? this.enable
      ..iconUrl = iconUrl ?? this.iconUrl
      ..key = key ?? this.key
      ..name = name ?? this.name;
  }
}

CoachFilterConditionLabelList $CoachFilterConditionLabelListFromJson(
    Map<String, dynamic> json) {
  final CoachFilterConditionLabelList coachFilterConditionLabelList = CoachFilterConditionLabelList();
  final bool? disPlay = jsonConvert.convert<bool>(json['disPlay']);
  if (disPlay != null) {
    coachFilterConditionLabelList.disPlay = disPlay;
  }
  final dynamic iconUrl = json['iconUrl'];
  if (iconUrl != null) {
    coachFilterConditionLabelList.iconUrl = iconUrl;
  }
  final int? label = jsonConvert.convert<int>(json['label']);
  if (label != null) {
    coachFilterConditionLabelList.label = label;
  }
  final String? labelDetail = jsonConvert.convert<String>(json['labelDetail']);
  if (labelDetail != null) {
    coachFilterConditionLabelList.labelDetail = labelDetail;
  }
  return coachFilterConditionLabelList;
}

Map<String, dynamic> $CoachFilterConditionLabelListToJson(
    CoachFilterConditionLabelList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['disPlay'] = entity.disPlay;
  data['iconUrl'] = entity.iconUrl;
  data['label'] = entity.label;
  data['labelDetail'] = entity.labelDetail;
  return data;
}

extension CoachFilterConditionLabelListExtension on CoachFilterConditionLabelList {
  CoachFilterConditionLabelList copyWith({
    bool? disPlay,
    dynamic iconUrl,
    int? label,
    String? labelDetail,
  }) {
    return CoachFilterConditionLabelList()
      ..disPlay = disPlay ?? this.disPlay
      ..iconUrl = iconUrl ?? this.iconUrl
      ..label = label ?? this.label
      ..labelDetail = labelDetail ?? this.labelDetail;
  }
}

CoachFilterConditionMarketTypeList $CoachFilterConditionMarketTypeListFromJson(
    Map<String, dynamic> json) {
  final CoachFilterConditionMarketTypeList coachFilterConditionMarketTypeList = CoachFilterConditionMarketTypeList();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    coachFilterConditionMarketTypeList.code = code;
  }
  final String? defaultPrivilege = jsonConvert.convert<String>(
      json['defaultPrivilege']);
  if (defaultPrivilege != null) {
    coachFilterConditionMarketTypeList.defaultPrivilege = defaultPrivilege;
  }
  final bool? disPlay = jsonConvert.convert<bool>(json['disPlay']);
  if (disPlay != null) {
    coachFilterConditionMarketTypeList.disPlay = disPlay;
  }
  final String? icon = jsonConvert.convert<String>(json['icon']);
  if (icon != null) {
    coachFilterConditionMarketTypeList.icon = icon;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    coachFilterConditionMarketTypeList.name = name;
  }
  final bool? remainingTime = jsonConvert.convert<bool>(json['remainingTime']);
  if (remainingTime != null) {
    coachFilterConditionMarketTypeList.remainingTime = remainingTime;
  }
  return coachFilterConditionMarketTypeList;
}

Map<String, dynamic> $CoachFilterConditionMarketTypeListToJson(
    CoachFilterConditionMarketTypeList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['defaultPrivilege'] = entity.defaultPrivilege;
  data['disPlay'] = entity.disPlay;
  data['icon'] = entity.icon;
  data['name'] = entity.name;
  data['remainingTime'] = entity.remainingTime;
  return data;
}

extension CoachFilterConditionMarketTypeListExtension on CoachFilterConditionMarketTypeList {
  CoachFilterConditionMarketTypeList copyWith({
    int? code,
    String? defaultPrivilege,
    bool? disPlay,
    String? icon,
    String? name,
    bool? remainingTime,
  }) {
    return CoachFilterConditionMarketTypeList()
      ..code = code ?? this.code
      ..defaultPrivilege = defaultPrivilege ?? this.defaultPrivilege
      ..disPlay = disPlay ?? this.disPlay
      ..icon = icon ?? this.icon
      ..name = name ?? this.name
      ..remainingTime = remainingTime ?? this.remainingTime;
  }
}

CoachFilterConditionMiniCarTeachTypeList $CoachFilterConditionMiniCarTeachTypeListFromJson(
    Map<String, dynamic> json) {
  final CoachFilterConditionMiniCarTeachTypeList coachFilterConditionMiniCarTeachTypeList = CoachFilterConditionMiniCarTeachTypeList();
  final bool? enable = jsonConvert.convert<bool>(json['enable']);
  if (enable != null) {
    coachFilterConditionMiniCarTeachTypeList.enable = enable;
  }
  final String? key = jsonConvert.convert<String>(json['key']);
  if (key != null) {
    coachFilterConditionMiniCarTeachTypeList.key = key;
  }
  final String? value = jsonConvert.convert<String>(json['value']);
  if (value != null) {
    coachFilterConditionMiniCarTeachTypeList.value = value;
  }
  return coachFilterConditionMiniCarTeachTypeList;
}

Map<String, dynamic> $CoachFilterConditionMiniCarTeachTypeListToJson(
    CoachFilterConditionMiniCarTeachTypeList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['enable'] = entity.enable;
  data['key'] = entity.key;
  data['value'] = entity.value;
  return data;
}

extension CoachFilterConditionMiniCarTeachTypeListExtension on CoachFilterConditionMiniCarTeachTypeList {
  CoachFilterConditionMiniCarTeachTypeList copyWith({
    bool? enable,
    String? key,
    String? value,
  }) {
    return CoachFilterConditionMiniCarTeachTypeList()
      ..enable = enable ?? this.enable
      ..key = key ?? this.key
      ..value = value ?? this.value;
  }
}

CoachFilterConditionMotoTeachTypeList $CoachFilterConditionMotoTeachTypeListFromJson(
    Map<String, dynamic> json) {
  final CoachFilterConditionMotoTeachTypeList coachFilterConditionMotoTeachTypeList = CoachFilterConditionMotoTeachTypeList();
  final bool? enable = jsonConvert.convert<bool>(json['enable']);
  if (enable != null) {
    coachFilterConditionMotoTeachTypeList.enable = enable;
  }
  final String? key = jsonConvert.convert<String>(json['key']);
  if (key != null) {
    coachFilterConditionMotoTeachTypeList.key = key;
  }
  final String? value = jsonConvert.convert<String>(json['value']);
  if (value != null) {
    coachFilterConditionMotoTeachTypeList.value = value;
  }
  return coachFilterConditionMotoTeachTypeList;
}

Map<String, dynamic> $CoachFilterConditionMotoTeachTypeListToJson(
    CoachFilterConditionMotoTeachTypeList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['enable'] = entity.enable;
  data['key'] = entity.key;
  data['value'] = entity.value;
  return data;
}

extension CoachFilterConditionMotoTeachTypeListExtension on CoachFilterConditionMotoTeachTypeList {
  CoachFilterConditionMotoTeachTypeList copyWith({
    bool? enable,
    String? key,
    String? value,
  }) {
    return CoachFilterConditionMotoTeachTypeList()
      ..enable = enable ?? this.enable
      ..key = key ?? this.key
      ..value = value ?? this.value;
  }
}

CoachFilterConditionOtherTeachTypeList $CoachFilterConditionOtherTeachTypeListFromJson(
    Map<String, dynamic> json) {
  final CoachFilterConditionOtherTeachTypeList coachFilterConditionOtherTeachTypeList = CoachFilterConditionOtherTeachTypeList();
  final bool? enable = jsonConvert.convert<bool>(json['enable']);
  if (enable != null) {
    coachFilterConditionOtherTeachTypeList.enable = enable;
  }
  final String? key = jsonConvert.convert<String>(json['key']);
  if (key != null) {
    coachFilterConditionOtherTeachTypeList.key = key;
  }
  final String? value = jsonConvert.convert<String>(json['value']);
  if (value != null) {
    coachFilterConditionOtherTeachTypeList.value = value;
  }
  return coachFilterConditionOtherTeachTypeList;
}

Map<String, dynamic> $CoachFilterConditionOtherTeachTypeListToJson(
    CoachFilterConditionOtherTeachTypeList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['enable'] = entity.enable;
  data['key'] = entity.key;
  data['value'] = entity.value;
  return data;
}

extension CoachFilterConditionOtherTeachTypeListExtension on CoachFilterConditionOtherTeachTypeList {
  CoachFilterConditionOtherTeachTypeList copyWith({
    bool? enable,
    String? key,
    String? value,
  }) {
    return CoachFilterConditionOtherTeachTypeList()
      ..enable = enable ?? this.enable
      ..key = key ?? this.key
      ..value = value ?? this.value;
  }
}

CoachFilterConditionTeachTypeDetailList $CoachFilterConditionTeachTypeDetailListFromJson(
    Map<String, dynamic> json) {
  final CoachFilterConditionTeachTypeDetailList coachFilterConditionTeachTypeDetailList = CoachFilterConditionTeachTypeDetailList();
  final bool? enable = jsonConvert.convert<bool>(json['enable']);
  if (enable != null) {
    coachFilterConditionTeachTypeDetailList.enable = enable;
  }
  final String? key = jsonConvert.convert<String>(json['key']);
  if (key != null) {
    coachFilterConditionTeachTypeDetailList.key = key;
  }
  final String? value = jsonConvert.convert<String>(json['value']);
  if (value != null) {
    coachFilterConditionTeachTypeDetailList.value = value;
  }
  return coachFilterConditionTeachTypeDetailList;
}

Map<String, dynamic> $CoachFilterConditionTeachTypeDetailListToJson(
    CoachFilterConditionTeachTypeDetailList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['enable'] = entity.enable;
  data['key'] = entity.key;
  data['value'] = entity.value;
  return data;
}

extension CoachFilterConditionTeachTypeDetailListExtension on CoachFilterConditionTeachTypeDetailList {
  CoachFilterConditionTeachTypeDetailList copyWith({
    bool? enable,
    String? key,
    String? value,
  }) {
    return CoachFilterConditionTeachTypeDetailList()
      ..enable = enable ?? this.enable
      ..key = key ?? this.key
      ..value = value ?? this.value;
  }
}

CoachFilterConditionTruckTeachTypeList $CoachFilterConditionTruckTeachTypeListFromJson(
    Map<String, dynamic> json) {
  final CoachFilterConditionTruckTeachTypeList coachFilterConditionTruckTeachTypeList = CoachFilterConditionTruckTeachTypeList();
  final bool? enable = jsonConvert.convert<bool>(json['enable']);
  if (enable != null) {
    coachFilterConditionTruckTeachTypeList.enable = enable;
  }
  final String? key = jsonConvert.convert<String>(json['key']);
  if (key != null) {
    coachFilterConditionTruckTeachTypeList.key = key;
  }
  final String? value = jsonConvert.convert<String>(json['value']);
  if (value != null) {
    coachFilterConditionTruckTeachTypeList.value = value;
  }
  return coachFilterConditionTruckTeachTypeList;
}

Map<String, dynamic> $CoachFilterConditionTruckTeachTypeListToJson(
    CoachFilterConditionTruckTeachTypeList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['enable'] = entity.enable;
  data['key'] = entity.key;
  data['value'] = entity.value;
  return data;
}

extension CoachFilterConditionTruckTeachTypeListExtension on CoachFilterConditionTruckTeachTypeList {
  CoachFilterConditionTruckTeachTypeList copyWith({
    bool? enable,
    String? key,
    String? value,
  }) {
    return CoachFilterConditionTruckTeachTypeList()
      ..enable = enable ?? this.enable
      ..key = key ?? this.key
      ..value = value ?? this.value;
  }
}