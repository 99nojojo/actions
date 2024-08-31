import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/mine/badge_entity.dart';

BadgeEntity $BadgeEntityFromJson(Map<String, dynamic> json) {
  final BadgeEntity badgeEntity = BadgeEntity();
  final String? badgeName = jsonConvert.convert<String>(json['badgeName']);
  if (badgeName != null) {
    badgeEntity.badgeName = badgeName;
  }
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    badgeEntity.code = code;
  }
  final String? image = jsonConvert.convert<String>(json['image']);
  if (image != null) {
    badgeEntity.image = image;
  }
  final String? triggerImage = jsonConvert.convert<String>(
      json['triggerImage']);
  if (triggerImage != null) {
    badgeEntity.triggerImage = triggerImage;
  }
  final bool? unlock = jsonConvert.convert<bool>(json['unlock']);
  if (unlock != null) {
    badgeEntity.unlock = unlock;
  }
  return badgeEntity;
}

Map<String, dynamic> $BadgeEntityToJson(BadgeEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['badgeName'] = entity.badgeName;
  data['code'] = entity.code;
  data['image'] = entity.image;
  data['triggerImage'] = entity.triggerImage;
  data['unlock'] = entity.unlock;
  return data;
}

extension BadgeEntityExtension on BadgeEntity {
  BadgeEntity copyWith({
    String? badgeName,
    String? code,
    String? image,
    String? triggerImage,
    bool? unlock,
  }) {
    return BadgeEntity()
      ..badgeName = badgeName ?? this.badgeName
      ..code = code ?? this.code
      ..image = image ?? this.image
      ..triggerImage = triggerImage ?? this.triggerImage
      ..unlock = unlock ?? this.unlock;
  }
}