import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/car/n_car_condition_data_entity.dart';

NCarConditionDataEntity $NCarConditionDataEntityFromJson(
    Map<String, dynamic> json) {
  final NCarConditionDataEntity nCarConditionDataEntity = NCarConditionDataEntity();
  final List<NCarConditionDataItemList>? itemList = (json['itemList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<NCarConditionDataItemList>(
          e) as NCarConditionDataItemList).toList();
  if (itemList != null) {
    nCarConditionDataEntity.itemList = itemList;
  }
  return nCarConditionDataEntity;
}

Map<String, dynamic> $NCarConditionDataEntityToJson(
    NCarConditionDataEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  return data;
}

extension NCarConditionDataEntityExtension on NCarConditionDataEntity {
  NCarConditionDataEntity copyWith({
    List<NCarConditionDataItemList>? itemList,
  }) {
    return NCarConditionDataEntity()
      ..itemList = itemList ?? this.itemList;
  }
}

NCarConditionDataItemList $NCarConditionDataItemListFromJson(
    Map<String, dynamic> json) {
  final NCarConditionDataItemList nCarConditionDataItemList = NCarConditionDataItemList();
  final String? conditionUrl = jsonConvert.convert<String>(
      json['conditionUrl']);
  if (conditionUrl != null) {
    nCarConditionDataItemList.conditionUrl = conditionUrl;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    nCarConditionDataItemList.name = name;
  }
  return nCarConditionDataItemList;
}

Map<String, dynamic> $NCarConditionDataItemListToJson(
    NCarConditionDataItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['conditionUrl'] = entity.conditionUrl;
  data['name'] = entity.name;
  return data;
}

extension NCarConditionDataItemListExtension on NCarConditionDataItemList {
  NCarConditionDataItemList copyWith({
    String? conditionUrl,
    String? name,
  }) {
    return NCarConditionDataItemList()
      ..conditionUrl = conditionUrl ?? this.conditionUrl
      ..name = name ?? this.name;
  }
}