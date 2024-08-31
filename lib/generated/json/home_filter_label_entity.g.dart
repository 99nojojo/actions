import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/home/home_filter_label_entity.dart';

HomeFilterLabelEntity $HomeFilterLabelEntityFromJson(
    Map<String, dynamic> json) {
  final HomeFilterLabelEntity homeFilterLabelEntity = HomeFilterLabelEntity();
  final List<HomeFilterLabelItemList>? itemList = (json['itemList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<HomeFilterLabelItemList>(
          e) as HomeFilterLabelItemList).toList();
  if (itemList != null) {
    homeFilterLabelEntity.itemList = itemList;
  }
  return homeFilterLabelEntity;
}

Map<String, dynamic> $HomeFilterLabelEntityToJson(
    HomeFilterLabelEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  return data;
}

extension HomeFilterLabelEntityExtension on HomeFilterLabelEntity {
  HomeFilterLabelEntity copyWith({
    List<HomeFilterLabelItemList>? itemList,
  }) {
    return HomeFilterLabelEntity()
      ..itemList = itemList ?? this.itemList;
  }
}

HomeFilterLabelItemList $HomeFilterLabelItemListFromJson(
    Map<String, dynamic> json) {
  final HomeFilterLabelItemList homeFilterLabelItemList = HomeFilterLabelItemList();
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    homeFilterLabelItemList.code = code;
  }
  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    homeFilterLabelItemList.text = text;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    homeFilterLabelItemList.type = type;
  }
  return homeFilterLabelItemList;
}

Map<String, dynamic> $HomeFilterLabelItemListToJson(
    HomeFilterLabelItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['text'] = entity.text;
  data['type'] = entity.type;
  return data;
}

extension HomeFilterLabelItemListExtension on HomeFilterLabelItemList {
  HomeFilterLabelItemList copyWith({
    String? code,
    String? text,
    String? type,
  }) {
    return HomeFilterLabelItemList()
      ..code = code ?? this.code
      ..text = text ?? this.text
      ..type = type ?? this.type;
  }
}