import 'dart:convert';

import 'package:azlistview/azlistview.dart';

class CarBrandModel extends ISuspensionBean {
  String? tagIndex;
  String? logoUrl;
  String? actionUrl;
  String? name;
  String? country;

  CarBrandModel(
      {this.tagIndex = "",
      this.logoUrl = "",
      this.actionUrl,
      this.name = "",
      this.country = ""});

  CarBrandModel.fromJson(Map<String, dynamic> json)
      : tagIndex = json['tagIndex'],
        logoUrl = json['logoUrl'],
        actionUrl = json['actionUrl'],
        name = json['name'],
        country = json['country'];

  Map<String, dynamic> toJson() => {
        'tagIndex': tagIndex,
        'logoUrl': logoUrl,
        'actionUrl': actionUrl,
        'name': name,
        'country': country,
      };

  @override
  String getSuspensionTag() {
    return tagIndex!;
  }

  @override
  String toString() => jsonEncode(this);
}
