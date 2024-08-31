import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/mine/tab_item_entity.dart';

TabItemEntity $TabItemEntityFromJson(Map<String, dynamic> json) {
  final TabItemEntity tabItemEntity = TabItemEntity();
  final String? clickUrl = jsonConvert.convert<String>(json['clickUrl']);
  if (clickUrl != null) {
    tabItemEntity.clickUrl = clickUrl;
  }
  final String? icon = jsonConvert.convert<String>(json['icon']);
  if (icon != null) {
    tabItemEntity.icon = icon;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    tabItemEntity.name = name;
  }
  final String? tagName = jsonConvert.convert<String>(json['tagName']);
  if (tagName != null) {
    tabItemEntity.tagName = tagName;
  }
  return tabItemEntity;
}

Map<String, dynamic> $TabItemEntityToJson(TabItemEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['clickUrl'] = entity.clickUrl;
  data['icon'] = entity.icon;
  data['name'] = entity.name;
  data['tagName'] = entity.tagName;
  return data;
}

extension TabItemEntityExtension on TabItemEntity {
  TabItemEntity copyWith({
    String? clickUrl,
    String? icon,
    String? name,
    String? tagName,
  }) {
    return TabItemEntity()
      ..clickUrl = clickUrl ?? this.clickUrl
      ..icon = icon ?? this.icon
      ..name = name ?? this.name
      ..tagName = tagName ?? this.tagName;
  }
}