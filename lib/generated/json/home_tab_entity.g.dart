import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/home/home_tab_entity.dart';

HomeTabEntity $HomeTabEntityFromJson(Map<String, dynamic> json) {
  final HomeTabEntity homeTabEntity = HomeTabEntity();
  final List<HomeTabItemList>? itemList = (json['itemList'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<HomeTabItemList>(e) as HomeTabItemList)
      .toList();
  if (itemList != null) {
    homeTabEntity.itemList = itemList;
  }
  return homeTabEntity;
}

Map<String, dynamic> $HomeTabEntityToJson(HomeTabEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  return data;
}

extension HomeTabEntityExtension on HomeTabEntity {
  HomeTabEntity copyWith({
    List<HomeTabItemList>? itemList,
  }) {
    return HomeTabEntity()
      ..itemList = itemList ?? this.itemList;
  }
}

HomeTabItemList $HomeTabItemListFromJson(Map<String, dynamic> json) {
  final HomeTabItemList homeTabItemList = HomeTabItemList();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    homeTabItemList.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    homeTabItemList.type = type;
  }
  return homeTabItemList;
}

Map<String, dynamic> $HomeTabItemListToJson(HomeTabItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['type'] = entity.type;
  return data;
}

extension HomeTabItemListExtension on HomeTabItemList {
  HomeTabItemList copyWith({
    String? name,
    String? type,
  }) {
    return HomeTabItemList()
      ..name = name ?? this.name
      ..type = type ?? this.type;
  }
}