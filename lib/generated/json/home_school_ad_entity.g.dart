import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/home/home_school_ad_entity.dart';

HomeSchoolAdEntity $HomeSchoolAdEntityFromJson(Map<String, dynamic> json) {
  final HomeSchoolAdEntity homeSchoolAdEntity = HomeSchoolAdEntity();
  final String? icon = jsonConvert.convert<String>(json['icon']);
  if (icon != null) {
    homeSchoolAdEntity.icon = icon;
  }
  final List<HomeSchoolAdItemList>? itemList = (json['itemList'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<HomeSchoolAdItemList>(e) as HomeSchoolAdItemList)
      .toList();
  if (itemList != null) {
    homeSchoolAdEntity.itemList = itemList;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    homeSchoolAdEntity.title = title;
  }
  return homeSchoolAdEntity;
}

Map<String, dynamic> $HomeSchoolAdEntityToJson(HomeSchoolAdEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['icon'] = entity.icon;
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  data['title'] = entity.title;
  return data;
}

extension HomeSchoolAdEntityExtension on HomeSchoolAdEntity {
  HomeSchoolAdEntity copyWith({
    String? icon,
    List<HomeSchoolAdItemList>? itemList,
    String? title,
  }) {
    return HomeSchoolAdEntity()
      ..icon = icon ?? this.icon
      ..itemList = itemList ?? this.itemList
      ..title = title ?? this.title;
  }
}

HomeSchoolAdItemList $HomeSchoolAdItemListFromJson(Map<String, dynamic> json) {
  final HomeSchoolAdItemList homeSchoolAdItemList = HomeSchoolAdItemList();
  final String? courseName = jsonConvert.convert<String>(json['courseName']);
  if (courseName != null) {
    homeSchoolAdItemList.courseName = courseName;
  }
  final List<
      HomeSchoolAdItemListCourseObject>? courseObject = (json['courseObject'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<HomeSchoolAdItemListCourseObject>(
          e) as HomeSchoolAdItemListCourseObject).toList();
  if (courseObject != null) {
    homeSchoolAdItemList.courseObject = courseObject;
  }
  final String? courseType = jsonConvert.convert<String>(json['courseType']);
  if (courseType != null) {
    homeSchoolAdItemList.courseType = courseType;
  }
  final String? distance = jsonConvert.convert<String>(json['distance']);
  if (distance != null) {
    homeSchoolAdItemList.distance = distance;
  }
  final int? jiaxiaoId = jsonConvert.convert<int>(json['jiaxiaoId']);
  if (jiaxiaoId != null) {
    homeSchoolAdItemList.jiaxiaoId = jiaxiaoId;
  }
  final String? jiaxiaoName = jsonConvert.convert<String>(json['jiaxiaoName']);
  if (jiaxiaoName != null) {
    homeSchoolAdItemList.jiaxiaoName = jiaxiaoName;
  }
  final HomeSchoolAdItemListJiaxiaoPhone? jiaxiaoPhone = jsonConvert.convert<
      HomeSchoolAdItemListJiaxiaoPhone>(json['jiaxiaoPhone']);
  if (jiaxiaoPhone != null) {
    homeSchoolAdItemList.jiaxiaoPhone = jiaxiaoPhone;
  }
  final String? logo = jsonConvert.convert<String>(json['logo']);
  if (logo != null) {
    homeSchoolAdItemList.logo = logo;
  }
  final String? logoIcon = jsonConvert.convert<String>(json['logoIcon']);
  if (logoIcon != null) {
    homeSchoolAdItemList.logoIcon = logoIcon;
  }
  final int? price = jsonConvert.convert<int>(json['price']);
  if (price != null) {
    homeSchoolAdItemList.price = price;
  }
  final String? privatePhone = jsonConvert.convert<String>(
      json['privatePhone']);
  if (privatePhone != null) {
    homeSchoolAdItemList.privatePhone = privatePhone;
  }
  return homeSchoolAdItemList;
}

Map<String, dynamic> $HomeSchoolAdItemListToJson(HomeSchoolAdItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['courseName'] = entity.courseName;
  data['courseObject'] = entity.courseObject?.map((v) => v.toJson()).toList();
  data['courseType'] = entity.courseType;
  data['distance'] = entity.distance;
  data['jiaxiaoId'] = entity.jiaxiaoId;
  data['jiaxiaoName'] = entity.jiaxiaoName;
  data['jiaxiaoPhone'] = entity.jiaxiaoPhone?.toJson();
  data['logo'] = entity.logo;
  data['logoIcon'] = entity.logoIcon;
  data['price'] = entity.price;
  data['privatePhone'] = entity.privatePhone;
  return data;
}

extension HomeSchoolAdItemListExtension on HomeSchoolAdItemList {
  HomeSchoolAdItemList copyWith({
    String? courseName,
    List<HomeSchoolAdItemListCourseObject>? courseObject,
    String? courseType,
    String? distance,
    int? jiaxiaoId,
    String? jiaxiaoName,
    HomeSchoolAdItemListJiaxiaoPhone? jiaxiaoPhone,
    String? logo,
    String? logoIcon,
    int? price,
    String? privatePhone,
  }) {
    return HomeSchoolAdItemList()
      ..courseName = courseName ?? this.courseName
      ..courseObject = courseObject ?? this.courseObject
      ..courseType = courseType ?? this.courseType
      ..distance = distance ?? this.distance
      ..jiaxiaoId = jiaxiaoId ?? this.jiaxiaoId
      ..jiaxiaoName = jiaxiaoName ?? this.jiaxiaoName
      ..jiaxiaoPhone = jiaxiaoPhone ?? this.jiaxiaoPhone
      ..logo = logo ?? this.logo
      ..logoIcon = logoIcon ?? this.logoIcon
      ..price = price ?? this.price
      ..privatePhone = privatePhone ?? this.privatePhone;
  }
}

HomeSchoolAdItemListCourseObject $HomeSchoolAdItemListCourseObjectFromJson(
    Map<String, dynamic> json) {
  final HomeSchoolAdItemListCourseObject homeSchoolAdItemListCourseObject = HomeSchoolAdItemListCourseObject();
  final bool? concessionalCourse = jsonConvert.convert<bool>(
      json['concessionalCourse']);
  if (concessionalCourse != null) {
    homeSchoolAdItemListCourseObject.concessionalCourse = concessionalCourse;
  }
  final String? courseClassName = jsonConvert.convert<String>(
      json['courseClassName']);
  if (courseClassName != null) {
    homeSchoolAdItemListCourseObject.courseClassName = courseClassName;
  }
  final int? originPrice = jsonConvert.convert<int>(json['originPrice']);
  if (originPrice != null) {
    homeSchoolAdItemListCourseObject.originPrice = originPrice;
  }
  final int? price = jsonConvert.convert<int>(json['price']);
  if (price != null) {
    homeSchoolAdItemListCourseObject.price = price;
  }
  final int? storePrice = jsonConvert.convert<int>(json['storePrice']);
  if (storePrice != null) {
    homeSchoolAdItemListCourseObject.storePrice = storePrice;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    homeSchoolAdItemListCourseObject.type = type;
  }
  return homeSchoolAdItemListCourseObject;
}

Map<String, dynamic> $HomeSchoolAdItemListCourseObjectToJson(
    HomeSchoolAdItemListCourseObject entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['concessionalCourse'] = entity.concessionalCourse;
  data['courseClassName'] = entity.courseClassName;
  data['originPrice'] = entity.originPrice;
  data['price'] = entity.price;
  data['storePrice'] = entity.storePrice;
  data['type'] = entity.type;
  return data;
}

extension HomeSchoolAdItemListCourseObjectExtension on HomeSchoolAdItemListCourseObject {
  HomeSchoolAdItemListCourseObject copyWith({
    bool? concessionalCourse,
    String? courseClassName,
    int? originPrice,
    int? price,
    int? storePrice,
    String? type,
  }) {
    return HomeSchoolAdItemListCourseObject()
      ..concessionalCourse = concessionalCourse ?? this.concessionalCourse
      ..courseClassName = courseClassName ?? this.courseClassName
      ..originPrice = originPrice ?? this.originPrice
      ..price = price ?? this.price
      ..storePrice = storePrice ?? this.storePrice
      ..type = type ?? this.type;
  }
}

HomeSchoolAdItemListJiaxiaoPhone $HomeSchoolAdItemListJiaxiaoPhoneFromJson(
    Map<String, dynamic> json) {
  final HomeSchoolAdItemListJiaxiaoPhone homeSchoolAdItemListJiaxiaoPhone = HomeSchoolAdItemListJiaxiaoPhone();
  final String? complaintPhone = jsonConvert.convert<String>(
      json['complaintPhone']);
  if (complaintPhone != null) {
    homeSchoolAdItemListJiaxiaoPhone.complaintPhone = complaintPhone;
  }
  final int? phoneStatus = jsonConvert.convert<int>(json['phoneStatus']);
  if (phoneStatus != null) {
    homeSchoolAdItemListJiaxiaoPhone.phoneStatus = phoneStatus;
  }
  final String? privatePhone = jsonConvert.convert<String>(
      json['privatePhone']);
  if (privatePhone != null) {
    homeSchoolAdItemListJiaxiaoPhone.privatePhone = privatePhone;
  }
  return homeSchoolAdItemListJiaxiaoPhone;
}

Map<String, dynamic> $HomeSchoolAdItemListJiaxiaoPhoneToJson(
    HomeSchoolAdItemListJiaxiaoPhone entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['complaintPhone'] = entity.complaintPhone;
  data['phoneStatus'] = entity.phoneStatus;
  data['privatePhone'] = entity.privatePhone;
  return data;
}

extension HomeSchoolAdItemListJiaxiaoPhoneExtension on HomeSchoolAdItemListJiaxiaoPhone {
  HomeSchoolAdItemListJiaxiaoPhone copyWith({
    String? complaintPhone,
    int? phoneStatus,
    String? privatePhone,
  }) {
    return HomeSchoolAdItemListJiaxiaoPhone()
      ..complaintPhone = complaintPhone ?? this.complaintPhone
      ..phoneStatus = phoneStatus ?? this.phoneStatus
      ..privatePhone = privatePhone ?? this.privatePhone;
  }
}