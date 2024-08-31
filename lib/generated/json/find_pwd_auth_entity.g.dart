import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/find_pwd_auth_entity.dart';

FindPwdAuthEntity $FindPwdAuthEntityFromJson(Map<String, dynamic> json) {
  final FindPwdAuthEntity findPwdAuthEntity = FindPwdAuthEntity();
  final String? captchaId = jsonConvert.convert<String>(json['captchaId']);
  if (captchaId != null) {
    findPwdAuthEntity.captchaId = captchaId;
  }
  final String? captchaUrl = jsonConvert.convert<String>(json['captchaUrl']);
  if (captchaUrl != null) {
    findPwdAuthEntity.captchaUrl = captchaUrl;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    findPwdAuthEntity.title = title;
  }
  final dynamic verifyUrl = json['verifyUrl'];
  if (verifyUrl != null) {
    findPwdAuthEntity.verifyUrl = verifyUrl;
  }
  return findPwdAuthEntity;
}

Map<String, dynamic> $FindPwdAuthEntityToJson(FindPwdAuthEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['captchaId'] = entity.captchaId;
  data['captchaUrl'] = entity.captchaUrl;
  data['title'] = entity.title;
  data['verifyUrl'] = entity.verifyUrl;
  return data;
}

extension FindPwdAuthEntityExtension on FindPwdAuthEntity {
  FindPwdAuthEntity copyWith({
    String? captchaId,
    String? captchaUrl,
    String? title,
    dynamic verifyUrl,
  }) {
    return FindPwdAuthEntity()
      ..captchaId = captchaId ?? this.captchaId
      ..captchaUrl = captchaUrl ?? this.captchaUrl
      ..title = title ?? this.title
      ..verifyUrl = verifyUrl ?? this.verifyUrl;
  }
}