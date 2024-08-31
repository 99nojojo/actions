import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/car/n_energy_list_data_entity.dart';


NEnergyListDataEntity $NEnergyListDataEntityFromJson(
    Map<String, dynamic> json) {
  final NEnergyListDataEntity nEnergyListDataEntity = NEnergyListDataEntity();
  final List<NEnergyListDataBrandList>? brandList = (json['brandList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<NEnergyListDataBrandList>(
          e) as NEnergyListDataBrandList).toList();
  if (brandList != null) {
    nEnergyListDataEntity.brandList = brandList;
  }
  final String? groupName = jsonConvert.convert<String>(json['groupName']);
  if (groupName != null) {
    nEnergyListDataEntity.groupName = groupName;
  }
  final double? showStyle = jsonConvert.convert<double>(json['showStyle']);
  if (showStyle != null) {
    nEnergyListDataEntity.showStyle = showStyle;
  }
  return nEnergyListDataEntity;
}

Map<String, dynamic> $NEnergyListDataEntityToJson(
    NEnergyListDataEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['brandList'] = entity.brandList?.map((v) => v.toJson()).toList();
  data['groupName'] = entity.groupName;
  data['showStyle'] = entity.showStyle;
  return data;
}

extension NEnergyListDataEntityExtension on NEnergyListDataEntity {
  NEnergyListDataEntity copyWith({
    List<NEnergyListDataBrandList>? brandList,
    String? groupName,
    double? showStyle,
  }) {
    return NEnergyListDataEntity()
      ..brandList = brandList ?? this.brandList
      ..groupName = groupName ?? this.groupName
      ..showStyle = showStyle ?? this.showStyle;
  }
}

NEnergyListDataBrandList $NEnergyListDataBrandListFromJson(
    Map<String, dynamic> json) {
  final NEnergyListDataBrandList nEnergyListDataBrandList = NEnergyListDataBrandList();
  final double? articleId = jsonConvert.convert<double>(json['articleId']);
  if (articleId != null) {
    nEnergyListDataBrandList.articleId = articleId;
  }
  final String? country = jsonConvert.convert<String>(json['country']);
  if (country != null) {
    nEnergyListDataBrandList.country = country;
  }
  final String? firstLetter = jsonConvert.convert<String>(json['firstLetter']);
  if (firstLetter != null) {
    nEnergyListDataBrandList.firstLetter = firstLetter;
  }
  final String? homeUrl = jsonConvert.convert<String>(json['homeUrl']);
  if (homeUrl != null) {
    nEnergyListDataBrandList.homeUrl = homeUrl;
  }
  final double? id = jsonConvert.convert<double>(json['id']);
  if (id != null) {
    nEnergyListDataBrandList.id = id;
  }
  final String? logoUrl = jsonConvert.convert<String>(json['logoUrl']);
  if (logoUrl != null) {
    nEnergyListDataBrandList.logoUrl = logoUrl;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    nEnergyListDataBrandList.name = name;
  }
  final double? seriesCount = jsonConvert.convert<double>(json['seriesCount']);
  if (seriesCount != null) {
    nEnergyListDataBrandList.seriesCount = seriesCount;
  }
  final List<
      NEnergyListDataBrandListSeriesList>? seriesList = (json['seriesList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<NEnergyListDataBrandListSeriesList>(
          e) as NEnergyListDataBrandListSeriesList).toList();
  if (seriesList != null) {
    nEnergyListDataBrandList.seriesList = seriesList;
  }
  final bool? uniOper = jsonConvert.convert<bool>(json['uniOper']);
  if (uniOper != null) {
    nEnergyListDataBrandList.uniOper = uniOper;
  }
  final double? vehicleType = jsonConvert.convert<double>(json['vehicleType']);
  if (vehicleType != null) {
    nEnergyListDataBrandList.vehicleType = vehicleType;
  }
  return nEnergyListDataBrandList;
}

Map<String, dynamic> $NEnergyListDataBrandListToJson(
    NEnergyListDataBrandList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['articleId'] = entity.articleId;
  data['country'] = entity.country;
  data['firstLetter'] = entity.firstLetter;
  data['homeUrl'] = entity.homeUrl;
  data['id'] = entity.id;
  data['logoUrl'] = entity.logoUrl;
  data['name'] = entity.name;
  data['seriesCount'] = entity.seriesCount;
  data['seriesList'] = entity.seriesList?.map((v) => v.toJson()).toList();
  data['uniOper'] = entity.uniOper;
  data['vehicleType'] = entity.vehicleType;
  return data;
}

extension NEnergyListDataBrandListExtension on NEnergyListDataBrandList {
  NEnergyListDataBrandList copyWith({
    double? articleId,
    String? country,
    String? firstLetter,
    String? homeUrl,
    double? id,
    String? logoUrl,
    String? name,
    double? seriesCount,
    List<NEnergyListDataBrandListSeriesList>? seriesList,
    bool? uniOper,
    double? vehicleType,
  }) {
    return NEnergyListDataBrandList()
      ..articleId = articleId ?? this.articleId
      ..country = country ?? this.country
      ..firstLetter = firstLetter ?? this.firstLetter
      ..homeUrl = homeUrl ?? this.homeUrl
      ..id = id ?? this.id
      ..logoUrl = logoUrl ?? this.logoUrl
      ..name = name ?? this.name
      ..seriesCount = seriesCount ?? this.seriesCount
      ..seriesList = seriesList ?? this.seriesList
      ..uniOper = uniOper ?? this.uniOper
      ..vehicleType = vehicleType ?? this.vehicleType;
  }
}

NEnergyListDataBrandListSeriesList $NEnergyListDataBrandListSeriesListFromJson(
    Map<String, dynamic> json) {
  final NEnergyListDataBrandListSeriesList nEnergyListDataBrandListSeriesList = NEnergyListDataBrandListSeriesList();
  final String? actionUrl = jsonConvert.convert<String>(json['actionUrl']);
  if (actionUrl != null) {
    nEnergyListDataBrandListSeriesList.actionUrl = actionUrl;
  }
  final double? brandId = jsonConvert.convert<double>(json['brandId']);
  if (brandId != null) {
    nEnergyListDataBrandListSeriesList.brandId = brandId;
  }
  final double? id = jsonConvert.convert<double>(json['id']);
  if (id != null) {
    nEnergyListDataBrandListSeriesList.id = id;
  }
  final double? location = jsonConvert.convert<double>(json['location']);
  if (location != null) {
    nEnergyListDataBrandListSeriesList.location = location;
  }
  final String? logoUrl = jsonConvert.convert<String>(json['logoUrl']);
  if (logoUrl != null) {
    nEnergyListDataBrandListSeriesList.logoUrl = logoUrl;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    nEnergyListDataBrandListSeriesList.name = name;
  }
  final double? seriesId = jsonConvert.convert<double>(json['seriesId']);
  if (seriesId != null) {
    nEnergyListDataBrandListSeriesList.seriesId = seriesId;
  }
  final bool? uniOper = jsonConvert.convert<bool>(json['uniOper']);
  if (uniOper != null) {
    nEnergyListDataBrandListSeriesList.uniOper = uniOper;
  }
  return nEnergyListDataBrandListSeriesList;
}

Map<String, dynamic> $NEnergyListDataBrandListSeriesListToJson(
    NEnergyListDataBrandListSeriesList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['actionUrl'] = entity.actionUrl;
  data['brandId'] = entity.brandId;
  data['id'] = entity.id;
  data['location'] = entity.location;
  data['logoUrl'] = entity.logoUrl;
  data['name'] = entity.name;
  data['seriesId'] = entity.seriesId;
  data['uniOper'] = entity.uniOper;
  return data;
}

extension NEnergyListDataBrandListSeriesListExtension on NEnergyListDataBrandListSeriesList {
  NEnergyListDataBrandListSeriesList copyWith({
    String? actionUrl,
    double? brandId,
    double? id,
    double? location,
    String? logoUrl,
    String? name,
    double? seriesId,
    bool? uniOper,
  }) {
    return NEnergyListDataBrandListSeriesList()
      ..actionUrl = actionUrl ?? this.actionUrl
      ..brandId = brandId ?? this.brandId
      ..id = id ?? this.id
      ..location = location ?? this.location
      ..logoUrl = logoUrl ?? this.logoUrl
      ..name = name ?? this.name
      ..seriesId = seriesId ?? this.seriesId
      ..uniOper = uniOper ?? this.uniOper;
  }
}