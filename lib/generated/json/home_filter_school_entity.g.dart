import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/home/home_filter_school_entity.dart';

HomeFilterSchoolEntity $HomeFilterSchoolEntityFromJson(
    Map<String, dynamic> json) {
  final HomeFilterSchoolEntity homeFilterSchoolEntity = HomeFilterSchoolEntity();
  final List<HomeFilterSchoolItemList>? itemList = (json['itemList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<HomeFilterSchoolItemList>(
          e) as HomeFilterSchoolItemList).toList();
  if (itemList != null) {
    homeFilterSchoolEntity.itemList = itemList;
  }
  final dynamic page = json['page'];
  if (page != null) {
    homeFilterSchoolEntity.page = page;
  }
  return homeFilterSchoolEntity;
}

Map<String, dynamic> $HomeFilterSchoolEntityToJson(
    HomeFilterSchoolEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  data['page'] = entity.page;
  return data;
}

extension HomeFilterSchoolEntityExtension on HomeFilterSchoolEntity {
  HomeFilterSchoolEntity copyWith({
    List<HomeFilterSchoolItemList>? itemList,
    dynamic page,
  }) {
    return HomeFilterSchoolEntity()
      ..itemList = itemList ?? this.itemList
      ..page = page ?? this.page;
  }
}

HomeFilterSchoolItemList $HomeFilterSchoolItemListFromJson(
    Map<String, dynamic> json) {
  final HomeFilterSchoolItemList homeFilterSchoolItemList = HomeFilterSchoolItemList();
  final List<
      HomeFilterSchoolItemListActivity>? activity = (json['activity'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<HomeFilterSchoolItemListActivity>(
          e) as HomeFilterSchoolItemListActivity).toList();
  if (activity != null) {
    homeFilterSchoolItemList.activity = activity;
  }
  final bool? ad = jsonConvert.convert<bool>(json['ad']);
  if (ad != null) {
    homeFilterSchoolItemList.ad = ad;
  }
  final String? countyName = jsonConvert.convert<String>(json['countyName']);
  if (countyName != null) {
    homeFilterSchoolItemList.countyName = countyName;
  }
  final String? course = jsonConvert.convert<String>(json['course']);
  if (course != null) {
    homeFilterSchoolItemList.course = course;
  }
  final List<
      HomeFilterSchoolItemListCourseObject>? courseObject = (json['courseObject'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<HomeFilterSchoolItemListCourseObject>(
          e) as HomeFilterSchoolItemListCourseObject).toList();
  if (courseObject != null) {
    homeFilterSchoolItemList.courseObject = courseObject;
  }
  final int? dianpingCount = jsonConvert.convert<int>(json['dianpingCount']);
  if (dianpingCount != null) {
    homeFilterSchoolItemList.dianpingCount = dianpingCount;
  }
  final String? distance = jsonConvert.convert<String>(json['distance']);
  if (distance != null) {
    homeFilterSchoolItemList.distance = distance;
  }
  final String? distanceText = jsonConvert.convert<String>(
      json['distanceText']);
  if (distanceText != null) {
    homeFilterSchoolItemList.distanceText = distanceText;
  }
  final bool? hasVideo = jsonConvert.convert<bool>(json['hasVideo']);
  if (hasVideo != null) {
    homeFilterSchoolItemList.hasVideo = hasVideo;
  }
  final bool? hasVr = jsonConvert.convert<bool>(json['hasVr']);
  if (hasVr != null) {
    homeFilterSchoolItemList.hasVr = hasVr;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    homeFilterSchoolItemList.id = id;
  }
  final bool? intelligent = jsonConvert.convert<bool>(json['intelligent']);
  if (intelligent != null) {
    homeFilterSchoolItemList.intelligent = intelligent;
  }
  final HomeFilterSchoolItemListJiaxiaoPhone? jiaxiaoPhone = jsonConvert
      .convert<HomeFilterSchoolItemListJiaxiaoPhone>(json['jiaxiaoPhone']);
  if (jiaxiaoPhone != null) {
    homeFilterSchoolItemList.jiaxiaoPhone = jiaxiaoPhone;
  }
  final List<
      HomeFilterSchoolItemListLabelObjects>? labelObjects = (json['labelObjects'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<HomeFilterSchoolItemListLabelObjects>(
          e) as HomeFilterSchoolItemListLabelObjects).toList();
  if (labelObjects != null) {
    homeFilterSchoolItemList.labelObjects = labelObjects;
  }
  final List<String>? labels = (json['labels'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (labels != null) {
    homeFilterSchoolItemList.labels = labels;
  }
  final String? logo = jsonConvert.convert<String>(json['logo']);
  if (logo != null) {
    homeFilterSchoolItemList.logo = logo;
  }
  final String? logoIcon = jsonConvert.convert<String>(json['logoIcon']);
  if (logoIcon != null) {
    homeFilterSchoolItemList.logoIcon = logoIcon;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    homeFilterSchoolItemList.name = name;
  }
  final bool? newCertification = jsonConvert.convert<bool>(
      json['newCertification']);
  if (newCertification != null) {
    homeFilterSchoolItemList.newCertification = newCertification;
  }
  final dynamic oneWordRecommendation = json['oneWordRecommendation'];
  if (oneWordRecommendation != null) {
    homeFilterSchoolItemList.oneWordRecommendation = oneWordRecommendation;
  }
  final List<String>? privileges = (json['privileges'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (privileges != null) {
    homeFilterSchoolItemList.privileges = privileges;
  }
  final String? rank = jsonConvert.convert<String>(json['rank']);
  if (rank != null) {
    homeFilterSchoolItemList.rank = rank;
  }
  final double? score = jsonConvert.convert<double>(json['score']);
  if (score != null) {
    homeFilterSchoolItemList.score = score;
  }
  final dynamic topIcon = json['topIcon'];
  if (topIcon != null) {
    homeFilterSchoolItemList.topIcon = topIcon;
  }
  final int? vipLevel = jsonConvert.convert<int>(json['vipLevel']);
  if (vipLevel != null) {
    homeFilterSchoolItemList.vipLevel = vipLevel;
  }
  final int? vipYear = jsonConvert.convert<int>(json['vipYear']);
  if (vipYear != null) {
    homeFilterSchoolItemList.vipYear = vipYear;
  }
  return homeFilterSchoolItemList;
}

Map<String, dynamic> $HomeFilterSchoolItemListToJson(
    HomeFilterSchoolItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['activity'] = entity.activity?.map((v) => v.toJson()).toList();
  data['ad'] = entity.ad;
  data['countyName'] = entity.countyName;
  data['course'] = entity.course;
  data['courseObject'] = entity.courseObject?.map((v) => v.toJson()).toList();
  data['dianpingCount'] = entity.dianpingCount;
  data['distance'] = entity.distance;
  data['distanceText'] = entity.distanceText;
  data['hasVideo'] = entity.hasVideo;
  data['hasVr'] = entity.hasVr;
  data['id'] = entity.id;
  data['intelligent'] = entity.intelligent;
  data['jiaxiaoPhone'] = entity.jiaxiaoPhone?.toJson();
  data['labelObjects'] = entity.labelObjects?.map((v) => v.toJson()).toList();
  data['labels'] = entity.labels;
  data['logo'] = entity.logo;
  data['logoIcon'] = entity.logoIcon;
  data['name'] = entity.name;
  data['newCertification'] = entity.newCertification;
  data['oneWordRecommendation'] = entity.oneWordRecommendation;
  data['privileges'] = entity.privileges;
  data['rank'] = entity.rank;
  data['score'] = entity.score;
  data['topIcon'] = entity.topIcon;
  data['vipLevel'] = entity.vipLevel;
  data['vipYear'] = entity.vipYear;
  return data;
}

extension HomeFilterSchoolItemListExtension on HomeFilterSchoolItemList {
  HomeFilterSchoolItemList copyWith({
    List<HomeFilterSchoolItemListActivity>? activity,
    bool? ad,
    String? countyName,
    String? course,
    List<HomeFilterSchoolItemListCourseObject>? courseObject,
    int? dianpingCount,
    String? distance,
    String? distanceText,
    bool? hasVideo,
    bool? hasVr,
    int? id,
    bool? intelligent,
    HomeFilterSchoolItemListJiaxiaoPhone? jiaxiaoPhone,
    List<HomeFilterSchoolItemListLabelObjects>? labelObjects,
    List<String>? labels,
    String? logo,
    String? logoIcon,
    String? name,
    bool? newCertification,
    dynamic oneWordRecommendation,
    List<String>? privileges,
    String? rank,
    double? score,
    dynamic topIcon,
    int? vipLevel,
    int? vipYear,
  }) {
    return HomeFilterSchoolItemList()
      ..activity = activity ?? this.activity
      ..ad = ad ?? this.ad
      ..countyName = countyName ?? this.countyName
      ..course = course ?? this.course
      ..courseObject = courseObject ?? this.courseObject
      ..dianpingCount = dianpingCount ?? this.dianpingCount
      ..distance = distance ?? this.distance
      ..distanceText = distanceText ?? this.distanceText
      ..hasVideo = hasVideo ?? this.hasVideo
      ..hasVr = hasVr ?? this.hasVr
      ..id = id ?? this.id
      ..intelligent = intelligent ?? this.intelligent
      ..jiaxiaoPhone = jiaxiaoPhone ?? this.jiaxiaoPhone
      ..labelObjects = labelObjects ?? this.labelObjects
      ..labels = labels ?? this.labels
      ..logo = logo ?? this.logo
      ..logoIcon = logoIcon ?? this.logoIcon
      ..name = name ?? this.name
      ..newCertification = newCertification ?? this.newCertification
      ..oneWordRecommendation = oneWordRecommendation ??
          this.oneWordRecommendation
      ..privileges = privileges ?? this.privileges
      ..rank = rank ?? this.rank
      ..score = score ?? this.score
      ..topIcon = topIcon ?? this.topIcon
      ..vipLevel = vipLevel ?? this.vipLevel
      ..vipYear = vipYear ?? this.vipYear;
  }
}

HomeFilterSchoolItemListActivity $HomeFilterSchoolItemListActivityFromJson(
    Map<String, dynamic> json) {
  final HomeFilterSchoolItemListActivity homeFilterSchoolItemListActivity = HomeFilterSchoolItemListActivity();
  final int? activityId = jsonConvert.convert<int>(json['activityId']);
  if (activityId != null) {
    homeFilterSchoolItemListActivity.activityId = activityId;
  }
  final String? activityUrl = jsonConvert.convert<String>(json['activityUrl']);
  if (activityUrl != null) {
    homeFilterSchoolItemListActivity.activityUrl = activityUrl;
  }
  final dynamic courseName = json['courseName'];
  if (courseName != null) {
    homeFilterSchoolItemListActivity.courseName = courseName;
  }
  final dynamic driveLicenseType = json['driveLicenseType'];
  if (driveLicenseType != null) {
    homeFilterSchoolItemListActivity.driveLicenseType = driveLicenseType;
  }
  final String? icon = jsonConvert.convert<String>(json['icon']);
  if (icon != null) {
    homeFilterSchoolItemListActivity.icon = icon;
  }
  final String? iconTitle = jsonConvert.convert<String>(json['iconTitle']);
  if (iconTitle != null) {
    homeFilterSchoolItemListActivity.iconTitle = iconTitle;
  }
  final bool? mustLogin = jsonConvert.convert<bool>(json['mustLogin']);
  if (mustLogin != null) {
    homeFilterSchoolItemListActivity.mustLogin = mustLogin;
  }
  final String? newIconTitle = jsonConvert.convert<String>(
      json['newIconTitle']);
  if (newIconTitle != null) {
    homeFilterSchoolItemListActivity.newIconTitle = newIconTitle;
  }
  final dynamic remainingDays = json['remainingDays'];
  if (remainingDays != null) {
    homeFilterSchoolItemListActivity.remainingDays = remainingDays;
  }
  final dynamic type = json['type'];
  if (type != null) {
    homeFilterSchoolItemListActivity.type = type;
  }
  return homeFilterSchoolItemListActivity;
}

Map<String, dynamic> $HomeFilterSchoolItemListActivityToJson(
    HomeFilterSchoolItemListActivity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['activityId'] = entity.activityId;
  data['activityUrl'] = entity.activityUrl;
  data['courseName'] = entity.courseName;
  data['driveLicenseType'] = entity.driveLicenseType;
  data['icon'] = entity.icon;
  data['iconTitle'] = entity.iconTitle;
  data['mustLogin'] = entity.mustLogin;
  data['newIconTitle'] = entity.newIconTitle;
  data['remainingDays'] = entity.remainingDays;
  data['type'] = entity.type;
  return data;
}

extension HomeFilterSchoolItemListActivityExtension on HomeFilterSchoolItemListActivity {
  HomeFilterSchoolItemListActivity copyWith({
    int? activityId,
    String? activityUrl,
    dynamic courseName,
    dynamic driveLicenseType,
    String? icon,
    String? iconTitle,
    bool? mustLogin,
    String? newIconTitle,
    dynamic remainingDays,
    dynamic type,
  }) {
    return HomeFilterSchoolItemListActivity()
      ..activityId = activityId ?? this.activityId
      ..activityUrl = activityUrl ?? this.activityUrl
      ..courseName = courseName ?? this.courseName
      ..driveLicenseType = driveLicenseType ?? this.driveLicenseType
      ..icon = icon ?? this.icon
      ..iconTitle = iconTitle ?? this.iconTitle
      ..mustLogin = mustLogin ?? this.mustLogin
      ..newIconTitle = newIconTitle ?? this.newIconTitle
      ..remainingDays = remainingDays ?? this.remainingDays
      ..type = type ?? this.type;
  }
}

HomeFilterSchoolItemListCourseObject $HomeFilterSchoolItemListCourseObjectFromJson(
    Map<String, dynamic> json) {
  final HomeFilterSchoolItemListCourseObject homeFilterSchoolItemListCourseObject = HomeFilterSchoolItemListCourseObject();
  final bool? concessionalCourse = jsonConvert.convert<bool>(
      json['concessionalCourse']);
  if (concessionalCourse != null) {
    homeFilterSchoolItemListCourseObject.concessionalCourse =
        concessionalCourse;
  }
  final String? courseClassName = jsonConvert.convert<String>(
      json['courseClassName']);
  if (courseClassName != null) {
    homeFilterSchoolItemListCourseObject.courseClassName = courseClassName;
  }
  final int? originPrice = jsonConvert.convert<int>(json['originPrice']);
  if (originPrice != null) {
    homeFilterSchoolItemListCourseObject.originPrice = originPrice;
  }
  final int? price = jsonConvert.convert<int>(json['price']);
  if (price != null) {
    homeFilterSchoolItemListCourseObject.price = price;
  }
  final int? storePrice = jsonConvert.convert<int>(json['storePrice']);
  if (storePrice != null) {
    homeFilterSchoolItemListCourseObject.storePrice = storePrice;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    homeFilterSchoolItemListCourseObject.type = type;
  }
  return homeFilterSchoolItemListCourseObject;
}

Map<String, dynamic> $HomeFilterSchoolItemListCourseObjectToJson(
    HomeFilterSchoolItemListCourseObject entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['concessionalCourse'] = entity.concessionalCourse;
  data['courseClassName'] = entity.courseClassName;
  data['originPrice'] = entity.originPrice;
  data['price'] = entity.price;
  data['storePrice'] = entity.storePrice;
  data['type'] = entity.type;
  return data;
}

extension HomeFilterSchoolItemListCourseObjectExtension on HomeFilterSchoolItemListCourseObject {
  HomeFilterSchoolItemListCourseObject copyWith({
    bool? concessionalCourse,
    String? courseClassName,
    int? originPrice,
    int? price,
    int? storePrice,
    String? type,
  }) {
    return HomeFilterSchoolItemListCourseObject()
      ..concessionalCourse = concessionalCourse ?? this.concessionalCourse
      ..courseClassName = courseClassName ?? this.courseClassName
      ..originPrice = originPrice ?? this.originPrice
      ..price = price ?? this.price
      ..storePrice = storePrice ?? this.storePrice
      ..type = type ?? this.type;
  }
}

HomeFilterSchoolItemListJiaxiaoPhone $HomeFilterSchoolItemListJiaxiaoPhoneFromJson(
    Map<String, dynamic> json) {
  final HomeFilterSchoolItemListJiaxiaoPhone homeFilterSchoolItemListJiaxiaoPhone = HomeFilterSchoolItemListJiaxiaoPhone();
  final String? complaintPhone = jsonConvert.convert<String>(
      json['complaintPhone']);
  if (complaintPhone != null) {
    homeFilterSchoolItemListJiaxiaoPhone.complaintPhone = complaintPhone;
  }
  final int? phoneStatus = jsonConvert.convert<int>(json['phoneStatus']);
  if (phoneStatus != null) {
    homeFilterSchoolItemListJiaxiaoPhone.phoneStatus = phoneStatus;
  }
  final String? privatePhone = jsonConvert.convert<String>(
      json['privatePhone']);
  if (privatePhone != null) {
    homeFilterSchoolItemListJiaxiaoPhone.privatePhone = privatePhone;
  }
  return homeFilterSchoolItemListJiaxiaoPhone;
}

Map<String, dynamic> $HomeFilterSchoolItemListJiaxiaoPhoneToJson(
    HomeFilterSchoolItemListJiaxiaoPhone entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['complaintPhone'] = entity.complaintPhone;
  data['phoneStatus'] = entity.phoneStatus;
  data['privatePhone'] = entity.privatePhone;
  return data;
}

extension HomeFilterSchoolItemListJiaxiaoPhoneExtension on HomeFilterSchoolItemListJiaxiaoPhone {
  HomeFilterSchoolItemListJiaxiaoPhone copyWith({
    String? complaintPhone,
    int? phoneStatus,
    String? privatePhone,
  }) {
    return HomeFilterSchoolItemListJiaxiaoPhone()
      ..complaintPhone = complaintPhone ?? this.complaintPhone
      ..phoneStatus = phoneStatus ?? this.phoneStatus
      ..privatePhone = privatePhone ?? this.privatePhone;
  }
}

HomeFilterSchoolItemListLabelObjects $HomeFilterSchoolItemListLabelObjectsFromJson(
    Map<String, dynamic> json) {
  final HomeFilterSchoolItemListLabelObjects homeFilterSchoolItemListLabelObjects = HomeFilterSchoolItemListLabelObjects();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    homeFilterSchoolItemListLabelObjects.name = name;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    homeFilterSchoolItemListLabelObjects.type = type;
  }
  return homeFilterSchoolItemListLabelObjects;
}

Map<String, dynamic> $HomeFilterSchoolItemListLabelObjectsToJson(
    HomeFilterSchoolItemListLabelObjects entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['type'] = entity.type;
  return data;
}

extension HomeFilterSchoolItemListLabelObjectsExtension on HomeFilterSchoolItemListLabelObjects {
  HomeFilterSchoolItemListLabelObjects copyWith({
    String? name,
    int? type,
  }) {
    return HomeFilterSchoolItemListLabelObjects()
      ..name = name ?? this.name
      ..type = type ?? this.type;
  }
}