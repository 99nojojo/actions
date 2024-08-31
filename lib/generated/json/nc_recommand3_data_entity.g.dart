import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/car/nc_recommand3_data_entity.dart';

NcRecommand3DataEntity $NcRecommand3DataEntityFromJson(
    Map<String, dynamic> json) {
  final NcRecommand3DataEntity ncRecommand3DataEntity = NcRecommand3DataEntity();
  final int? displayOrder = jsonConvert.convert<int>(json['displayOrder']);
  if (displayOrder != null) {
    ncRecommand3DataEntity.displayOrder = displayOrder;
  }
  final List<NcRecommand3DataItemList>? itemList = (json['itemList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<NcRecommand3DataItemList>(
          e) as NcRecommand3DataItemList).toList();
  if (itemList != null) {
    ncRecommand3DataEntity.itemList = itemList;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    ncRecommand3DataEntity.title = title;
  }
  final int? typeCode = jsonConvert.convert<int>(json['typeCode']);
  if (typeCode != null) {
    ncRecommand3DataEntity.typeCode = typeCode;
  }
  final bool? uniOper = jsonConvert.convert<bool>(json['uniOper']);
  if (uniOper != null) {
    ncRecommand3DataEntity.uniOper = uniOper;
  }
  return ncRecommand3DataEntity;
}

Map<String, dynamic> $NcRecommand3DataEntityToJson(
    NcRecommand3DataEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['displayOrder'] = entity.displayOrder;
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  data['title'] = entity.title;
  data['typeCode'] = entity.typeCode;
  data['uniOper'] = entity.uniOper;
  return data;
}

extension NcRecommand3DataEntityExtension on NcRecommand3DataEntity {
  NcRecommand3DataEntity copyWith({
    int? displayOrder,
    List<NcRecommand3DataItemList>? itemList,
    String? title,
    int? typeCode,
    bool? uniOper,
  }) {
    return NcRecommand3DataEntity()
      ..displayOrder = displayOrder ?? this.displayOrder
      ..itemList = itemList ?? this.itemList
      ..title = title ?? this.title
      ..typeCode = typeCode ?? this.typeCode
      ..uniOper = uniOper ?? this.uniOper;
  }
}

NcRecommand3DataItemList $NcRecommand3DataItemListFromJson(
    Map<String, dynamic> json) {
  final NcRecommand3DataItemList ncRecommand3DataItemList = NcRecommand3DataItemList();
  final String? actionUrl = jsonConvert.convert<String>(json['actionUrl']);
  if (actionUrl != null) {
    ncRecommand3DataItemList.actionUrl = actionUrl;
  }
  final String? logoUrl = jsonConvert.convert<String>(json['logoUrl']);
  if (logoUrl != null) {
    ncRecommand3DataItemList.logoUrl = logoUrl;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    ncRecommand3DataItemList.name = name;
  }
  final String? showMaskPrice = jsonConvert.convert<String>(
      json['showMaskPrice']);
  if (showMaskPrice != null) {
    ncRecommand3DataItemList.showMaskPrice = showMaskPrice;
  }
  final bool? uniOper = jsonConvert.convert<bool>(json['uniOper']);
  if (uniOper != null) {
    ncRecommand3DataItemList.uniOper = uniOper;
  }
  return ncRecommand3DataItemList;
}

Map<String, dynamic> $NcRecommand3DataItemListToJson(
    NcRecommand3DataItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['actionUrl'] = entity.actionUrl;
  data['logoUrl'] = entity.logoUrl;
  data['name'] = entity.name;
  data['showMaskPrice'] = entity.showMaskPrice;
  data['uniOper'] = entity.uniOper;
  return data;
}

extension NcRecommand3DataItemListExtension on NcRecommand3DataItemList {
  NcRecommand3DataItemList copyWith({
    String? actionUrl,
    String? logoUrl,
    String? name,
    String? showMaskPrice,
    bool? uniOper,
  }) {
    return NcRecommand3DataItemList()
      ..actionUrl = actionUrl ?? this.actionUrl
      ..logoUrl = logoUrl ?? this.logoUrl
      ..name = name ?? this.name
      ..showMaskPrice = showMaskPrice ?? this.showMaskPrice
      ..uniOper = uniOper ?? this.uniOper;
  }
}