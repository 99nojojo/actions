import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/car/n_car_brand_condition_data_entity.dart';

NCarBrandConditionDataEntity $NCarBrandConditionDataEntityFromJson(
    Map<String, dynamic> json) {
  final NCarBrandConditionDataEntity nCarBrandConditionDataEntity = NCarBrandConditionDataEntity();
  final double? articleId = jsonConvert.convert<double>(json['articleId']);
  if (articleId != null) {
    nCarBrandConditionDataEntity.articleId = articleId;
  }
  final String? country = jsonConvert.convert<String>(json['country']);
  if (country != null) {
    nCarBrandConditionDataEntity.country = country;
  }
  final String? firstLetter = jsonConvert.convert<String>(json['firstLetter']);
  if (firstLetter != null) {
    nCarBrandConditionDataEntity.firstLetter = firstLetter;
  }
  final String? homeUrl = jsonConvert.convert<String>(json['homeUrl']);
  if (homeUrl != null) {
    nCarBrandConditionDataEntity.homeUrl = homeUrl;
  }
  final double? id = jsonConvert.convert<double>(json['id']);
  if (id != null) {
    nCarBrandConditionDataEntity.id = id;
  }
  final String? logoUrl = jsonConvert.convert<String>(json['logoUrl']);
  if (logoUrl != null) {
    nCarBrandConditionDataEntity.logoUrl = logoUrl;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    nCarBrandConditionDataEntity.name = name;
  }
  final double? seriesCount = jsonConvert.convert<double>(json['seriesCount']);
  if (seriesCount != null) {
    nCarBrandConditionDataEntity.seriesCount = seriesCount;
  }
  final bool? uniOper = jsonConvert.convert<bool>(json['uniOper']);
  if (uniOper != null) {
    nCarBrandConditionDataEntity.uniOper = uniOper;
  }
  final NCarBrandConditionDataUniOperOortData? uniOperOortData = jsonConvert
      .convert<NCarBrandConditionDataUniOperOortData>(json['uniOperOortData']);
  if (uniOperOortData != null) {
    nCarBrandConditionDataEntity.uniOperOortData = uniOperOortData;
  }
  final double? vehicleType = jsonConvert.convert<double>(json['vehicleType']);
  if (vehicleType != null) {
    nCarBrandConditionDataEntity.vehicleType = vehicleType;
  }
  return nCarBrandConditionDataEntity;
}

Map<String, dynamic> $NCarBrandConditionDataEntityToJson(
    NCarBrandConditionDataEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['articleId'] = entity.articleId;
  data['country'] = entity.country;
  data['firstLetter'] = entity.firstLetter;
  data['homeUrl'] = entity.homeUrl;
  data['id'] = entity.id;
  data['logoUrl'] = entity.logoUrl;
  data['name'] = entity.name;
  data['seriesCount'] = entity.seriesCount;
  data['uniOper'] = entity.uniOper;
  data['uniOperOortData'] = entity.uniOperOortData?.toJson();
  data['vehicleType'] = entity.vehicleType;
  return data;
}

extension NCarBrandConditionDataEntityExtension on NCarBrandConditionDataEntity {
  NCarBrandConditionDataEntity copyWith({
    double? articleId,
    String? country,
    String? firstLetter,
    String? homeUrl,
    double? id,
    String? logoUrl,
    String? name,
    double? seriesCount,
    bool? uniOper,
    NCarBrandConditionDataUniOperOortData? uniOperOortData,
    double? vehicleType,
  }) {
    return NCarBrandConditionDataEntity()
      ..articleId = articleId ?? this.articleId
      ..country = country ?? this.country
      ..firstLetter = firstLetter ?? this.firstLetter
      ..homeUrl = homeUrl ?? this.homeUrl
      ..id = id ?? this.id
      ..logoUrl = logoUrl ?? this.logoUrl
      ..name = name ?? this.name
      ..seriesCount = seriesCount ?? this.seriesCount
      ..uniOper = uniOper ?? this.uniOper
      ..uniOperOortData = uniOperOortData ?? this.uniOperOortData
      ..vehicleType = vehicleType ?? this.vehicleType;
  }
}

NCarBrandConditionDataUniOperOortData $NCarBrandConditionDataUniOperOortDataFromJson(
    Map<String, dynamic> json) {
  final NCarBrandConditionDataUniOperOortData nCarBrandConditionDataUniOperOortData = NCarBrandConditionDataUniOperOortData();
  final String? entrancePage1 = jsonConvert.convert<String>(
      json['entrancePage1']);
  if (entrancePage1 != null) {
    nCarBrandConditionDataUniOperOortData.entrancePage1 = entrancePage1;
  }
  final String? eventName = jsonConvert.convert<String>(json['eventName']);
  if (eventName != null) {
    nCarBrandConditionDataUniOperOortData.eventName = eventName;
  }
  final NCarBrandConditionDataUniOperOortDataProperties? properties = jsonConvert
      .convert<NCarBrandConditionDataUniOperOortDataProperties>(
      json['properties']);
  if (properties != null) {
    nCarBrandConditionDataUniOperOortData.properties = properties;
  }
  return nCarBrandConditionDataUniOperOortData;
}

Map<String, dynamic> $NCarBrandConditionDataUniOperOortDataToJson(
    NCarBrandConditionDataUniOperOortData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['entrancePage1'] = entity.entrancePage1;
  data['eventName'] = entity.eventName;
  data['properties'] = entity.properties?.toJson();
  return data;
}

extension NCarBrandConditionDataUniOperOortDataExtension on NCarBrandConditionDataUniOperOortData {
  NCarBrandConditionDataUniOperOortData copyWith({
    String? entrancePage1,
    String? eventName,
    NCarBrandConditionDataUniOperOortDataProperties? properties,
  }) {
    return NCarBrandConditionDataUniOperOortData()
      ..entrancePage1 = entrancePage1 ?? this.entrancePage1
      ..eventName = eventName ?? this.eventName
      ..properties = properties ?? this.properties;
  }
}

NCarBrandConditionDataUniOperOortDataProperties $NCarBrandConditionDataUniOperOortDataPropertiesFromJson(
    Map<String, dynamic> json) {
  final NCarBrandConditionDataUniOperOortDataProperties nCarBrandConditionDataUniOperOortDataProperties = NCarBrandConditionDataUniOperOortDataProperties();
  final String? fragmentName1 = jsonConvert.convert<String>(
      json['fragmentName1']);
  if (fragmentName1 != null) {
    nCarBrandConditionDataUniOperOortDataProperties.fragmentName1 =
        fragmentName1;
  }
  final String? actionType = jsonConvert.convert<String>(json['actionType']);
  if (actionType != null) {
    nCarBrandConditionDataUniOperOortDataProperties.actionType = actionType;
  }
  final double? operId = jsonConvert.convert<double>(json['operId']);
  if (operId != null) {
    nCarBrandConditionDataUniOperOortDataProperties.operId = operId;
  }
  final String? pageName = jsonConvert.convert<String>(json['pageName']);
  if (pageName != null) {
    nCarBrandConditionDataUniOperOortDataProperties.pageName = pageName;
  }
  final String? actionName = jsonConvert.convert<String>(json['actionName']);
  if (actionName != null) {
    nCarBrandConditionDataUniOperOortDataProperties.actionName = actionName;
  }
  return nCarBrandConditionDataUniOperOortDataProperties;
}

Map<String, dynamic> $NCarBrandConditionDataUniOperOortDataPropertiesToJson(
    NCarBrandConditionDataUniOperOortDataProperties entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['fragmentName1'] = entity.fragmentName1;
  data['actionType'] = entity.actionType;
  data['operId'] = entity.operId;
  data['pageName'] = entity.pageName;
  data['actionName'] = entity.actionName;
  return data;
}

extension NCarBrandConditionDataUniOperOortDataPropertiesExtension on NCarBrandConditionDataUniOperOortDataProperties {
  NCarBrandConditionDataUniOperOortDataProperties copyWith({
    String? fragmentName1,
    String? actionType,
    double? operId,
    String? pageName,
    String? actionName,
  }) {
    return NCarBrandConditionDataUniOperOortDataProperties()
      ..fragmentName1 = fragmentName1 ?? this.fragmentName1
      ..actionType = actionType ?? this.actionType
      ..operId = operId ?? this.operId
      ..pageName = pageName ?? this.pageName
      ..actionName = actionName ?? this.actionName;
  }
}