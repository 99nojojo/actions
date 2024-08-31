import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/car/nc_recommand1_data_entity.dart';

NcRecommand1DataEntity $NcRecommand1DataEntityFromJson(
    Map<String, dynamic> json) {
  final NcRecommand1DataEntity ncRecommand1DataEntity = NcRecommand1DataEntity();
  final int? displayOrder = jsonConvert.convert<int>(json['displayOrder']);
  if (displayOrder != null) {
    ncRecommand1DataEntity.displayOrder = displayOrder;
  }
  final List<NcRecommand1DataItemList>? itemList = (json['itemList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<NcRecommand1DataItemList>(
          e) as NcRecommand1DataItemList).toList();
  if (itemList != null) {
    ncRecommand1DataEntity.itemList = itemList;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    ncRecommand1DataEntity.title = title;
  }
  final int? typeCode = jsonConvert.convert<int>(json['typeCode']);
  if (typeCode != null) {
    ncRecommand1DataEntity.typeCode = typeCode;
  }
  final bool? uniOper = jsonConvert.convert<bool>(json['uniOper']);
  if (uniOper != null) {
    ncRecommand1DataEntity.uniOper = uniOper;
  }
  return ncRecommand1DataEntity;
}

Map<String, dynamic> $NcRecommand1DataEntityToJson(
    NcRecommand1DataEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['displayOrder'] = entity.displayOrder;
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  data['title'] = entity.title;
  data['typeCode'] = entity.typeCode;
  data['uniOper'] = entity.uniOper;
  return data;
}

extension NcRecommand1DataEntityExtension on NcRecommand1DataEntity {
  NcRecommand1DataEntity copyWith({
    int? displayOrder,
    List<NcRecommand1DataItemList>? itemList,
    String? title,
    int? typeCode,
    bool? uniOper,
  }) {
    return NcRecommand1DataEntity()
      ..displayOrder = displayOrder ?? this.displayOrder
      ..itemList = itemList ?? this.itemList
      ..title = title ?? this.title
      ..typeCode = typeCode ?? this.typeCode
      ..uniOper = uniOper ?? this.uniOper;
  }
}

NcRecommand1DataItemList $NcRecommand1DataItemListFromJson(
    Map<String, dynamic> json) {
  final NcRecommand1DataItemList ncRecommand1DataItemList = NcRecommand1DataItemList();
  final int? displayOrder = jsonConvert.convert<int>(json['displayOrder']);
  if (displayOrder != null) {
    ncRecommand1DataItemList.displayOrder = displayOrder;
  }
  final List<
      NcRecommand1DataItemListItemList>? itemList = (json['itemList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<NcRecommand1DataItemListItemList>(
          e) as NcRecommand1DataItemListItemList).toList();
  if (itemList != null) {
    ncRecommand1DataItemList.itemList = itemList;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    ncRecommand1DataItemList.title = title;
  }
  final int? typeCode = jsonConvert.convert<int>(json['typeCode']);
  if (typeCode != null) {
    ncRecommand1DataItemList.typeCode = typeCode;
  }
  final bool? uniOper = jsonConvert.convert<bool>(json['uniOper']);
  if (uniOper != null) {
    ncRecommand1DataItemList.uniOper = uniOper;
  }
  return ncRecommand1DataItemList;
}

Map<String, dynamic> $NcRecommand1DataItemListToJson(
    NcRecommand1DataItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['displayOrder'] = entity.displayOrder;
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  data['title'] = entity.title;
  data['typeCode'] = entity.typeCode;
  data['uniOper'] = entity.uniOper;
  return data;
}

extension NcRecommand1DataItemListExtension on NcRecommand1DataItemList {
  NcRecommand1DataItemList copyWith({
    int? displayOrder,
    List<NcRecommand1DataItemListItemList>? itemList,
    String? title,
    int? typeCode,
    bool? uniOper,
  }) {
    return NcRecommand1DataItemList()
      ..displayOrder = displayOrder ?? this.displayOrder
      ..itemList = itemList ?? this.itemList
      ..title = title ?? this.title
      ..typeCode = typeCode ?? this.typeCode
      ..uniOper = uniOper ?? this.uniOper;
  }
}

NcRecommand1DataItemListItemList $NcRecommand1DataItemListItemListFromJson(
    Map<String, dynamic> json) {
  final NcRecommand1DataItemListItemList ncRecommand1DataItemListItemList = NcRecommand1DataItemListItemList();
  final String? actionUrl = jsonConvert.convert<String>(json['actionUrl']);
  if (actionUrl != null) {
    ncRecommand1DataItemListItemList.actionUrl = actionUrl;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    ncRecommand1DataItemListItemList.id = id;
  }
  final String? logoUrl = jsonConvert.convert<String>(json['logoUrl']);
  if (logoUrl != null) {
    ncRecommand1DataItemListItemList.logoUrl = logoUrl;
  }
  final int? maxPrice = jsonConvert.convert<int>(json['maxPrice']);
  if (maxPrice != null) {
    ncRecommand1DataItemListItemList.maxPrice = maxPrice;
  }
  final int? minPrice = jsonConvert.convert<int>(json['minPrice']);
  if (minPrice != null) {
    ncRecommand1DataItemListItemList.minPrice = minPrice;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    ncRecommand1DataItemListItemList.name = name;
  }
  final int? parallelImport = jsonConvert.convert<int>(json['parallelImport']);
  if (parallelImport != null) {
    ncRecommand1DataItemListItemList.parallelImport = parallelImport;
  }
  final int? rank = jsonConvert.convert<int>(json['rank']);
  if (rank != null) {
    ncRecommand1DataItemListItemList.rank = rank;
  }
  final bool? uniOper = jsonConvert.convert<bool>(json['uniOper']);
  if (uniOper != null) {
    ncRecommand1DataItemListItemList.uniOper = uniOper;
  }
  final NcRecommand1DataItemListItemListUniOperOortData? uniOperOortData = jsonConvert
      .convert<NcRecommand1DataItemListItemListUniOperOortData>(
      json['uniOperOortData']);
  if (uniOperOortData != null) {
    ncRecommand1DataItemListItemList.uniOperOortData = uniOperOortData;
  }
  return ncRecommand1DataItemListItemList;
}

Map<String, dynamic> $NcRecommand1DataItemListItemListToJson(
    NcRecommand1DataItemListItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['actionUrl'] = entity.actionUrl;
  data['id'] = entity.id;
  data['logoUrl'] = entity.logoUrl;
  data['maxPrice'] = entity.maxPrice;
  data['minPrice'] = entity.minPrice;
  data['name'] = entity.name;
  data['parallelImport'] = entity.parallelImport;
  data['rank'] = entity.rank;
  data['uniOper'] = entity.uniOper;
  data['uniOperOortData'] = entity.uniOperOortData?.toJson();
  return data;
}

extension NcRecommand1DataItemListItemListExtension on NcRecommand1DataItemListItemList {
  NcRecommand1DataItemListItemList copyWith({
    String? actionUrl,
    int? id,
    String? logoUrl,
    int? maxPrice,
    int? minPrice,
    String? name,
    int? parallelImport,
    int? rank,
    bool? uniOper,
    NcRecommand1DataItemListItemListUniOperOortData? uniOperOortData,
  }) {
    return NcRecommand1DataItemListItemList()
      ..actionUrl = actionUrl ?? this.actionUrl
      ..id = id ?? this.id
      ..logoUrl = logoUrl ?? this.logoUrl
      ..maxPrice = maxPrice ?? this.maxPrice
      ..minPrice = minPrice ?? this.minPrice
      ..name = name ?? this.name
      ..parallelImport = parallelImport ?? this.parallelImport
      ..rank = rank ?? this.rank
      ..uniOper = uniOper ?? this.uniOper
      ..uniOperOortData = uniOperOortData ?? this.uniOperOortData;
  }
}

NcRecommand1DataItemListItemListUniOperOortData $NcRecommand1DataItemListItemListUniOperOortDataFromJson(
    Map<String, dynamic> json) {
  final NcRecommand1DataItemListItemListUniOperOortData ncRecommand1DataItemListItemListUniOperOortData = NcRecommand1DataItemListItemListUniOperOortData();
  final String? entrancePage1 = jsonConvert.convert<String>(
      json['entrancePage1']);
  if (entrancePage1 != null) {
    ncRecommand1DataItemListItemListUniOperOortData.entrancePage1 =
        entrancePage1;
  }
  final String? eventName = jsonConvert.convert<String>(json['eventName']);
  if (eventName != null) {
    ncRecommand1DataItemListItemListUniOperOortData.eventName = eventName;
  }
  final NcRecommand1DataItemListItemListUniOperOortDataProperties? properties = jsonConvert
      .convert<NcRecommand1DataItemListItemListUniOperOortDataProperties>(
      json['properties']);
  if (properties != null) {
    ncRecommand1DataItemListItemListUniOperOortData.properties = properties;
  }
  return ncRecommand1DataItemListItemListUniOperOortData;
}

Map<String, dynamic> $NcRecommand1DataItemListItemListUniOperOortDataToJson(
    NcRecommand1DataItemListItemListUniOperOortData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['entrancePage1'] = entity.entrancePage1;
  data['eventName'] = entity.eventName;
  data['properties'] = entity.properties?.toJson();
  return data;
}

extension NcRecommand1DataItemListItemListUniOperOortDataExtension on NcRecommand1DataItemListItemListUniOperOortData {
  NcRecommand1DataItemListItemListUniOperOortData copyWith({
    String? entrancePage1,
    String? eventName,
    NcRecommand1DataItemListItemListUniOperOortDataProperties? properties,
  }) {
    return NcRecommand1DataItemListItemListUniOperOortData()
      ..entrancePage1 = entrancePage1 ?? this.entrancePage1
      ..eventName = eventName ?? this.eventName
      ..properties = properties ?? this.properties;
  }
}

NcRecommand1DataItemListItemListUniOperOortDataProperties $NcRecommand1DataItemListItemListUniOperOortDataPropertiesFromJson(
    Map<String, dynamic> json) {
  final NcRecommand1DataItemListItemListUniOperOortDataProperties ncRecommand1DataItemListItemListUniOperOortDataProperties = NcRecommand1DataItemListItemListUniOperOortDataProperties();
  final String? fragmentName1 = jsonConvert.convert<String>(
      json['fragmentName1']);
  if (fragmentName1 != null) {
    ncRecommand1DataItemListItemListUniOperOortDataProperties.fragmentName1 =
        fragmentName1;
  }
  final String? actionType = jsonConvert.convert<String>(json['actionType']);
  if (actionType != null) {
    ncRecommand1DataItemListItemListUniOperOortDataProperties.actionType =
        actionType;
  }
  final int? operId = jsonConvert.convert<int>(json['operId']);
  if (operId != null) {
    ncRecommand1DataItemListItemListUniOperOortDataProperties.operId = operId;
  }
  final String? pageName = jsonConvert.convert<String>(json['pageName']);
  if (pageName != null) {
    ncRecommand1DataItemListItemListUniOperOortDataProperties.pageName =
        pageName;
  }
  final String? actionName = jsonConvert.convert<String>(json['actionName']);
  if (actionName != null) {
    ncRecommand1DataItemListItemListUniOperOortDataProperties.actionName =
        actionName;
  }
  return ncRecommand1DataItemListItemListUniOperOortDataProperties;
}

Map<String,
    dynamic> $NcRecommand1DataItemListItemListUniOperOortDataPropertiesToJson(
    NcRecommand1DataItemListItemListUniOperOortDataProperties entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['fragmentName1'] = entity.fragmentName1;
  data['actionType'] = entity.actionType;
  data['operId'] = entity.operId;
  data['pageName'] = entity.pageName;
  data['actionName'] = entity.actionName;
  return data;
}

extension NcRecommand1DataItemListItemListUniOperOortDataPropertiesExtension on NcRecommand1DataItemListItemListUniOperOortDataProperties {
  NcRecommand1DataItemListItemListUniOperOortDataProperties copyWith({
    String? fragmentName1,
    String? actionType,
    int? operId,
    String? pageName,
    String? actionName,
  }) {
    return NcRecommand1DataItemListItemListUniOperOortDataProperties()
      ..fragmentName1 = fragmentName1 ?? this.fragmentName1
      ..actionType = actionType ?? this.actionType
      ..operId = operId ?? this.operId
      ..pageName = pageName ?? this.pageName
      ..actionName = actionName ?? this.actionName;
  }
}