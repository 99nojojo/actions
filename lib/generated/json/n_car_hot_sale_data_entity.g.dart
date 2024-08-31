import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/car/n_car_hot_sale_data_entity.dart';

NCarHotSaleDataEntity $NCarHotSaleDataEntityFromJson(
    Map<String, dynamic> json) {
  final NCarHotSaleDataEntity nCarHotSaleDataEntity = NCarHotSaleDataEntity();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    nCarHotSaleDataEntity.name = name;
  }
  final List<NCarHotSaleDataItemList>? itemList = (json['itemList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<NCarHotSaleDataItemList>(
          e) as NCarHotSaleDataItemList).toList();
  if (itemList != null) {
    nCarHotSaleDataEntity.itemList = itemList;
  }
  return nCarHotSaleDataEntity;
}

Map<String, dynamic> $NCarHotSaleDataEntityToJson(
    NCarHotSaleDataEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  return data;
}

extension NCarHotSaleDataEntityExtension on NCarHotSaleDataEntity {
  NCarHotSaleDataEntity copyWith({
    String? name,
    List<NCarHotSaleDataItemList>? itemList,
  }) {
    return NCarHotSaleDataEntity()
      ..name = name ?? this.name
      ..itemList = itemList ?? this.itemList;
  }
}

NCarHotSaleDataItemList $NCarHotSaleDataItemListFromJson(
    Map<String, dynamic> json) {
  final NCarHotSaleDataItemList nCarHotSaleDataItemList = NCarHotSaleDataItemList();
  final String? actionUrl = jsonConvert.convert<String>(json['actionUrl']);
  if (actionUrl != null) {
    nCarHotSaleDataItemList.actionUrl = actionUrl;
  }
  final String? imageUrl = jsonConvert.convert<String>(json['imageUrl']);
  if (imageUrl != null) {
    nCarHotSaleDataItemList.imageUrl = imageUrl;
  }
  final int? location = jsonConvert.convert<int>(json['location']);
  if (location != null) {
    nCarHotSaleDataItemList.location = location;
  }
  final String? moduleName = jsonConvert.convert<String>(json['moduleName']);
  if (moduleName != null) {
    nCarHotSaleDataItemList.moduleName = moduleName;
  }
  final int? tabId = jsonConvert.convert<int>(json['tabId']);
  if (tabId != null) {
    nCarHotSaleDataItemList.tabId = tabId;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    nCarHotSaleDataItemList.title = title;
  }
  final bool? uniOper = jsonConvert.convert<bool>(json['uniOper']);
  if (uniOper != null) {
    nCarHotSaleDataItemList.uniOper = uniOper;
  }
  final NCarHotSaleDataItemListUniOperOortData? uniOperOortData = jsonConvert
      .convert<NCarHotSaleDataItemListUniOperOortData>(json['uniOperOortData']);
  if (uniOperOortData != null) {
    nCarHotSaleDataItemList.uniOperOortData = uniOperOortData;
  }
  return nCarHotSaleDataItemList;
}

Map<String, dynamic> $NCarHotSaleDataItemListToJson(
    NCarHotSaleDataItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['actionUrl'] = entity.actionUrl;
  data['imageUrl'] = entity.imageUrl;
  data['location'] = entity.location;
  data['moduleName'] = entity.moduleName;
  data['tabId'] = entity.tabId;
  data['title'] = entity.title;
  data['uniOper'] = entity.uniOper;
  data['uniOperOortData'] = entity.uniOperOortData?.toJson();
  return data;
}

extension NCarHotSaleDataItemListExtension on NCarHotSaleDataItemList {
  NCarHotSaleDataItemList copyWith({
    String? actionUrl,
    String? imageUrl,
    int? location,
    String? moduleName,
    int? tabId,
    String? title,
    bool? uniOper,
    NCarHotSaleDataItemListUniOperOortData? uniOperOortData,
  }) {
    return NCarHotSaleDataItemList()
      ..actionUrl = actionUrl ?? this.actionUrl
      ..imageUrl = imageUrl ?? this.imageUrl
      ..location = location ?? this.location
      ..moduleName = moduleName ?? this.moduleName
      ..tabId = tabId ?? this.tabId
      ..title = title ?? this.title
      ..uniOper = uniOper ?? this.uniOper
      ..uniOperOortData = uniOperOortData ?? this.uniOperOortData;
  }
}

NCarHotSaleDataItemListUniOperOortData $NCarHotSaleDataItemListUniOperOortDataFromJson(
    Map<String, dynamic> json) {
  final NCarHotSaleDataItemListUniOperOortData nCarHotSaleDataItemListUniOperOortData = NCarHotSaleDataItemListUniOperOortData();
  final String? entrancePage1 = jsonConvert.convert<String>(
      json['entrancePage1']);
  if (entrancePage1 != null) {
    nCarHotSaleDataItemListUniOperOortData.entrancePage1 = entrancePage1;
  }
  final String? eventName = jsonConvert.convert<String>(json['eventName']);
  if (eventName != null) {
    nCarHotSaleDataItemListUniOperOortData.eventName = eventName;
  }
  final NCarHotSaleDataItemListUniOperOortDataProperties? properties = jsonConvert
      .convert<NCarHotSaleDataItemListUniOperOortDataProperties>(
      json['properties']);
  if (properties != null) {
    nCarHotSaleDataItemListUniOperOortData.properties = properties;
  }
  return nCarHotSaleDataItemListUniOperOortData;
}

Map<String, dynamic> $NCarHotSaleDataItemListUniOperOortDataToJson(
    NCarHotSaleDataItemListUniOperOortData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['entrancePage1'] = entity.entrancePage1;
  data['eventName'] = entity.eventName;
  data['properties'] = entity.properties?.toJson();
  return data;
}

extension NCarHotSaleDataItemListUniOperOortDataExtension on NCarHotSaleDataItemListUniOperOortData {
  NCarHotSaleDataItemListUniOperOortData copyWith({
    String? entrancePage1,
    String? eventName,
    NCarHotSaleDataItemListUniOperOortDataProperties? properties,
  }) {
    return NCarHotSaleDataItemListUniOperOortData()
      ..entrancePage1 = entrancePage1 ?? this.entrancePage1
      ..eventName = eventName ?? this.eventName
      ..properties = properties ?? this.properties;
  }
}

NCarHotSaleDataItemListUniOperOortDataProperties $NCarHotSaleDataItemListUniOperOortDataPropertiesFromJson(
    Map<String, dynamic> json) {
  final NCarHotSaleDataItemListUniOperOortDataProperties nCarHotSaleDataItemListUniOperOortDataProperties = NCarHotSaleDataItemListUniOperOortDataProperties();
  final String? fragmentName1 = jsonConvert.convert<String>(
      json['fragmentName1']);
  if (fragmentName1 != null) {
    nCarHotSaleDataItemListUniOperOortDataProperties.fragmentName1 =
        fragmentName1;
  }
  final String? actionType = jsonConvert.convert<String>(json['actionType']);
  if (actionType != null) {
    nCarHotSaleDataItemListUniOperOortDataProperties.actionType = actionType;
  }
  final int? operId = jsonConvert.convert<int>(json['operId']);
  if (operId != null) {
    nCarHotSaleDataItemListUniOperOortDataProperties.operId = operId;
  }
  final String? pageName = jsonConvert.convert<String>(json['pageName']);
  if (pageName != null) {
    nCarHotSaleDataItemListUniOperOortDataProperties.pageName = pageName;
  }
  final String? actionName = jsonConvert.convert<String>(json['actionName']);
  if (actionName != null) {
    nCarHotSaleDataItemListUniOperOortDataProperties.actionName = actionName;
  }
  return nCarHotSaleDataItemListUniOperOortDataProperties;
}

Map<String, dynamic> $NCarHotSaleDataItemListUniOperOortDataPropertiesToJson(
    NCarHotSaleDataItemListUniOperOortDataProperties entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['fragmentName1'] = entity.fragmentName1;
  data['actionType'] = entity.actionType;
  data['operId'] = entity.operId;
  data['pageName'] = entity.pageName;
  data['actionName'] = entity.actionName;
  return data;
}

extension NCarHotSaleDataItemListUniOperOortDataPropertiesExtension on NCarHotSaleDataItemListUniOperOortDataProperties {
  NCarHotSaleDataItemListUniOperOortDataProperties copyWith({
    String? fragmentName1,
    String? actionType,
    int? operId,
    String? pageName,
    String? actionName,
  }) {
    return NCarHotSaleDataItemListUniOperOortDataProperties()
      ..fragmentName1 = fragmentName1 ?? this.fragmentName1
      ..actionType = actionType ?? this.actionType
      ..operId = operId ?? this.operId
      ..pageName = pageName ?? this.pageName
      ..actionName = actionName ?? this.actionName;
  }
}