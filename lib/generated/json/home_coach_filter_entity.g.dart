import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/home/home_coach_filter_entity.dart';

HomeCoachFilterEntity $HomeCoachFilterEntityFromJson(
    Map<String, dynamic> json) {
  final HomeCoachFilterEntity homeCoachFilterEntity = HomeCoachFilterEntity();
  final List<HomeCoachFilterItemList>? itemList = (json['itemList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<HomeCoachFilterItemList>(
          e) as HomeCoachFilterItemList).toList();
  if (itemList != null) {
    homeCoachFilterEntity.itemList = itemList;
  }
  return homeCoachFilterEntity;
}

Map<String, dynamic> $HomeCoachFilterEntityToJson(
    HomeCoachFilterEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  return data;
}

extension HomeCoachFilterEntityExtension on HomeCoachFilterEntity {
  HomeCoachFilterEntity copyWith({
    List<HomeCoachFilterItemList>? itemList,
  }) {
    return HomeCoachFilterEntity()
      ..itemList = itemList ?? this.itemList;
  }
}

HomeCoachFilterItemList $HomeCoachFilterItemListFromJson(
    Map<String, dynamic> json) {
  final HomeCoachFilterItemList homeCoachFilterItemList = HomeCoachFilterItemList();
  final List<
      HomeCoachFilterItemListActivity>? activity = (json['activity'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<HomeCoachFilterItemListActivity>(
          e) as HomeCoachFilterItemListActivity).toList();
  if (activity != null) {
    homeCoachFilterItemList.activity = activity;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    homeCoachFilterItemList.avatar = avatar;
  }
  final String? avatarFrame = jsonConvert.convert<String>(json['avatarFrame']);
  if (avatarFrame != null) {
    homeCoachFilterItemList.avatarFrame = avatarFrame;
  }
  final dynamic certificationIcon = json['certificationIcon'];
  if (certificationIcon != null) {
    homeCoachFilterItemList.certificationIcon = certificationIcon;
  }
  final int? certificationStatus = jsonConvert.convert<int>(
      json['certificationStatus']);
  if (certificationStatus != null) {
    homeCoachFilterItemList.certificationStatus = certificationStatus;
  }
  final String? countyName = jsonConvert.convert<String>(json['countyName']);
  if (countyName != null) {
    homeCoachFilterItemList.countyName = countyName;
  }
  final List<
      HomeCoachFilterItemListCourseObject>? courseObject = (json['courseObject'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<HomeCoachFilterItemListCourseObject>(
          e) as HomeCoachFilterItemListCourseObject).toList();
  if (courseObject != null) {
    homeCoachFilterItemList.courseObject = courseObject;
  }
  final int? dianpingCount = jsonConvert.convert<int>(json['dianpingCount']);
  if (dianpingCount != null) {
    homeCoachFilterItemList.dianpingCount = dianpingCount;
  }
  final String? distance = jsonConvert.convert<String>(json['distance']);
  if (distance != null) {
    homeCoachFilterItemList.distance = distance;
  }
  final String? distanceText = jsonConvert.convert<String>(
      json['distanceText']);
  if (distanceText != null) {
    homeCoachFilterItemList.distanceText = distanceText;
  }
  final bool? goldCoach = jsonConvert.convert<bool>(json['goldCoach']);
  if (goldCoach != null) {
    homeCoachFilterItemList.goldCoach = goldCoach;
  }
  final String? goldCoachIcon = jsonConvert.convert<String>(
      json['goldCoachIcon']);
  if (goldCoachIcon != null) {
    homeCoachFilterItemList.goldCoachIcon = goldCoachIcon;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    homeCoachFilterItemList.id = id;
  }
  final bool? jiaxiaoGrant = jsonConvert.convert<bool>(json['jiaxiaoGrant']);
  if (jiaxiaoGrant != null) {
    homeCoachFilterItemList.jiaxiaoGrant = jiaxiaoGrant;
  }
  final int? jiaxiaoId = jsonConvert.convert<int>(json['jiaxiaoId']);
  if (jiaxiaoId != null) {
    homeCoachFilterItemList.jiaxiaoId = jiaxiaoId;
  }
  final String? jiaxiaoName = jsonConvert.convert<String>(json['jiaxiaoName']);
  if (jiaxiaoName != null) {
    homeCoachFilterItemList.jiaxiaoName = jiaxiaoName;
  }
  final List<dynamic>? labels = (json['labels'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (labels != null) {
    homeCoachFilterItemList.labels = labels;
  }
  final bool? lukaoyi = jsonConvert.convert<bool>(json['lukaoyi']);
  if (lukaoyi != null) {
    homeCoachFilterItemList.lukaoyi = lukaoyi;
  }
  final dynamic lukaoyiIcon = json['lukaoyiIcon'];
  if (lukaoyiIcon != null) {
    homeCoachFilterItemList.lukaoyiIcon = lukaoyiIcon;
  }
  final bool? myCoach = jsonConvert.convert<bool>(json['myCoach']);
  if (myCoach != null) {
    homeCoachFilterItemList.myCoach = myCoach;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    homeCoachFilterItemList.name = name;
  }
  final String? peilianCarType = jsonConvert.convert<String>(
      json['peilianCarType']);
  if (peilianCarType != null) {
    homeCoachFilterItemList.peilianCarType = peilianCarType;
  }
  final String? peilianPrice = jsonConvert.convert<String>(
      json['peilianPrice']);
  if (peilianPrice != null) {
    homeCoachFilterItemList.peilianPrice = peilianPrice;
  }
  final String? peilianType = jsonConvert.convert<String>(json['peilianType']);
  if (peilianType != null) {
    homeCoachFilterItemList.peilianType = peilianType;
  }
  final String? price = jsonConvert.convert<String>(json['price']);
  if (price != null) {
    homeCoachFilterItemList.price = price;
  }
  final dynamic priorCoachIcon = json['priorCoachIcon'];
  if (priorCoachIcon != null) {
    homeCoachFilterItemList.priorCoachIcon = priorCoachIcon;
  }
  final dynamic rankDesc = json['rankDesc'];
  if (rankDesc != null) {
    homeCoachFilterItemList.rankDesc = rankDesc;
  }
  final int? rankNum = jsonConvert.convert<int>(json['rankNum']);
  if (rankNum != null) {
    homeCoachFilterItemList.rankNum = rankNum;
  }
  final double? rankScore = jsonConvert.convert<double>(json['rankScore']);
  if (rankScore != null) {
    homeCoachFilterItemList.rankScore = rankScore;
  }
  final double? score = jsonConvert.convert<double>(json['score']);
  if (score != null) {
    homeCoachFilterItemList.score = score;
  }
  final bool? showPhoneBtn = jsonConvert.convert<bool>(json['showPhoneBtn']);
  if (showPhoneBtn != null) {
    homeCoachFilterItemList.showPhoneBtn = showPhoneBtn;
  }
  final dynamic studentCount = json['studentCount'];
  if (studentCount != null) {
    homeCoachFilterItemList.studentCount = studentCount;
  }
  final int? teachAge = jsonConvert.convert<int>(json['teachAge']);
  if (teachAge != null) {
    homeCoachFilterItemList.teachAge = teachAge;
  }
  final String? trainFieldAddress = jsonConvert.convert<String>(
      json['trainFieldAddress']);
  if (trainFieldAddress != null) {
    homeCoachFilterItemList.trainFieldAddress = trainFieldAddress;
  }
  final bool? vip = jsonConvert.convert<bool>(json['vip']);
  if (vip != null) {
    homeCoachFilterItemList.vip = vip;
  }
  final dynamic vipIcon = json['vipIcon'];
  if (vipIcon != null) {
    homeCoachFilterItemList.vipIcon = vipIcon;
  }
  final dynamic wechat = json['wechat'];
  if (wechat != null) {
    homeCoachFilterItemList.wechat = wechat;
  }
  return homeCoachFilterItemList;
}

Map<String, dynamic> $HomeCoachFilterItemListToJson(
    HomeCoachFilterItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['activity'] = entity.activity?.map((v) => v.toJson()).toList();
  data['avatar'] = entity.avatar;
  data['avatarFrame'] = entity.avatarFrame;
  data['certificationIcon'] = entity.certificationIcon;
  data['certificationStatus'] = entity.certificationStatus;
  data['countyName'] = entity.countyName;
  data['courseObject'] = entity.courseObject?.map((v) => v.toJson()).toList();
  data['dianpingCount'] = entity.dianpingCount;
  data['distance'] = entity.distance;
  data['distanceText'] = entity.distanceText;
  data['goldCoach'] = entity.goldCoach;
  data['goldCoachIcon'] = entity.goldCoachIcon;
  data['id'] = entity.id;
  data['jiaxiaoGrant'] = entity.jiaxiaoGrant;
  data['jiaxiaoId'] = entity.jiaxiaoId;
  data['jiaxiaoName'] = entity.jiaxiaoName;
  data['labels'] = entity.labels;
  data['lukaoyi'] = entity.lukaoyi;
  data['lukaoyiIcon'] = entity.lukaoyiIcon;
  data['myCoach'] = entity.myCoach;
  data['name'] = entity.name;
  data['peilianCarType'] = entity.peilianCarType;
  data['peilianPrice'] = entity.peilianPrice;
  data['peilianType'] = entity.peilianType;
  data['price'] = entity.price;
  data['priorCoachIcon'] = entity.priorCoachIcon;
  data['rankDesc'] = entity.rankDesc;
  data['rankNum'] = entity.rankNum;
  data['rankScore'] = entity.rankScore;
  data['score'] = entity.score;
  data['showPhoneBtn'] = entity.showPhoneBtn;
  data['studentCount'] = entity.studentCount;
  data['teachAge'] = entity.teachAge;
  data['trainFieldAddress'] = entity.trainFieldAddress;
  data['vip'] = entity.vip;
  data['vipIcon'] = entity.vipIcon;
  data['wechat'] = entity.wechat;
  return data;
}

extension HomeCoachFilterItemListExtension on HomeCoachFilterItemList {
  HomeCoachFilterItemList copyWith({
    List<HomeCoachFilterItemListActivity>? activity,
    String? avatar,
    String? avatarFrame,
    dynamic certificationIcon,
    int? certificationStatus,
    String? countyName,
    List<HomeCoachFilterItemListCourseObject>? courseObject,
    int? dianpingCount,
    String? distance,
    String? distanceText,
    bool? goldCoach,
    String? goldCoachIcon,
    int? id,
    bool? jiaxiaoGrant,
    int? jiaxiaoId,
    String? jiaxiaoName,
    List<dynamic>? labels,
    bool? lukaoyi,
    dynamic lukaoyiIcon,
    bool? myCoach,
    String? name,
    String? peilianCarType,
    String? peilianPrice,
    String? peilianType,
    String? price,
    dynamic priorCoachIcon,
    dynamic rankDesc,
    int? rankNum,
    double? rankScore,
    double? score,
    bool? showPhoneBtn,
    dynamic studentCount,
    int? teachAge,
    String? trainFieldAddress,
    bool? vip,
    dynamic vipIcon,
    dynamic wechat,
  }) {
    return HomeCoachFilterItemList()
      ..activity = activity ?? this.activity
      ..avatar = avatar ?? this.avatar
      ..avatarFrame = avatarFrame ?? this.avatarFrame
      ..certificationIcon = certificationIcon ?? this.certificationIcon
      ..certificationStatus = certificationStatus ?? this.certificationStatus
      ..countyName = countyName ?? this.countyName
      ..courseObject = courseObject ?? this.courseObject
      ..dianpingCount = dianpingCount ?? this.dianpingCount
      ..distance = distance ?? this.distance
      ..distanceText = distanceText ?? this.distanceText
      ..goldCoach = goldCoach ?? this.goldCoach
      ..goldCoachIcon = goldCoachIcon ?? this.goldCoachIcon
      ..id = id ?? this.id
      ..jiaxiaoGrant = jiaxiaoGrant ?? this.jiaxiaoGrant
      ..jiaxiaoId = jiaxiaoId ?? this.jiaxiaoId
      ..jiaxiaoName = jiaxiaoName ?? this.jiaxiaoName
      ..labels = labels ?? this.labels
      ..lukaoyi = lukaoyi ?? this.lukaoyi
      ..lukaoyiIcon = lukaoyiIcon ?? this.lukaoyiIcon
      ..myCoach = myCoach ?? this.myCoach
      ..name = name ?? this.name
      ..peilianCarType = peilianCarType ?? this.peilianCarType
      ..peilianPrice = peilianPrice ?? this.peilianPrice
      ..peilianType = peilianType ?? this.peilianType
      ..price = price ?? this.price
      ..priorCoachIcon = priorCoachIcon ?? this.priorCoachIcon
      ..rankDesc = rankDesc ?? this.rankDesc
      ..rankNum = rankNum ?? this.rankNum
      ..rankScore = rankScore ?? this.rankScore
      ..score = score ?? this.score
      ..showPhoneBtn = showPhoneBtn ?? this.showPhoneBtn
      ..studentCount = studentCount ?? this.studentCount
      ..teachAge = teachAge ?? this.teachAge
      ..trainFieldAddress = trainFieldAddress ?? this.trainFieldAddress
      ..vip = vip ?? this.vip
      ..vipIcon = vipIcon ?? this.vipIcon
      ..wechat = wechat ?? this.wechat;
  }
}

HomeCoachFilterItemListActivity $HomeCoachFilterItemListActivityFromJson(
    Map<String, dynamic> json) {
  final HomeCoachFilterItemListActivity homeCoachFilterItemListActivity = HomeCoachFilterItemListActivity();
  final int? activityId = jsonConvert.convert<int>(json['activityId']);
  if (activityId != null) {
    homeCoachFilterItemListActivity.activityId = activityId;
  }
  final String? activityUrl = jsonConvert.convert<String>(json['activityUrl']);
  if (activityUrl != null) {
    homeCoachFilterItemListActivity.activityUrl = activityUrl;
  }
  final String? courseName = jsonConvert.convert<String>(json['courseName']);
  if (courseName != null) {
    homeCoachFilterItemListActivity.courseName = courseName;
  }
  final String? driveLicenseType = jsonConvert.convert<String>(
      json['driveLicenseType']);
  if (driveLicenseType != null) {
    homeCoachFilterItemListActivity.driveLicenseType = driveLicenseType;
  }
  final String? icon = jsonConvert.convert<String>(json['icon']);
  if (icon != null) {
    homeCoachFilterItemListActivity.icon = icon;
  }
  final String? iconTitle = jsonConvert.convert<String>(json['iconTitle']);
  if (iconTitle != null) {
    homeCoachFilterItemListActivity.iconTitle = iconTitle;
  }
  final bool? mustLogin = jsonConvert.convert<bool>(json['mustLogin']);
  if (mustLogin != null) {
    homeCoachFilterItemListActivity.mustLogin = mustLogin;
  }
  final dynamic newIconTitle = json['newIconTitle'];
  if (newIconTitle != null) {
    homeCoachFilterItemListActivity.newIconTitle = newIconTitle;
  }
  final String? remainingDays = jsonConvert.convert<String>(
      json['remainingDays']);
  if (remainingDays != null) {
    homeCoachFilterItemListActivity.remainingDays = remainingDays;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    homeCoachFilterItemListActivity.type = type;
  }
  return homeCoachFilterItemListActivity;
}

Map<String, dynamic> $HomeCoachFilterItemListActivityToJson(
    HomeCoachFilterItemListActivity entity) {
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

extension HomeCoachFilterItemListActivityExtension on HomeCoachFilterItemListActivity {
  HomeCoachFilterItemListActivity copyWith({
    int? activityId,
    String? activityUrl,
    String? courseName,
    String? driveLicenseType,
    String? icon,
    String? iconTitle,
    bool? mustLogin,
    dynamic newIconTitle,
    String? remainingDays,
    String? type,
  }) {
    return HomeCoachFilterItemListActivity()
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

HomeCoachFilterItemListCourseObject $HomeCoachFilterItemListCourseObjectFromJson(
    Map<String, dynamic> json) {
  final HomeCoachFilterItemListCourseObject homeCoachFilterItemListCourseObject = HomeCoachFilterItemListCourseObject();
  final bool? concessionalCourse = jsonConvert.convert<bool>(
      json['concessionalCourse']);
  if (concessionalCourse != null) {
    homeCoachFilterItemListCourseObject.concessionalCourse = concessionalCourse;
  }
  final String? courseClassName = jsonConvert.convert<String>(
      json['courseClassName']);
  if (courseClassName != null) {
    homeCoachFilterItemListCourseObject.courseClassName = courseClassName;
  }
  final int? originPrice = jsonConvert.convert<int>(json['originPrice']);
  if (originPrice != null) {
    homeCoachFilterItemListCourseObject.originPrice = originPrice;
  }
  final int? price = jsonConvert.convert<int>(json['price']);
  if (price != null) {
    homeCoachFilterItemListCourseObject.price = price;
  }
  final int? storePrice = jsonConvert.convert<int>(json['storePrice']);
  if (storePrice != null) {
    homeCoachFilterItemListCourseObject.storePrice = storePrice;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    homeCoachFilterItemListCourseObject.type = type;
  }
  return homeCoachFilterItemListCourseObject;
}

Map<String, dynamic> $HomeCoachFilterItemListCourseObjectToJson(
    HomeCoachFilterItemListCourseObject entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['concessionalCourse'] = entity.concessionalCourse;
  data['courseClassName'] = entity.courseClassName;
  data['originPrice'] = entity.originPrice;
  data['price'] = entity.price;
  data['storePrice'] = entity.storePrice;
  data['type'] = entity.type;
  return data;
}

extension HomeCoachFilterItemListCourseObjectExtension on HomeCoachFilterItemListCourseObject {
  HomeCoachFilterItemListCourseObject copyWith({
    bool? concessionalCourse,
    String? courseClassName,
    int? originPrice,
    int? price,
    int? storePrice,
    String? type,
  }) {
    return HomeCoachFilterItemListCourseObject()
      ..concessionalCourse = concessionalCourse ?? this.concessionalCourse
      ..courseClassName = courseClassName ?? this.courseClassName
      ..originPrice = originPrice ?? this.originPrice
      ..price = price ?? this.price
      ..storePrice = storePrice ?? this.storePrice
      ..type = type ?? this.type;
  }
}