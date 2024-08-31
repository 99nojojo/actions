import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/car/motocycle_home_data_entity.dart';

MotocycleHomeDataEntity $MotocycleHomeDataEntityFromJson(
    Map<String, dynamic> json) {
  final MotocycleHomeDataEntity motocycleHomeDataEntity = MotocycleHomeDataEntity();
  final List<MotocycleHomeDataItemList>? itemList = (json['itemList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<MotocycleHomeDataItemList>(
          e) as MotocycleHomeDataItemList).toList();
  if (itemList != null) {
    motocycleHomeDataEntity.itemList = itemList;
  }
  return motocycleHomeDataEntity;
}

Map<String, dynamic> $MotocycleHomeDataEntityToJson(
    MotocycleHomeDataEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  return data;
}

extension MotocycleHomeDataEntityExtension on MotocycleHomeDataEntity {
  MotocycleHomeDataEntity copyWith({
    List<MotocycleHomeDataItemList>? itemList,
  }) {
    return MotocycleHomeDataEntity()
      ..itemList = itemList ?? this.itemList;
  }
}

MotocycleHomeDataItemList $MotocycleHomeDataItemListFromJson(
    Map<String, dynamic> json) {
  final MotocycleHomeDataItemList motocycleHomeDataItemList = MotocycleHomeDataItemList();
  final int? displayOrder = jsonConvert.convert<int>(json['displayOrder']);
  if (displayOrder != null) {
    motocycleHomeDataItemList.displayOrder = displayOrder;
  }
  final List<
      MotocycleHomeDataItemListItemList>? itemList = (json['itemList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<MotocycleHomeDataItemListItemList>(
          e) as MotocycleHomeDataItemListItemList).toList();
  if (itemList != null) {
    motocycleHomeDataItemList.itemList = itemList;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    motocycleHomeDataItemList.title = title;
  }
  final int? typeCode = jsonConvert.convert<int>(json['typeCode']);
  if (typeCode != null) {
    motocycleHomeDataItemList.typeCode = typeCode;
  }
  final bool? uniOper = jsonConvert.convert<bool>(json['uniOper']);
  if (uniOper != null) {
    motocycleHomeDataItemList.uniOper = uniOper;
  }
  final String? moreButtonNav = jsonConvert.convert<String>(
      json['moreButtonNav']);
  if (moreButtonNav != null) {
    motocycleHomeDataItemList.moreButtonNav = moreButtonNav;
  }
  final String? moreButtonTitle = jsonConvert.convert<String>(
      json['moreButtonTitle']);
  if (moreButtonTitle != null) {
    motocycleHomeDataItemList.moreButtonTitle = moreButtonTitle;
  }
  return motocycleHomeDataItemList;
}

Map<String, dynamic> $MotocycleHomeDataItemListToJson(
    MotocycleHomeDataItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['displayOrder'] = entity.displayOrder;
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  data['title'] = entity.title;
  data['typeCode'] = entity.typeCode;
  data['uniOper'] = entity.uniOper;
  data['moreButtonNav'] = entity.moreButtonNav;
  data['moreButtonTitle'] = entity.moreButtonTitle;
  return data;
}

extension MotocycleHomeDataItemListExtension on MotocycleHomeDataItemList {
  MotocycleHomeDataItemList copyWith({
    int? displayOrder,
    List<MotocycleHomeDataItemListItemList>? itemList,
    String? title,
    int? typeCode,
    bool? uniOper,
    String? moreButtonNav,
    String? moreButtonTitle,
  }) {
    return MotocycleHomeDataItemList()
      ..displayOrder = displayOrder ?? this.displayOrder
      ..itemList = itemList ?? this.itemList
      ..title = title ?? this.title
      ..typeCode = typeCode ?? this.typeCode
      ..uniOper = uniOper ?? this.uniOper
      ..moreButtonNav = moreButtonNav ?? this.moreButtonNav
      ..moreButtonTitle = moreButtonTitle ?? this.moreButtonTitle;
  }
}

MotocycleHomeDataItemListItemList $MotocycleHomeDataItemListItemListFromJson(
    Map<String, dynamic> json) {
  final MotocycleHomeDataItemListItemList motocycleHomeDataItemListItemList = MotocycleHomeDataItemListItemList();
  final String? actionUrl = jsonConvert.convert<String>(json['actionUrl']);
  if (actionUrl != null) {
    motocycleHomeDataItemListItemList.actionUrl = actionUrl;
  }
  final int? brandId = jsonConvert.convert<int>(json['brandId']);
  if (brandId != null) {
    motocycleHomeDataItemListItemList.brandId = brandId;
  }
  final String? imageUrl = jsonConvert.convert<String>(json['imageUrl']);
  if (imageUrl != null) {
    motocycleHomeDataItemListItemList.imageUrl = imageUrl;
  }
  final int? seriesId = jsonConvert.convert<int>(json['seriesId']);
  if (seriesId != null) {
    motocycleHomeDataItemListItemList.seriesId = seriesId;
  }
  final int? tabId = jsonConvert.convert<int>(json['tabId']);
  if (tabId != null) {
    motocycleHomeDataItemListItemList.tabId = tabId;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    motocycleHomeDataItemListItemList.title = title;
  }
  final bool? uniOper = jsonConvert.convert<bool>(json['uniOper']);
  if (uniOper != null) {
    motocycleHomeDataItemListItemList.uniOper = uniOper;
  }
  final MotocycleHomeDataItemListItemListUniOperOortData? uniOperOortData = jsonConvert
      .convert<MotocycleHomeDataItemListItemListUniOperOortData>(
      json['uniOperOortData']);
  if (uniOperOortData != null) {
    motocycleHomeDataItemListItemList.uniOperOortData = uniOperOortData;
  }
  return motocycleHomeDataItemListItemList;
}

Map<String, dynamic> $MotocycleHomeDataItemListItemListToJson(
    MotocycleHomeDataItemListItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['actionUrl'] = entity.actionUrl;
  data['brandId'] = entity.brandId;
  data['imageUrl'] = entity.imageUrl;
  data['seriesId'] = entity.seriesId;
  data['tabId'] = entity.tabId;
  data['title'] = entity.title;
  data['uniOper'] = entity.uniOper;
  data['uniOperOortData'] = entity.uniOperOortData?.toJson();
  return data;
}

extension MotocycleHomeDataItemListItemListExtension on MotocycleHomeDataItemListItemList {
  MotocycleHomeDataItemListItemList copyWith({
    String? actionUrl,
    int? brandId,
    String? imageUrl,
    int? seriesId,
    int? tabId,
    String? title,
    bool? uniOper,
    MotocycleHomeDataItemListItemListUniOperOortData? uniOperOortData,
  }) {
    return MotocycleHomeDataItemListItemList()
      ..actionUrl = actionUrl ?? this.actionUrl
      ..brandId = brandId ?? this.brandId
      ..imageUrl = imageUrl ?? this.imageUrl
      ..seriesId = seriesId ?? this.seriesId
      ..tabId = tabId ?? this.tabId
      ..title = title ?? this.title
      ..uniOper = uniOper ?? this.uniOper
      ..uniOperOortData = uniOperOortData ?? this.uniOperOortData;
  }
}

MotocycleHomeDataItemListItemListUniOperOortData $MotocycleHomeDataItemListItemListUniOperOortDataFromJson(
    Map<String, dynamic> json) {
  final MotocycleHomeDataItemListItemListUniOperOortData motocycleHomeDataItemListItemListUniOperOortData = MotocycleHomeDataItemListItemListUniOperOortData();
  final String? eventName = jsonConvert.convert<String>(json['eventName']);
  if (eventName != null) {
    motocycleHomeDataItemListItemListUniOperOortData.eventName = eventName;
  }
  final MotocycleHomeDataItemListItemListUniOperOortDataProperties? properties = jsonConvert
      .convert<MotocycleHomeDataItemListItemListUniOperOortDataProperties>(
      json['properties']);
  if (properties != null) {
    motocycleHomeDataItemListItemListUniOperOortData.properties = properties;
  }
  return motocycleHomeDataItemListItemListUniOperOortData;
}

Map<String, dynamic> $MotocycleHomeDataItemListItemListUniOperOortDataToJson(
    MotocycleHomeDataItemListItemListUniOperOortData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['eventName'] = entity.eventName;
  data['properties'] = entity.properties?.toJson();
  return data;
}

extension MotocycleHomeDataItemListItemListUniOperOortDataExtension on MotocycleHomeDataItemListItemListUniOperOortData {
  MotocycleHomeDataItemListItemListUniOperOortData copyWith({
    String? eventName,
    MotocycleHomeDataItemListItemListUniOperOortDataProperties? properties,
  }) {
    return MotocycleHomeDataItemListItemListUniOperOortData()
      ..eventName = eventName ?? this.eventName
      ..properties = properties ?? this.properties;
  }
}

MotocycleHomeDataItemListItemListUniOperOortDataProperties $MotocycleHomeDataItemListItemListUniOperOortDataPropertiesFromJson(
    Map<String, dynamic> json) {
  final MotocycleHomeDataItemListItemListUniOperOortDataProperties motocycleHomeDataItemListItemListUniOperOortDataProperties = MotocycleHomeDataItemListItemListUniOperOortDataProperties();
  final String? fragmentName1 = jsonConvert.convert<String>(
      json['fragmentName1']);
  if (fragmentName1 != null) {
    motocycleHomeDataItemListItemListUniOperOortDataProperties.fragmentName1 =
        fragmentName1;
  }
  final String? actionType = jsonConvert.convert<String>(json['actionType']);
  if (actionType != null) {
    motocycleHomeDataItemListItemListUniOperOortDataProperties.actionType =
        actionType;
  }
  final int? operId = jsonConvert.convert<int>(json['operId']);
  if (operId != null) {
    motocycleHomeDataItemListItemListUniOperOortDataProperties.operId = operId;
  }
  final String? pageName = jsonConvert.convert<String>(json['pageName']);
  if (pageName != null) {
    motocycleHomeDataItemListItemListUniOperOortDataProperties.pageName =
        pageName;
  }
  final String? actionName = jsonConvert.convert<String>(json['actionName']);
  if (actionName != null) {
    motocycleHomeDataItemListItemListUniOperOortDataProperties.actionName =
        actionName;
  }
  return motocycleHomeDataItemListItemListUniOperOortDataProperties;
}

Map<String,
    dynamic> $MotocycleHomeDataItemListItemListUniOperOortDataPropertiesToJson(
    MotocycleHomeDataItemListItemListUniOperOortDataProperties entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['fragmentName1'] = entity.fragmentName1;
  data['actionType'] = entity.actionType;
  data['operId'] = entity.operId;
  data['pageName'] = entity.pageName;
  data['actionName'] = entity.actionName;
  return data;
}

extension MotocycleHomeDataItemListItemListUniOperOortDataPropertiesExtension on MotocycleHomeDataItemListItemListUniOperOortDataProperties {
  MotocycleHomeDataItemListItemListUniOperOortDataProperties copyWith({
    String? fragmentName1,
    String? actionType,
    int? operId,
    String? pageName,
    String? actionName,
  }) {
    return MotocycleHomeDataItemListItemListUniOperOortDataProperties()
      ..fragmentName1 = fragmentName1 ?? this.fragmentName1
      ..actionType = actionType ?? this.actionType
      ..operId = operId ?? this.operId
      ..pageName = pageName ?? this.pageName
      ..actionName = actionName ?? this.actionName;
  }
}