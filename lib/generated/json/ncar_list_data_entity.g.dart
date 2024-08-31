import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/car/ncar_list_data_entity.dart';

NcarListDataEntity $NcarListDataEntityFromJson(Map<String, dynamic> json) {
  final NcarListDataEntity ncarListDataEntity = NcarListDataEntity();
  final List<NcarListDataBrandList>? brandList = (json['brandList'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<NcarListDataBrandList>(e) as NcarListDataBrandList)
      .toList();
  if (brandList != null) {
    ncarListDataEntity.brandList = brandList;
  }
  final String? groupName = jsonConvert.convert<String>(json['groupName']);
  if (groupName != null) {
    ncarListDataEntity.groupName = groupName;
  }
  final double? showStyle = jsonConvert.convert<double>(json['showStyle']);
  if (showStyle != null) {
    ncarListDataEntity.showStyle = showStyle;
  }
  return ncarListDataEntity;
}

Map<String, dynamic> $NcarListDataEntityToJson(NcarListDataEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['brandList'] = entity.brandList?.map((v) => v.toJson()).toList();
  data['groupName'] = entity.groupName;
  data['showStyle'] = entity.showStyle;
  return data;
}

extension NcarListDataEntityExtension on NcarListDataEntity {
  NcarListDataEntity copyWith({
    List<NcarListDataBrandList>? brandList,
    String? groupName,
    double? showStyle,
  }) {
    return NcarListDataEntity()
      ..brandList = brandList ?? this.brandList
      ..groupName = groupName ?? this.groupName
      ..showStyle = showStyle ?? this.showStyle;
  }
}

NcarListDataBrandList $NcarListDataBrandListFromJson(
    Map<String, dynamic> json) {
  final NcarListDataBrandList ncarListDataBrandList = NcarListDataBrandList();
  final double? articleId = jsonConvert.convert<double>(json['articleId']);
  if (articleId != null) {
    ncarListDataBrandList.articleId = articleId;
  }
  final String? country = jsonConvert.convert<String>(json['country']);
  if (country != null) {
    ncarListDataBrandList.country = country;
  }
  final String? firstLetter = jsonConvert.convert<String>(json['firstLetter']);
  if (firstLetter != null) {
    ncarListDataBrandList.firstLetter = firstLetter;
  }
  final String? homeUrl = jsonConvert.convert<String>(json['homeUrl']);
  if (homeUrl != null) {
    ncarListDataBrandList.homeUrl = homeUrl;
  }
  final double? id = jsonConvert.convert<double>(json['id']);
  if (id != null) {
    ncarListDataBrandList.id = id;
  }
  final String? logoUrl = jsonConvert.convert<String>(json['logoUrl']);
  if (logoUrl != null) {
    ncarListDataBrandList.logoUrl = logoUrl;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    ncarListDataBrandList.name = name;
  }
  final double? seriesCount = jsonConvert.convert<double>(json['seriesCount']);
  if (seriesCount != null) {
    ncarListDataBrandList.seriesCount = seriesCount;
  }
  final bool? uniOper = jsonConvert.convert<bool>(json['uniOper']);
  if (uniOper != null) {
    ncarListDataBrandList.uniOper = uniOper;
  }
  final double? vehicleType = jsonConvert.convert<double>(json['vehicleType']);
  if (vehicleType != null) {
    ncarListDataBrandList.vehicleType = vehicleType;
  }
  return ncarListDataBrandList;
}

Map<String, dynamic> $NcarListDataBrandListToJson(
    NcarListDataBrandList entity) {
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
  data['vehicleType'] = entity.vehicleType;
  return data;
}

extension NcarListDataBrandListExtension on NcarListDataBrandList {
  NcarListDataBrandList copyWith({
    double? articleId,
    String? country,
    String? firstLetter,
    String? homeUrl,
    double? id,
    String? logoUrl,
    String? name,
    double? seriesCount,
    bool? uniOper,
    double? vehicleType,
  }) {
    return NcarListDataBrandList()
      ..articleId = articleId ?? this.articleId
      ..country = country ?? this.country
      ..firstLetter = firstLetter ?? this.firstLetter
      ..homeUrl = homeUrl ?? this.homeUrl
      ..id = id ?? this.id
      ..logoUrl = logoUrl ?? this.logoUrl
      ..name = name ?? this.name
      ..seriesCount = seriesCount ?? this.seriesCount
      ..uniOper = uniOper ?? this.uniOper
      ..vehicleType = vehicleType ?? this.vehicleType;
  }
}