import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/home/image_item_entity.dart';

ImageItemEntity $ImageItemEntityFromJson(Map<String, dynamic> json) {
  final ImageItemEntity imageItemEntity = ImageItemEntity();
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    imageItemEntity.title = title;
  }
  final String? image = jsonConvert.convert<String>(json['image']);
  if (image != null) {
    imageItemEntity.image = image;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    imageItemEntity.url = url;
  }
  return imageItemEntity;
}

Map<String, dynamic> $ImageItemEntityToJson(ImageItemEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['title'] = entity.title;
  data['image'] = entity.image;
  data['url'] = entity.url;
  return data;
}

extension ImageItemEntityExtension on ImageItemEntity {
  ImageItemEntity copyWith({
    String? title,
    String? image,
    String? url,
  }) {
    return ImageItemEntity()
      ..title = title ?? this.title
      ..image = image ?? this.image
      ..url = url ?? this.url;
  }
}