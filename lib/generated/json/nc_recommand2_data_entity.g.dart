import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/car/nc_recommand2_data_entity.dart';

NcRecommand2DataEntity $NcRecommand2DataEntityFromJson(
    Map<String, dynamic> json) {
  final NcRecommand2DataEntity ncRecommand2DataEntity = NcRecommand2DataEntity();
  final int? displayOrder = jsonConvert.convert<int>(json['displayOrder']);
  if (displayOrder != null) {
    ncRecommand2DataEntity.displayOrder = displayOrder;
  }
  final List<NcRecommand2DataItemList>? itemList = (json['itemList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<NcRecommand2DataItemList>(
          e) as NcRecommand2DataItemList).toList();
  if (itemList != null) {
    ncRecommand2DataEntity.itemList = itemList;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    ncRecommand2DataEntity.title = title;
  }
  final int? typeCode = jsonConvert.convert<int>(json['typeCode']);
  if (typeCode != null) {
    ncRecommand2DataEntity.typeCode = typeCode;
  }
  final bool? uniOper = jsonConvert.convert<bool>(json['uniOper']);
  if (uniOper != null) {
    ncRecommand2DataEntity.uniOper = uniOper;
  }
  return ncRecommand2DataEntity;
}

Map<String, dynamic> $NcRecommand2DataEntityToJson(
    NcRecommand2DataEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['displayOrder'] = entity.displayOrder;
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  data['title'] = entity.title;
  data['typeCode'] = entity.typeCode;
  data['uniOper'] = entity.uniOper;
  return data;
}

extension NcRecommand2DataEntityExtension on NcRecommand2DataEntity {
  NcRecommand2DataEntity copyWith({
    int? displayOrder,
    List<NcRecommand2DataItemList>? itemList,
    String? title,
    int? typeCode,
    bool? uniOper,
  }) {
    return NcRecommand2DataEntity()
      ..displayOrder = displayOrder ?? this.displayOrder
      ..itemList = itemList ?? this.itemList
      ..title = title ?? this.title
      ..typeCode = typeCode ?? this.typeCode
      ..uniOper = uniOper ?? this.uniOper;
  }
}

NcRecommand2DataItemList $NcRecommand2DataItemListFromJson(
    Map<String, dynamic> json) {
  final NcRecommand2DataItemList ncRecommand2DataItemList = NcRecommand2DataItemList();
  final String? actionUrl = jsonConvert.convert<String>(json['actionUrl']);
  if (actionUrl != null) {
    ncRecommand2DataItemList.actionUrl = actionUrl;
  }
  final String? imageUrl = jsonConvert.convert<String>(json['imageUrl']);
  if (imageUrl != null) {
    ncRecommand2DataItemList.imageUrl = imageUrl;
  }
  final int? seriesId = jsonConvert.convert<int>(json['seriesId']);
  if (seriesId != null) {
    ncRecommand2DataItemList.seriesId = seriesId;
  }
  final int? tabId = jsonConvert.convert<int>(json['tabId']);
  if (tabId != null) {
    ncRecommand2DataItemList.tabId = tabId;
  }
  final bool? uniOper = jsonConvert.convert<bool>(json['uniOper']);
  if (uniOper != null) {
    ncRecommand2DataItemList.uniOper = uniOper;
  }
  final NcRecommand2DataItemListUniOperOortData? uniOperOortData = jsonConvert
      .convert<NcRecommand2DataItemListUniOperOortData>(
      json['uniOperOortData']);
  if (uniOperOortData != null) {
    ncRecommand2DataItemList.uniOperOortData = uniOperOortData;
  }
  return ncRecommand2DataItemList;
}

Map<String, dynamic> $NcRecommand2DataItemListToJson(
    NcRecommand2DataItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['actionUrl'] = entity.actionUrl;
  data['imageUrl'] = entity.imageUrl;
  data['seriesId'] = entity.seriesId;
  data['tabId'] = entity.tabId;
  data['uniOper'] = entity.uniOper;
  data['uniOperOortData'] = entity.uniOperOortData?.toJson();
  return data;
}

extension NcRecommand2DataItemListExtension on NcRecommand2DataItemList {
  NcRecommand2DataItemList copyWith({
    String? actionUrl,
    String? imageUrl,
    int? seriesId,
    int? tabId,
    bool? uniOper,
    NcRecommand2DataItemListUniOperOortData? uniOperOortData,
  }) {
    return NcRecommand2DataItemList()
      ..actionUrl = actionUrl ?? this.actionUrl
      ..imageUrl = imageUrl ?? this.imageUrl
      ..seriesId = seriesId ?? this.seriesId
      ..tabId = tabId ?? this.tabId
      ..uniOper = uniOper ?? this.uniOper
      ..uniOperOortData = uniOperOortData ?? this.uniOperOortData;
  }
}

NcRecommand2DataItemListUniOperOortData $NcRecommand2DataItemListUniOperOortDataFromJson(
    Map<String, dynamic> json) {
  final NcRecommand2DataItemListUniOperOortData ncRecommand2DataItemListUniOperOortData = NcRecommand2DataItemListUniOperOortData();
  final String? entrancePage1 = jsonConvert.convert<String>(
      json['entrancePage1']);
  if (entrancePage1 != null) {
    ncRecommand2DataItemListUniOperOortData.entrancePage1 = entrancePage1;
  }
  final String? eventName = jsonConvert.convert<String>(json['eventName']);
  if (eventName != null) {
    ncRecommand2DataItemListUniOperOortData.eventName = eventName;
  }
  final NcRecommand2DataItemListUniOperOortDataProperties? properties = jsonConvert
      .convert<NcRecommand2DataItemListUniOperOortDataProperties>(
      json['properties']);
  if (properties != null) {
    ncRecommand2DataItemListUniOperOortData.properties = properties;
  }
  return ncRecommand2DataItemListUniOperOortData;
}

Map<String, dynamic> $NcRecommand2DataItemListUniOperOortDataToJson(
    NcRecommand2DataItemListUniOperOortData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['entrancePage1'] = entity.entrancePage1;
  data['eventName'] = entity.eventName;
  data['properties'] = entity.properties?.toJson();
  return data;
}

extension NcRecommand2DataItemListUniOperOortDataExtension on NcRecommand2DataItemListUniOperOortData {
  NcRecommand2DataItemListUniOperOortData copyWith({
    String? entrancePage1,
    String? eventName,
    NcRecommand2DataItemListUniOperOortDataProperties? properties,
  }) {
    return NcRecommand2DataItemListUniOperOortData()
      ..entrancePage1 = entrancePage1 ?? this.entrancePage1
      ..eventName = eventName ?? this.eventName
      ..properties = properties ?? this.properties;
  }
}

NcRecommand2DataItemListUniOperOortDataProperties $NcRecommand2DataItemListUniOperOortDataPropertiesFromJson(
    Map<String, dynamic> json) {
  final NcRecommand2DataItemListUniOperOortDataProperties ncRecommand2DataItemListUniOperOortDataProperties = NcRecommand2DataItemListUniOperOortDataProperties();
  final String? fragmentName1 = jsonConvert.convert<String>(
      json['fragmentName1']);
  if (fragmentName1 != null) {
    ncRecommand2DataItemListUniOperOortDataProperties.fragmentName1 =
        fragmentName1;
  }
  final String? actionType = jsonConvert.convert<String>(json['actionType']);
  if (actionType != null) {
    ncRecommand2DataItemListUniOperOortDataProperties.actionType = actionType;
  }
  final int? operId = jsonConvert.convert<int>(json['operId']);
  if (operId != null) {
    ncRecommand2DataItemListUniOperOortDataProperties.operId = operId;
  }
  final String? pageName = jsonConvert.convert<String>(json['pageName']);
  if (pageName != null) {
    ncRecommand2DataItemListUniOperOortDataProperties.pageName = pageName;
  }
  final String? actionName = jsonConvert.convert<String>(json['actionName']);
  if (actionName != null) {
    ncRecommand2DataItemListUniOperOortDataProperties.actionName = actionName;
  }
  return ncRecommand2DataItemListUniOperOortDataProperties;
}

Map<String, dynamic> $NcRecommand2DataItemListUniOperOortDataPropertiesToJson(
    NcRecommand2DataItemListUniOperOortDataProperties entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['fragmentName1'] = entity.fragmentName1;
  data['actionType'] = entity.actionType;
  data['operId'] = entity.operId;
  data['pageName'] = entity.pageName;
  data['actionName'] = entity.actionName;
  return data;
}

extension NcRecommand2DataItemListUniOperOortDataPropertiesExtension on NcRecommand2DataItemListUniOperOortDataProperties {
  NcRecommand2DataItemListUniOperOortDataProperties copyWith({
    String? fragmentName1,
    String? actionType,
    int? operId,
    String? pageName,
    String? actionName,
  }) {
    return NcRecommand2DataItemListUniOperOortDataProperties()
      ..fragmentName1 = fragmentName1 ?? this.fragmentName1
      ..actionType = actionType ?? this.actionType
      ..operId = operId ?? this.operId
      ..pageName = pageName ?? this.pageName
      ..actionName = actionName ?? this.actionName;
  }
}