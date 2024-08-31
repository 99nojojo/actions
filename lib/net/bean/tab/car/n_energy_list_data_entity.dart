import 'package:azlistview/azlistview.dart';
import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/n_energy_list_data_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class NEnergyListDataEntity {
  List<NEnergyListDataBrandList>? brandList;
  String? groupName = '';
  double? showStyle;

  NEnergyListDataEntity();

  factory NEnergyListDataEntity.fromJson(Map<String, dynamic> json) =>
      $NEnergyListDataEntityFromJson(json);

  Map<String, dynamic> toJson() => $NEnergyListDataEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class NEnergyListDataBrandList extends ISuspensionBean {
  double? articleId;
  String? country = '';
  String? firstLetter = '';
  String? homeUrl = '';
  double? id;
  String? logoUrl = '';
  String? name = '';
  double? seriesCount;
  List<NEnergyListDataBrandListSeriesList>? seriesList;
  bool? uniOper = false;
  double? vehicleType;

  NEnergyListDataBrandList();

  factory NEnergyListDataBrandList.fromJson(Map<String, dynamic> json) =>
      $NEnergyListDataBrandListFromJson(json);

  Map<String, dynamic> toJson() => $NEnergyListDataBrandListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  String getSuspensionTag() {
    return firstLetter!;
  }
}

@JsonSerializable()
class NEnergyListDataBrandListSeriesList {
  String? actionUrl = '';
  double? brandId;
  double? id;
  double? location;
  String? logoUrl = '';
  String? name = '';
  double? seriesId;
  bool? uniOper = false;

  NEnergyListDataBrandListSeriesList();

  factory NEnergyListDataBrandListSeriesList.fromJson(
          Map<String, dynamic> json) =>
      $NEnergyListDataBrandListSeriesListFromJson(json);

  Map<String, dynamic> toJson() =>
      $NEnergyListDataBrandListSeriesListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
