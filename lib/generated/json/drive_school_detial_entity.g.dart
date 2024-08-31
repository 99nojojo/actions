import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/drive_school_detial_entity.dart';

DriveSchoolDetialEntity $DriveSchoolDetialEntityFromJson(
    Map<String, dynamic> json) {
  final DriveSchoolDetialEntity driveSchoolDetialEntity = DriveSchoolDetialEntity();
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    driveSchoolDetialEntity.address = address;
  }
  final dynamic bannerActivity = json['bannerActivity'];
  if (bannerActivity != null) {
    driveSchoolDetialEntity.bannerActivity = bannerActivity;
  }
  final List<
      DriveSchoolDetialBrandPrivileges>? brandPrivileges = (json['brandPrivileges'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<DriveSchoolDetialBrandPrivileges>(
          e) as DriveSchoolDetialBrandPrivileges).toList();
  if (brandPrivileges != null) {
    driveSchoolDetialEntity.brandPrivileges = brandPrivileges;
  }
  final String? cityCode = jsonConvert.convert<String>(json['cityCode']);
  if (cityCode != null) {
    driveSchoolDetialEntity.cityCode = cityCode;
  }
  final String? cityName = jsonConvert.convert<String>(json['cityName']);
  if (cityName != null) {
    driveSchoolDetialEntity.cityName = cityName;
  }
  final int? coachCount = jsonConvert.convert<int>(json['coachCount']);
  if (coachCount != null) {
    driveSchoolDetialEntity.coachCount = coachCount;
  }
  final bool? cooperator = jsonConvert.convert<bool>(json['cooperator']);
  if (cooperator != null) {
    driveSchoolDetialEntity.cooperator = cooperator;
  }
  final int? courseCount = jsonConvert.convert<int>(json['courseCount']);
  if (courseCount != null) {
    driveSchoolDetialEntity.courseCount = courseCount;
  }
  final String? courseLeadAdvertiseUrl = jsonConvert.convert<String>(
      json['courseLeadAdvertiseUrl']);
  if (courseLeadAdvertiseUrl != null) {
    driveSchoolDetialEntity.courseLeadAdvertiseUrl = courseLeadAdvertiseUrl;
  }
  final List<DriveSchoolDetialCourses>? courses = (json['courses'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<DriveSchoolDetialCourses>(
          e) as DriveSchoolDetialCourses).toList();
  if (courses != null) {
    driveSchoolDetialEntity.courses = courses;
  }
  final List<
      DriveSchoolDetialCoverGroupList>? coverGroupList = (json['coverGroupList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<DriveSchoolDetialCoverGroupList>(
          e) as DriveSchoolDetialCoverGroupList).toList();
  if (coverGroupList != null) {
    driveSchoolDetialEntity.coverGroupList = coverGroupList;
  }
  final List<
      DriveSchoolDetialCoverList>? coverList = (json['coverList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<DriveSchoolDetialCoverList>(
          e) as DriveSchoolDetialCoverList).toList();
  if (coverList != null) {
    driveSchoolDetialEntity.coverList = coverList;
  }
  final DriveSchoolDetialDetailDto? detailDto = jsonConvert.convert<
      DriveSchoolDetialDetailDto>(json['detailDto']);
  if (detailDto != null) {
    driveSchoolDetialEntity.detailDto = detailDto;
  }
  final DriveSchoolDetialDianping? dianping = jsonConvert.convert<
      DriveSchoolDetialDianping>(json['dianping']);
  if (dianping != null) {
    driveSchoolDetialEntity.dianping = dianping;
  }
  final List<
      DriveSchoolDetialDianpingCommentCountDataList>? dianpingCommentCountDataList = (json['dianpingCommentCountDataList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          DriveSchoolDetialDianpingCommentCountDataList>(
          e) as DriveSchoolDetialDianpingCommentCountDataList).toList();
  if (dianpingCommentCountDataList != null) {
    driveSchoolDetialEntity.dianpingCommentCountDataList =
        dianpingCommentCountDataList;
  }
  final List<
      DriveSchoolDetialDianpingTagList>? dianpingTagList = (json['dianpingTagList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<DriveSchoolDetialDianpingTagList>(
          e) as DriveSchoolDetialDianpingTagList).toList();
  if (dianpingTagList != null) {
    driveSchoolDetialEntity.dianpingTagList = dianpingTagList;
  }
  final int? displayType = jsonConvert.convert<int>(json['displayType']);
  if (displayType != null) {
    driveSchoolDetialEntity.displayType = displayType;
  }
  final int? fieldCount = jsonConvert.convert<int>(json['fieldCount']);
  if (fieldCount != null) {
    driveSchoolDetialEntity.fieldCount = fieldCount;
  }
  final List<
      DriveSchoolDetialFieldList>? fieldList = (json['fieldList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<DriveSchoolDetialFieldList>(
          e) as DriveSchoolDetialFieldList).toList();
  if (fieldList != null) {
    driveSchoolDetialEntity.fieldList = fieldList;
  }
  final bool? hasShuttleBus = jsonConvert.convert<bool>(json['hasShuttleBus']);
  if (hasShuttleBus != null) {
    driveSchoolDetialEntity.hasShuttleBus = hasShuttleBus;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    driveSchoolDetialEntity.id = id;
  }
  final bool? inPass = jsonConvert.convert<bool>(json['inPass']);
  if (inPass != null) {
    driveSchoolDetialEntity.inPass = inPass;
  }
  final bool? intelligent = jsonConvert.convert<bool>(json['intelligent']);
  if (intelligent != null) {
    driveSchoolDetialEntity.intelligent = intelligent;
  }
  final dynamic intelligentImageList = json['intelligentImageList'];
  if (intelligentImageList != null) {
    driveSchoolDetialEntity.intelligentImageList = intelligentImageList;
  }
  final dynamic intelligentPrivileges = json['intelligentPrivileges'];
  if (intelligentPrivileges != null) {
    driveSchoolDetialEntity.intelligentPrivileges = intelligentPrivileges;
  }
  final bool? isBrand = jsonConvert.convert<bool>(json['isBrand']);
  if (isBrand != null) {
    driveSchoolDetialEntity.isBrand = isBrand;
  }
  final bool? isFavor = jsonConvert.convert<bool>(json['isFavor']);
  if (isFavor != null) {
    driveSchoolDetialEntity.isFavor = isFavor;
  }
  final DriveSchoolDetialJiaxiaoPhone? jiaxiaoPhone = jsonConvert.convert<
      DriveSchoolDetialJiaxiaoPhone>(json['jiaxiaoPhone']);
  if (jiaxiaoPhone != null) {
    driveSchoolDetialEntity.jiaxiaoPhone = jiaxiaoPhone;
  }
  final double? latitude = jsonConvert.convert<double>(json['latitude']);
  if (latitude != null) {
    driveSchoolDetialEntity.latitude = latitude;
  }
  final dynamic learningCarSubTitle = json['learningCarSubTitle'];
  if (learningCarSubTitle != null) {
    driveSchoolDetialEntity.learningCarSubTitle = learningCarSubTitle;
  }
  final List<
      DriveSchoolDetialLevel1Labels>? level1Labels = (json['level1Labels'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<DriveSchoolDetialLevel1Labels>(
          e) as DriveSchoolDetialLevel1Labels).toList();
  if (level1Labels != null) {
    driveSchoolDetialEntity.level1Labels = level1Labels;
  }
  final List<
      DriveSchoolDetialLevel2Labels>? level2Labels = (json['level2Labels'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<DriveSchoolDetialLevel2Labels>(
          e) as DriveSchoolDetialLevel2Labels).toList();
  if (level2Labels != null) {
    driveSchoolDetialEntity.level2Labels = level2Labels;
  }
  final double? longitude = jsonConvert.convert<double>(json['longitude']);
  if (longitude != null) {
    driveSchoolDetialEntity.longitude = longitude;
  }
  final dynamic midActivity = json['midActivity'];
  if (midActivity != null) {
    driveSchoolDetialEntity.midActivity = midActivity;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    driveSchoolDetialEntity.name = name;
  }
  final DriveSchoolDetialNearestField? nearestField = jsonConvert.convert<
      DriveSchoolDetialNearestField>(json['nearestField']);
  if (nearestField != null) {
    driveSchoolDetialEntity.nearestField = nearestField;
  }
  final dynamic newShuttleBusList = json['newShuttleBusList'];
  if (newShuttleBusList != null) {
    driveSchoolDetialEntity.newShuttleBusList = newShuttleBusList;
  }
  final dynamic oneByOneLeadH5Url = json['oneByOneLeadH5Url'];
  if (oneByOneLeadH5Url != null) {
    driveSchoolDetialEntity.oneByOneLeadH5Url = oneByOneLeadH5Url;
  }
  final dynamic phoneCallSubTitle = json['phoneCallSubTitle'];
  if (phoneCallSubTitle != null) {
    driveSchoolDetialEntity.phoneCallSubTitle = phoneCallSubTitle;
  }
  final List<String>? privilegeIcons = (json['privilegeIcons'] as List<
      dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (privilegeIcons != null) {
    driveSchoolDetialEntity.privilegeIcons = privilegeIcons;
  }
  final List<
      DriveSchoolDetialPrivilegeList>? privilegeList = (json['privilegeList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<DriveSchoolDetialPrivilegeList>(
          e) as DriveSchoolDetialPrivilegeList).toList();
  if (privilegeList != null) {
    driveSchoolDetialEntity.privilegeList = privilegeList;
  }
  final DriveSchoolDetialRank? rank = jsonConvert.convert<
      DriveSchoolDetialRank>(json['rank']);
  if (rank != null) {
    driveSchoolDetialEntity.rank = rank;
  }
  final int? rankCoachCount = jsonConvert.convert<int>(json['rankCoachCount']);
  if (rankCoachCount != null) {
    driveSchoolDetialEntity.rankCoachCount = rankCoachCount;
  }
  final List<
      DriveSchoolDetialRankCoachList>? rankCoachList = (json['rankCoachList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<DriveSchoolDetialRankCoachList>(
          e) as DriveSchoolDetialRankCoachList).toList();
  if (rankCoachList != null) {
    driveSchoolDetialEntity.rankCoachList = rankCoachList;
  }
  final String? schoolCode = jsonConvert.convert<String>(json['schoolCode']);
  if (schoolCode != null) {
    driveSchoolDetialEntity.schoolCode = schoolCode;
  }
  final int? showType = jsonConvert.convert<int>(json['showType']);
  if (showType != null) {
    driveSchoolDetialEntity.showType = showType;
  }
  final dynamic shuttleBusList = json['shuttleBusList'];
  if (shuttleBusList != null) {
    driveSchoolDetialEntity.shuttleBusList = shuttleBusList;
  }
  final bool? studentRegistration = jsonConvert.convert<bool>(
      json['studentRegistration']);
  if (studentRegistration != null) {
    driveSchoolDetialEntity.studentRegistration = studentRegistration;
  }
  final int? targetInquiryType = jsonConvert.convert<int>(
      json['targetInquiryType']);
  if (targetInquiryType != null) {
    driveSchoolDetialEntity.targetInquiryType = targetInquiryType;
  }
  final bool? threeImageHorizontal = jsonConvert.convert<bool>(
      json['threeImageHorizontal']);
  if (threeImageHorizontal != null) {
    driveSchoolDetialEntity.threeImageHorizontal = threeImageHorizontal;
  }
  final String? trainFieldLeadAdvertiseUrl = jsonConvert.convert<String>(
      json['trainFieldLeadAdvertiseUrl']);
  if (trainFieldLeadAdvertiseUrl != null) {
    driveSchoolDetialEntity.trainFieldLeadAdvertiseUrl =
        trainFieldLeadAdvertiseUrl;
  }
  final int? tripRefreshIntvl = jsonConvert.convert<int>(
      json['tripRefreshIntvl']);
  if (tripRefreshIntvl != null) {
    driveSchoolDetialEntity.tripRefreshIntvl = tripRefreshIntvl;
  }
  final String? typeLabel = jsonConvert.convert<String>(json['typeLabel']);
  if (typeLabel != null) {
    driveSchoolDetialEntity.typeLabel = typeLabel;
  }
  final int? vipLevel = jsonConvert.convert<int>(json['vipLevel']);
  if (vipLevel != null) {
    driveSchoolDetialEntity.vipLevel = vipLevel;
  }
  final int? vipYear = jsonConvert.convert<int>(json['vipYear']);
  if (vipYear != null) {
    driveSchoolDetialEntity.vipYear = vipYear;
  }
  final dynamic wechat = json['wechat'];
  if (wechat != null) {
    driveSchoolDetialEntity.wechat = wechat;
  }
  return driveSchoolDetialEntity;
}

Map<String, dynamic> $DriveSchoolDetialEntityToJson(
    DriveSchoolDetialEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['address'] = entity.address;
  data['bannerActivity'] = entity.bannerActivity;
  data['brandPrivileges'] =
      entity.brandPrivileges?.map((v) => v.toJson()).toList();
  data['cityCode'] = entity.cityCode;
  data['cityName'] = entity.cityName;
  data['coachCount'] = entity.coachCount;
  data['cooperator'] = entity.cooperator;
  data['courseCount'] = entity.courseCount;
  data['courseLeadAdvertiseUrl'] = entity.courseLeadAdvertiseUrl;
  data['courses'] = entity.courses?.map((v) => v.toJson()).toList();
  data['coverGroupList'] =
      entity.coverGroupList?.map((v) => v.toJson()).toList();
  data['coverList'] = entity.coverList?.map((v) => v.toJson()).toList();
  data['detailDto'] = entity.detailDto?.toJson();
  data['dianping'] = entity.dianping?.toJson();
  data['dianpingCommentCountDataList'] =
      entity.dianpingCommentCountDataList?.map((v) => v.toJson()).toList();
  data['dianpingTagList'] =
      entity.dianpingTagList?.map((v) => v.toJson()).toList();
  data['displayType'] = entity.displayType;
  data['fieldCount'] = entity.fieldCount;
  data['fieldList'] = entity.fieldList?.map((v) => v.toJson()).toList();
  data['hasShuttleBus'] = entity.hasShuttleBus;
  data['id'] = entity.id;
  data['inPass'] = entity.inPass;
  data['intelligent'] = entity.intelligent;
  data['intelligentImageList'] = entity.intelligentImageList;
  data['intelligentPrivileges'] = entity.intelligentPrivileges;
  data['isBrand'] = entity.isBrand;
  data['isFavor'] = entity.isFavor;
  data['jiaxiaoPhone'] = entity.jiaxiaoPhone?.toJson();
  data['latitude'] = entity.latitude;
  data['learningCarSubTitle'] = entity.learningCarSubTitle;
  data['level1Labels'] = entity.level1Labels?.map((v) => v.toJson()).toList();
  data['level2Labels'] = entity.level2Labels?.map((v) => v.toJson()).toList();
  data['longitude'] = entity.longitude;
  data['midActivity'] = entity.midActivity;
  data['name'] = entity.name;
  data['nearestField'] = entity.nearestField?.toJson();
  data['newShuttleBusList'] = entity.newShuttleBusList;
  data['oneByOneLeadH5Url'] = entity.oneByOneLeadH5Url;
  data['phoneCallSubTitle'] = entity.phoneCallSubTitle;
  data['privilegeIcons'] = entity.privilegeIcons;
  data['privilegeList'] = entity.privilegeList?.map((v) => v.toJson()).toList();
  data['rank'] = entity.rank?.toJson();
  data['rankCoachCount'] = entity.rankCoachCount;
  data['rankCoachList'] = entity.rankCoachList?.map((v) => v.toJson()).toList();
  data['schoolCode'] = entity.schoolCode;
  data['showType'] = entity.showType;
  data['shuttleBusList'] = entity.shuttleBusList;
  data['studentRegistration'] = entity.studentRegistration;
  data['targetInquiryType'] = entity.targetInquiryType;
  data['threeImageHorizontal'] = entity.threeImageHorizontal;
  data['trainFieldLeadAdvertiseUrl'] = entity.trainFieldLeadAdvertiseUrl;
  data['tripRefreshIntvl'] = entity.tripRefreshIntvl;
  data['typeLabel'] = entity.typeLabel;
  data['vipLevel'] = entity.vipLevel;
  data['vipYear'] = entity.vipYear;
  data['wechat'] = entity.wechat;
  return data;
}

extension DriveSchoolDetialEntityExtension on DriveSchoolDetialEntity {
  DriveSchoolDetialEntity copyWith({
    String? address,
    dynamic bannerActivity,
    List<DriveSchoolDetialBrandPrivileges>? brandPrivileges,
    String? cityCode,
    String? cityName,
    int? coachCount,
    bool? cooperator,
    int? courseCount,
    String? courseLeadAdvertiseUrl,
    List<DriveSchoolDetialCourses>? courses,
    List<DriveSchoolDetialCoverGroupList>? coverGroupList,
    List<DriveSchoolDetialCoverList>? coverList,
    DriveSchoolDetialDetailDto? detailDto,
    DriveSchoolDetialDianping? dianping,
    List<
        DriveSchoolDetialDianpingCommentCountDataList>? dianpingCommentCountDataList,
    List<DriveSchoolDetialDianpingTagList>? dianpingTagList,
    int? displayType,
    int? fieldCount,
    List<DriveSchoolDetialFieldList>? fieldList,
    bool? hasShuttleBus,
    int? id,
    bool? inPass,
    bool? intelligent,
    dynamic intelligentImageList,
    dynamic intelligentPrivileges,
    bool? isBrand,
    bool? isFavor,
    DriveSchoolDetialJiaxiaoPhone? jiaxiaoPhone,
    double? latitude,
    dynamic learningCarSubTitle,
    List<DriveSchoolDetialLevel1Labels>? level1Labels,
    List<DriveSchoolDetialLevel2Labels>? level2Labels,
    double? longitude,
    dynamic midActivity,
    String? name,
    DriveSchoolDetialNearestField? nearestField,
    dynamic newShuttleBusList,
    dynamic oneByOneLeadH5Url,
    dynamic phoneCallSubTitle,
    List<String>? privilegeIcons,
    List<DriveSchoolDetialPrivilegeList>? privilegeList,
    DriveSchoolDetialRank? rank,
    int? rankCoachCount,
    List<DriveSchoolDetialRankCoachList>? rankCoachList,
    String? schoolCode,
    int? showType,
    dynamic shuttleBusList,
    bool? studentRegistration,
    int? targetInquiryType,
    bool? threeImageHorizontal,
    String? trainFieldLeadAdvertiseUrl,
    int? tripRefreshIntvl,
    String? typeLabel,
    int? vipLevel,
    int? vipYear,
    dynamic wechat,
  }) {
    return DriveSchoolDetialEntity()
      ..address = address ?? this.address
      ..bannerActivity = bannerActivity ?? this.bannerActivity
      ..brandPrivileges = brandPrivileges ?? this.brandPrivileges
      ..cityCode = cityCode ?? this.cityCode
      ..cityName = cityName ?? this.cityName
      ..coachCount = coachCount ?? this.coachCount
      ..cooperator = cooperator ?? this.cooperator
      ..courseCount = courseCount ?? this.courseCount
      ..courseLeadAdvertiseUrl = courseLeadAdvertiseUrl ??
          this.courseLeadAdvertiseUrl
      ..courses = courses ?? this.courses
      ..coverGroupList = coverGroupList ?? this.coverGroupList
      ..coverList = coverList ?? this.coverList
      ..detailDto = detailDto ?? this.detailDto
      ..dianping = dianping ?? this.dianping
      ..dianpingCommentCountDataList = dianpingCommentCountDataList ??
          this.dianpingCommentCountDataList
      ..dianpingTagList = dianpingTagList ?? this.dianpingTagList
      ..displayType = displayType ?? this.displayType
      ..fieldCount = fieldCount ?? this.fieldCount
      ..fieldList = fieldList ?? this.fieldList
      ..hasShuttleBus = hasShuttleBus ?? this.hasShuttleBus
      ..id = id ?? this.id
      ..inPass = inPass ?? this.inPass
      ..intelligent = intelligent ?? this.intelligent
      ..intelligentImageList = intelligentImageList ?? this.intelligentImageList
      ..intelligentPrivileges = intelligentPrivileges ??
          this.intelligentPrivileges
      ..isBrand = isBrand ?? this.isBrand
      ..isFavor = isFavor ?? this.isFavor
      ..jiaxiaoPhone = jiaxiaoPhone ?? this.jiaxiaoPhone
      ..latitude = latitude ?? this.latitude
      ..learningCarSubTitle = learningCarSubTitle ?? this.learningCarSubTitle
      ..level1Labels = level1Labels ?? this.level1Labels
      ..level2Labels = level2Labels ?? this.level2Labels
      ..longitude = longitude ?? this.longitude
      ..midActivity = midActivity ?? this.midActivity
      ..name = name ?? this.name
      ..nearestField = nearestField ?? this.nearestField
      ..newShuttleBusList = newShuttleBusList ?? this.newShuttleBusList
      ..oneByOneLeadH5Url = oneByOneLeadH5Url ?? this.oneByOneLeadH5Url
      ..phoneCallSubTitle = phoneCallSubTitle ?? this.phoneCallSubTitle
      ..privilegeIcons = privilegeIcons ?? this.privilegeIcons
      ..privilegeList = privilegeList ?? this.privilegeList
      ..rank = rank ?? this.rank
      ..rankCoachCount = rankCoachCount ?? this.rankCoachCount
      ..rankCoachList = rankCoachList ?? this.rankCoachList
      ..schoolCode = schoolCode ?? this.schoolCode
      ..showType = showType ?? this.showType
      ..shuttleBusList = shuttleBusList ?? this.shuttleBusList
      ..studentRegistration = studentRegistration ?? this.studentRegistration
      ..targetInquiryType = targetInquiryType ?? this.targetInquiryType
      ..threeImageHorizontal = threeImageHorizontal ?? this.threeImageHorizontal
      ..trainFieldLeadAdvertiseUrl = trainFieldLeadAdvertiseUrl ??
          this.trainFieldLeadAdvertiseUrl
      ..tripRefreshIntvl = tripRefreshIntvl ?? this.tripRefreshIntvl
      ..typeLabel = typeLabel ?? this.typeLabel
      ..vipLevel = vipLevel ?? this.vipLevel
      ..vipYear = vipYear ?? this.vipYear
      ..wechat = wechat ?? this.wechat;
  }
}

DriveSchoolDetialBrandPrivileges $DriveSchoolDetialBrandPrivilegesFromJson(
    Map<String, dynamic> json) {
  final DriveSchoolDetialBrandPrivileges driveSchoolDetialBrandPrivileges = DriveSchoolDetialBrandPrivileges();
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    driveSchoolDetialBrandPrivileges.desc = desc;
  }
  final String? icon = jsonConvert.convert<String>(json['icon']);
  if (icon != null) {
    driveSchoolDetialBrandPrivileges.icon = icon;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    driveSchoolDetialBrandPrivileges.title = title;
  }
  return driveSchoolDetialBrandPrivileges;
}

Map<String, dynamic> $DriveSchoolDetialBrandPrivilegesToJson(
    DriveSchoolDetialBrandPrivileges entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['desc'] = entity.desc;
  data['icon'] = entity.icon;
  data['title'] = entity.title;
  return data;
}

extension DriveSchoolDetialBrandPrivilegesExtension on DriveSchoolDetialBrandPrivileges {
  DriveSchoolDetialBrandPrivileges copyWith({
    String? desc,
    String? icon,
    String? title,
  }) {
    return DriveSchoolDetialBrandPrivileges()
      ..desc = desc ?? this.desc
      ..icon = icon ?? this.icon
      ..title = title ?? this.title;
  }
}

DriveSchoolDetialCourses $DriveSchoolDetialCoursesFromJson(
    Map<String, dynamic> json) {
  final DriveSchoolDetialCourses driveSchoolDetialCourses = DriveSchoolDetialCourses();
  final String? btnSubText = jsonConvert.convert<String>(json['btnSubText']);
  if (btnSubText != null) {
    driveSchoolDetialCourses.btnSubText = btnSubText;
  }
  final String? btnText = jsonConvert.convert<String>(json['btnText']);
  if (btnText != null) {
    driveSchoolDetialCourses.btnText = btnText;
  }
  final bool? concessionalCourse = jsonConvert.convert<bool>(
      json['concessionalCourse']);
  if (concessionalCourse != null) {
    driveSchoolDetialCourses.concessionalCourse = concessionalCourse;
  }
  final String? courseClassName = jsonConvert.convert<String>(
      json['courseClassName']);
  if (courseClassName != null) {
    driveSchoolDetialCourses.courseClassName = courseClassName;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    driveSchoolDetialCourses.id = id;
  }
  final String? image = jsonConvert.convert<String>(json['image']);
  if (image != null) {
    driveSchoolDetialCourses.image = image;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    driveSchoolDetialCourses.name = name;
  }
  final int? originPrice = jsonConvert.convert<int>(json['originPrice']);
  if (originPrice != null) {
    driveSchoolDetialCourses.originPrice = originPrice;
  }
  final int? price = jsonConvert.convert<int>(json['price']);
  if (price != null) {
    driveSchoolDetialCourses.price = price;
  }
  final int? storePrice = jsonConvert.convert<int>(json['storePrice']);
  if (storePrice != null) {
    driveSchoolDetialCourses.storePrice = storePrice;
  }
  final String? tags = jsonConvert.convert<String>(json['tags']);
  if (tags != null) {
    driveSchoolDetialCourses.tags = tags;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    driveSchoolDetialCourses.type = type;
  }
  return driveSchoolDetialCourses;
}

Map<String, dynamic> $DriveSchoolDetialCoursesToJson(
    DriveSchoolDetialCourses entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['btnSubText'] = entity.btnSubText;
  data['btnText'] = entity.btnText;
  data['concessionalCourse'] = entity.concessionalCourse;
  data['courseClassName'] = entity.courseClassName;
  data['id'] = entity.id;
  data['image'] = entity.image;
  data['name'] = entity.name;
  data['originPrice'] = entity.originPrice;
  data['price'] = entity.price;
  data['storePrice'] = entity.storePrice;
  data['tags'] = entity.tags;
  data['type'] = entity.type;
  return data;
}

extension DriveSchoolDetialCoursesExtension on DriveSchoolDetialCourses {
  DriveSchoolDetialCourses copyWith({
    String? btnSubText,
    String? btnText,
    bool? concessionalCourse,
    String? courseClassName,
    int? id,
    String? image,
    String? name,
    int? originPrice,
    int? price,
    int? storePrice,
    String? tags,
    String? type,
  }) {
    return DriveSchoolDetialCourses()
      ..btnSubText = btnSubText ?? this.btnSubText
      ..btnText = btnText ?? this.btnText
      ..concessionalCourse = concessionalCourse ?? this.concessionalCourse
      ..courseClassName = courseClassName ?? this.courseClassName
      ..id = id ?? this.id
      ..image = image ?? this.image
      ..name = name ?? this.name
      ..originPrice = originPrice ?? this.originPrice
      ..price = price ?? this.price
      ..storePrice = storePrice ?? this.storePrice
      ..tags = tags ?? this.tags
      ..type = type ?? this.type;
  }
}

DriveSchoolDetialCoverGroupList $DriveSchoolDetialCoverGroupListFromJson(
    Map<String, dynamic> json) {
  final DriveSchoolDetialCoverGroupList driveSchoolDetialCoverGroupList = DriveSchoolDetialCoverGroupList();
  final List<
      DriveSchoolDetialCoverGroupListCoverList>? coverList = (json['coverList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<DriveSchoolDetialCoverGroupListCoverList>(
          e) as DriveSchoolDetialCoverGroupListCoverList).toList();
  if (coverList != null) {
    driveSchoolDetialCoverGroupList.coverList = coverList;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    driveSchoolDetialCoverGroupList.name = name;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    driveSchoolDetialCoverGroupList.type = type;
  }
  return driveSchoolDetialCoverGroupList;
}

Map<String, dynamic> $DriveSchoolDetialCoverGroupListToJson(
    DriveSchoolDetialCoverGroupList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['coverList'] = entity.coverList?.map((v) => v.toJson()).toList();
  data['name'] = entity.name;
  data['type'] = entity.type;
  return data;
}

extension DriveSchoolDetialCoverGroupListExtension on DriveSchoolDetialCoverGroupList {
  DriveSchoolDetialCoverGroupList copyWith({
    List<DriveSchoolDetialCoverGroupListCoverList>? coverList,
    String? name,
    int? type,
  }) {
    return DriveSchoolDetialCoverGroupList()
      ..coverList = coverList ?? this.coverList
      ..name = name ?? this.name
      ..type = type ?? this.type;
  }
}

DriveSchoolDetialCoverGroupListCoverList $DriveSchoolDetialCoverGroupListCoverListFromJson(
    Map<String, dynamic> json) {
  final DriveSchoolDetialCoverGroupListCoverList driveSchoolDetialCoverGroupListCoverList = DriveSchoolDetialCoverGroupListCoverList();
  final String? imageUrl = jsonConvert.convert<String>(json['imageUrl']);
  if (imageUrl != null) {
    driveSchoolDetialCoverGroupListCoverList.imageUrl = imageUrl;
  }
  final int? positionNum = jsonConvert.convert<int>(json['positionNum']);
  if (positionNum != null) {
    driveSchoolDetialCoverGroupListCoverList.positionNum = positionNum;
  }
  final bool? video = jsonConvert.convert<bool>(json['video']);
  if (video != null) {
    driveSchoolDetialCoverGroupListCoverList.video = video;
  }
  final int? videoHeight = jsonConvert.convert<int>(json['videoHeight']);
  if (videoHeight != null) {
    driveSchoolDetialCoverGroupListCoverList.videoHeight = videoHeight;
  }
  final String? videoUrl = jsonConvert.convert<String>(json['videoUrl']);
  if (videoUrl != null) {
    driveSchoolDetialCoverGroupListCoverList.videoUrl = videoUrl;
  }
  final int? videoWidth = jsonConvert.convert<int>(json['videoWidth']);
  if (videoWidth != null) {
    driveSchoolDetialCoverGroupListCoverList.videoWidth = videoWidth;
  }
  final bool? vr = jsonConvert.convert<bool>(json['vr']);
  if (vr != null) {
    driveSchoolDetialCoverGroupListCoverList.vr = vr;
  }
  final dynamic vrCoverUrl = json['vrCoverUrl'];
  if (vrCoverUrl != null) {
    driveSchoolDetialCoverGroupListCoverList.vrCoverUrl = vrCoverUrl;
  }
  final dynamic vrViewUrl = json['vrViewUrl'];
  if (vrViewUrl != null) {
    driveSchoolDetialCoverGroupListCoverList.vrViewUrl = vrViewUrl;
  }
  return driveSchoolDetialCoverGroupListCoverList;
}

Map<String, dynamic> $DriveSchoolDetialCoverGroupListCoverListToJson(
    DriveSchoolDetialCoverGroupListCoverList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['imageUrl'] = entity.imageUrl;
  data['positionNum'] = entity.positionNum;
  data['video'] = entity.video;
  data['videoHeight'] = entity.videoHeight;
  data['videoUrl'] = entity.videoUrl;
  data['videoWidth'] = entity.videoWidth;
  data['vr'] = entity.vr;
  data['vrCoverUrl'] = entity.vrCoverUrl;
  data['vrViewUrl'] = entity.vrViewUrl;
  return data;
}

extension DriveSchoolDetialCoverGroupListCoverListExtension on DriveSchoolDetialCoverGroupListCoverList {
  DriveSchoolDetialCoverGroupListCoverList copyWith({
    String? imageUrl,
    int? positionNum,
    bool? video,
    int? videoHeight,
    String? videoUrl,
    int? videoWidth,
    bool? vr,
    dynamic vrCoverUrl,
    dynamic vrViewUrl,
  }) {
    return DriveSchoolDetialCoverGroupListCoverList()
      ..imageUrl = imageUrl ?? this.imageUrl
      ..positionNum = positionNum ?? this.positionNum
      ..video = video ?? this.video
      ..videoHeight = videoHeight ?? this.videoHeight
      ..videoUrl = videoUrl ?? this.videoUrl
      ..videoWidth = videoWidth ?? this.videoWidth
      ..vr = vr ?? this.vr
      ..vrCoverUrl = vrCoverUrl ?? this.vrCoverUrl
      ..vrViewUrl = vrViewUrl ?? this.vrViewUrl;
  }
}

DriveSchoolDetialCoverList $DriveSchoolDetialCoverListFromJson(
    Map<String, dynamic> json) {
  final DriveSchoolDetialCoverList driveSchoolDetialCoverList = DriveSchoolDetialCoverList();
  final String? imageUrl = jsonConvert.convert<String>(json['imageUrl']);
  if (imageUrl != null) {
    driveSchoolDetialCoverList.imageUrl = imageUrl;
  }
  final int? positionNum = jsonConvert.convert<int>(json['positionNum']);
  if (positionNum != null) {
    driveSchoolDetialCoverList.positionNum = positionNum;
  }
  final bool? video = jsonConvert.convert<bool>(json['video']);
  if (video != null) {
    driveSchoolDetialCoverList.video = video;
  }
  final int? videoHeight = jsonConvert.convert<int>(json['videoHeight']);
  if (videoHeight != null) {
    driveSchoolDetialCoverList.videoHeight = videoHeight;
  }
  final String? videoUrl = jsonConvert.convert<String>(json['videoUrl']);
  if (videoUrl != null) {
    driveSchoolDetialCoverList.videoUrl = videoUrl;
  }
  final int? videoWidth = jsonConvert.convert<int>(json['videoWidth']);
  if (videoWidth != null) {
    driveSchoolDetialCoverList.videoWidth = videoWidth;
  }
  final bool? vr = jsonConvert.convert<bool>(json['vr']);
  if (vr != null) {
    driveSchoolDetialCoverList.vr = vr;
  }
  final String? vrCoverUrl = jsonConvert.convert<String>(json['vrCoverUrl']);
  if (vrCoverUrl != null) {
    driveSchoolDetialCoverList.vrCoverUrl = vrCoverUrl;
  }
  final String? vrViewUrl = jsonConvert.convert<String>(json['vrViewUrl']);
  if (vrViewUrl != null) {
    driveSchoolDetialCoverList.vrViewUrl = vrViewUrl;
  }
  return driveSchoolDetialCoverList;
}

Map<String, dynamic> $DriveSchoolDetialCoverListToJson(
    DriveSchoolDetialCoverList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['imageUrl'] = entity.imageUrl;
  data['positionNum'] = entity.positionNum;
  data['video'] = entity.video;
  data['videoHeight'] = entity.videoHeight;
  data['videoUrl'] = entity.videoUrl;
  data['videoWidth'] = entity.videoWidth;
  data['vr'] = entity.vr;
  data['vrCoverUrl'] = entity.vrCoverUrl;
  data['vrViewUrl'] = entity.vrViewUrl;
  return data;
}

extension DriveSchoolDetialCoverListExtension on DriveSchoolDetialCoverList {
  DriveSchoolDetialCoverList copyWith({
    String? imageUrl,
    int? positionNum,
    bool? video,
    int? videoHeight,
    String? videoUrl,
    int? videoWidth,
    bool? vr,
    String? vrCoverUrl,
    String? vrViewUrl,
  }) {
    return DriveSchoolDetialCoverList()
      ..imageUrl = imageUrl ?? this.imageUrl
      ..positionNum = positionNum ?? this.positionNum
      ..video = video ?? this.video
      ..videoHeight = videoHeight ?? this.videoHeight
      ..videoUrl = videoUrl ?? this.videoUrl
      ..videoWidth = videoWidth ?? this.videoWidth
      ..vr = vr ?? this.vr
      ..vrCoverUrl = vrCoverUrl ?? this.vrCoverUrl
      ..vrViewUrl = vrViewUrl ?? this.vrViewUrl;
  }
}

DriveSchoolDetialDetailDto $DriveSchoolDetialDetailDtoFromJson(
    Map<String, dynamic> json) {
  final DriveSchoolDetialDetailDto driveSchoolDetialDetailDto = DriveSchoolDetialDetailDto();
  final int? coachCount = jsonConvert.convert<int>(json['coachCount']);
  if (coachCount != null) {
    driveSchoolDetialDetailDto.coachCount = coachCount;
  }
  final String? queryUrl = jsonConvert.convert<String>(json['queryUrl']);
  if (queryUrl != null) {
    driveSchoolDetialDetailDto.queryUrl = queryUrl;
  }
  final String? registerDate = jsonConvert.convert<String>(
      json['registerDate']);
  if (registerDate != null) {
    driveSchoolDetialDetailDto.registerDate = registerDate;
  }
  final int? studentCount = jsonConvert.convert<int>(json['studentCount']);
  if (studentCount != null) {
    driveSchoolDetialDetailDto.studentCount = studentCount;
  }
  return driveSchoolDetialDetailDto;
}

Map<String, dynamic> $DriveSchoolDetialDetailDtoToJson(
    DriveSchoolDetialDetailDto entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['coachCount'] = entity.coachCount;
  data['queryUrl'] = entity.queryUrl;
  data['registerDate'] = entity.registerDate;
  data['studentCount'] = entity.studentCount;
  return data;
}

extension DriveSchoolDetialDetailDtoExtension on DriveSchoolDetialDetailDto {
  DriveSchoolDetialDetailDto copyWith({
    int? coachCount,
    String? queryUrl,
    String? registerDate,
    int? studentCount,
  }) {
    return DriveSchoolDetialDetailDto()
      ..coachCount = coachCount ?? this.coachCount
      ..queryUrl = queryUrl ?? this.queryUrl
      ..registerDate = registerDate ?? this.registerDate
      ..studentCount = studentCount ?? this.studentCount;
  }
}

DriveSchoolDetialDianping $DriveSchoolDetialDianpingFromJson(
    Map<String, dynamic> json) {
  final DriveSchoolDetialDianping driveSchoolDetialDianping = DriveSchoolDetialDianping();
  final int? count = jsonConvert.convert<int>(json['count']);
  if (count != null) {
    driveSchoolDetialDianping.count = count;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    driveSchoolDetialDianping.desc = desc;
  }
  final double? score = jsonConvert.convert<double>(json['score']);
  if (score != null) {
    driveSchoolDetialDianping.score = score;
  }
  return driveSchoolDetialDianping;
}

Map<String, dynamic> $DriveSchoolDetialDianpingToJson(
    DriveSchoolDetialDianping entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['count'] = entity.count;
  data['desc'] = entity.desc;
  data['score'] = entity.score;
  return data;
}

extension DriveSchoolDetialDianpingExtension on DriveSchoolDetialDianping {
  DriveSchoolDetialDianping copyWith({
    int? count,
    String? desc,
    double? score,
  }) {
    return DriveSchoolDetialDianping()
      ..count = count ?? this.count
      ..desc = desc ?? this.desc
      ..score = score ?? this.score;
  }
}

DriveSchoolDetialDianpingCommentCountDataList $DriveSchoolDetialDianpingCommentCountDataListFromJson(
    Map<String, dynamic> json) {
  final DriveSchoolDetialDianpingCommentCountDataList driveSchoolDetialDianpingCommentCountDataList = DriveSchoolDetialDianpingCommentCountDataList();
  final String? cname = jsonConvert.convert<String>(json['cname']);
  if (cname != null) {
    driveSchoolDetialDianpingCommentCountDataList.cname = cname;
  }
  final int? count = jsonConvert.convert<int>(json['count']);
  if (count != null) {
    driveSchoolDetialDianpingCommentCountDataList.count = count;
  }
  final String? key = jsonConvert.convert<String>(json['key']);
  if (key != null) {
    driveSchoolDetialDianpingCommentCountDataList.key = key;
  }
  final int? ratio = jsonConvert.convert<int>(json['ratio']);
  if (ratio != null) {
    driveSchoolDetialDianpingCommentCountDataList.ratio = ratio;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    driveSchoolDetialDianpingCommentCountDataList.type = type;
  }
  return driveSchoolDetialDianpingCommentCountDataList;
}

Map<String, dynamic> $DriveSchoolDetialDianpingCommentCountDataListToJson(
    DriveSchoolDetialDianpingCommentCountDataList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['cname'] = entity.cname;
  data['count'] = entity.count;
  data['key'] = entity.key;
  data['ratio'] = entity.ratio;
  data['type'] = entity.type;
  return data;
}

extension DriveSchoolDetialDianpingCommentCountDataListExtension on DriveSchoolDetialDianpingCommentCountDataList {
  DriveSchoolDetialDianpingCommentCountDataList copyWith({
    String? cname,
    int? count,
    String? key,
    int? ratio,
    String? type,
  }) {
    return DriveSchoolDetialDianpingCommentCountDataList()
      ..cname = cname ?? this.cname
      ..count = count ?? this.count
      ..key = key ?? this.key
      ..ratio = ratio ?? this.ratio
      ..type = type ?? this.type;
  }
}

DriveSchoolDetialDianpingTagList $DriveSchoolDetialDianpingTagListFromJson(
    Map<String, dynamic> json) {
  final DriveSchoolDetialDianpingTagList driveSchoolDetialDianpingTagList = DriveSchoolDetialDianpingTagList();
  final String? cname = jsonConvert.convert<String>(json['cname']);
  if (cname != null) {
    driveSchoolDetialDianpingTagList.cname = cname;
  }
  final int? count = jsonConvert.convert<int>(json['count']);
  if (count != null) {
    driveSchoolDetialDianpingTagList.count = count;
  }
  final String? key = jsonConvert.convert<String>(json['key']);
  if (key != null) {
    driveSchoolDetialDianpingTagList.key = key;
  }
  return driveSchoolDetialDianpingTagList;
}

Map<String, dynamic> $DriveSchoolDetialDianpingTagListToJson(
    DriveSchoolDetialDianpingTagList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['cname'] = entity.cname;
  data['count'] = entity.count;
  data['key'] = entity.key;
  return data;
}

extension DriveSchoolDetialDianpingTagListExtension on DriveSchoolDetialDianpingTagList {
  DriveSchoolDetialDianpingTagList copyWith({
    String? cname,
    int? count,
    String? key,
  }) {
    return DriveSchoolDetialDianpingTagList()
      ..cname = cname ?? this.cname
      ..count = count ?? this.count
      ..key = key ?? this.key;
  }
}

DriveSchoolDetialFieldList $DriveSchoolDetialFieldListFromJson(
    Map<String, dynamic> json) {
  final DriveSchoolDetialFieldList driveSchoolDetialFieldList = DriveSchoolDetialFieldList();
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    driveSchoolDetialFieldList.address = address;
  }
  final String? distance = jsonConvert.convert<String>(json['distance']);
  if (distance != null) {
    driveSchoolDetialFieldList.distance = distance;
  }
  final List<dynamic>? iconList = (json['iconList'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (iconList != null) {
    driveSchoolDetialFieldList.iconList = iconList;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    driveSchoolDetialFieldList.id = id;
  }
  final String? image = jsonConvert.convert<String>(json['image']);
  if (image != null) {
    driveSchoolDetialFieldList.image = image;
  }
  final dynamic imageIcon = json['imageIcon'];
  if (imageIcon != null) {
    driveSchoolDetialFieldList.imageIcon = imageIcon;
  }
  final double? latitude = jsonConvert.convert<double>(json['latitude']);
  if (latitude != null) {
    driveSchoolDetialFieldList.latitude = latitude;
  }
  final double? longitude = jsonConvert.convert<double>(json['longitude']);
  if (longitude != null) {
    driveSchoolDetialFieldList.longitude = longitude;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    driveSchoolDetialFieldList.name = name;
  }
  final String? subjects = jsonConvert.convert<String>(json['subjects']);
  if (subjects != null) {
    driveSchoolDetialFieldList.subjects = subjects;
  }
  final dynamic tag = json['tag'];
  if (tag != null) {
    driveSchoolDetialFieldList.tag = tag;
  }
  final dynamic timeDurationText = json['timeDurationText'];
  if (timeDurationText != null) {
    driveSchoolDetialFieldList.timeDurationText = timeDurationText;
  }
  final int? totalCount = jsonConvert.convert<int>(json['totalCount']);
  if (totalCount != null) {
    driveSchoolDetialFieldList.totalCount = totalCount;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    driveSchoolDetialFieldList.type = type;
  }
  return driveSchoolDetialFieldList;
}

Map<String, dynamic> $DriveSchoolDetialFieldListToJson(
    DriveSchoolDetialFieldList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['address'] = entity.address;
  data['distance'] = entity.distance;
  data['iconList'] = entity.iconList;
  data['id'] = entity.id;
  data['image'] = entity.image;
  data['imageIcon'] = entity.imageIcon;
  data['latitude'] = entity.latitude;
  data['longitude'] = entity.longitude;
  data['name'] = entity.name;
  data['subjects'] = entity.subjects;
  data['tag'] = entity.tag;
  data['timeDurationText'] = entity.timeDurationText;
  data['totalCount'] = entity.totalCount;
  data['type'] = entity.type;
  return data;
}

extension DriveSchoolDetialFieldListExtension on DriveSchoolDetialFieldList {
  DriveSchoolDetialFieldList copyWith({
    String? address,
    String? distance,
    List<dynamic>? iconList,
    int? id,
    String? image,
    dynamic imageIcon,
    double? latitude,
    double? longitude,
    String? name,
    String? subjects,
    dynamic tag,
    dynamic timeDurationText,
    int? totalCount,
    String? type,
  }) {
    return DriveSchoolDetialFieldList()
      ..address = address ?? this.address
      ..distance = distance ?? this.distance
      ..iconList = iconList ?? this.iconList
      ..id = id ?? this.id
      ..image = image ?? this.image
      ..imageIcon = imageIcon ?? this.imageIcon
      ..latitude = latitude ?? this.latitude
      ..longitude = longitude ?? this.longitude
      ..name = name ?? this.name
      ..subjects = subjects ?? this.subjects
      ..tag = tag ?? this.tag
      ..timeDurationText = timeDurationText ?? this.timeDurationText
      ..totalCount = totalCount ?? this.totalCount
      ..type = type ?? this.type;
  }
}

DriveSchoolDetialJiaxiaoPhone $DriveSchoolDetialJiaxiaoPhoneFromJson(
    Map<String, dynamic> json) {
  final DriveSchoolDetialJiaxiaoPhone driveSchoolDetialJiaxiaoPhone = DriveSchoolDetialJiaxiaoPhone();
  final String? complaintPhone = jsonConvert.convert<String>(
      json['complaintPhone']);
  if (complaintPhone != null) {
    driveSchoolDetialJiaxiaoPhone.complaintPhone = complaintPhone;
  }
  final int? phoneStatus = jsonConvert.convert<int>(json['phoneStatus']);
  if (phoneStatus != null) {
    driveSchoolDetialJiaxiaoPhone.phoneStatus = phoneStatus;
  }
  final String? privatePhone = jsonConvert.convert<String>(
      json['privatePhone']);
  if (privatePhone != null) {
    driveSchoolDetialJiaxiaoPhone.privatePhone = privatePhone;
  }
  return driveSchoolDetialJiaxiaoPhone;
}

Map<String, dynamic> $DriveSchoolDetialJiaxiaoPhoneToJson(
    DriveSchoolDetialJiaxiaoPhone entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['complaintPhone'] = entity.complaintPhone;
  data['phoneStatus'] = entity.phoneStatus;
  data['privatePhone'] = entity.privatePhone;
  return data;
}

extension DriveSchoolDetialJiaxiaoPhoneExtension on DriveSchoolDetialJiaxiaoPhone {
  DriveSchoolDetialJiaxiaoPhone copyWith({
    String? complaintPhone,
    int? phoneStatus,
    String? privatePhone,
  }) {
    return DriveSchoolDetialJiaxiaoPhone()
      ..complaintPhone = complaintPhone ?? this.complaintPhone
      ..phoneStatus = phoneStatus ?? this.phoneStatus
      ..privatePhone = privatePhone ?? this.privatePhone;
  }
}

DriveSchoolDetialLevel1Labels $DriveSchoolDetialLevel1LabelsFromJson(
    Map<String, dynamic> json) {
  final DriveSchoolDetialLevel1Labels driveSchoolDetialLevel1Labels = DriveSchoolDetialLevel1Labels();
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    driveSchoolDetialLevel1Labels.desc = desc;
  }
  final String? icon = jsonConvert.convert<String>(json['icon']);
  if (icon != null) {
    driveSchoolDetialLevel1Labels.icon = icon;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    driveSchoolDetialLevel1Labels.title = title;
  }
  return driveSchoolDetialLevel1Labels;
}

Map<String, dynamic> $DriveSchoolDetialLevel1LabelsToJson(
    DriveSchoolDetialLevel1Labels entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['desc'] = entity.desc;
  data['icon'] = entity.icon;
  data['title'] = entity.title;
  return data;
}

extension DriveSchoolDetialLevel1LabelsExtension on DriveSchoolDetialLevel1Labels {
  DriveSchoolDetialLevel1Labels copyWith({
    String? desc,
    String? icon,
    String? title,
  }) {
    return DriveSchoolDetialLevel1Labels()
      ..desc = desc ?? this.desc
      ..icon = icon ?? this.icon
      ..title = title ?? this.title;
  }
}

DriveSchoolDetialLevel2Labels $DriveSchoolDetialLevel2LabelsFromJson(
    Map<String, dynamic> json) {
  final DriveSchoolDetialLevel2Labels driveSchoolDetialLevel2Labels = DriveSchoolDetialLevel2Labels();
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    driveSchoolDetialLevel2Labels.desc = desc;
  }
  final String? icon = jsonConvert.convert<String>(json['icon']);
  if (icon != null) {
    driveSchoolDetialLevel2Labels.icon = icon;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    driveSchoolDetialLevel2Labels.title = title;
  }
  return driveSchoolDetialLevel2Labels;
}

Map<String, dynamic> $DriveSchoolDetialLevel2LabelsToJson(
    DriveSchoolDetialLevel2Labels entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['desc'] = entity.desc;
  data['icon'] = entity.icon;
  data['title'] = entity.title;
  return data;
}

extension DriveSchoolDetialLevel2LabelsExtension on DriveSchoolDetialLevel2Labels {
  DriveSchoolDetialLevel2Labels copyWith({
    String? desc,
    String? icon,
    String? title,
  }) {
    return DriveSchoolDetialLevel2Labels()
      ..desc = desc ?? this.desc
      ..icon = icon ?? this.icon
      ..title = title ?? this.title;
  }
}

DriveSchoolDetialNearestField $DriveSchoolDetialNearestFieldFromJson(
    Map<String, dynamic> json) {
  final DriveSchoolDetialNearestField driveSchoolDetialNearestField = DriveSchoolDetialNearestField();
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    driveSchoolDetialNearestField.address = address;
  }
  final String? countText = jsonConvert.convert<String>(json['countText']);
  if (countText != null) {
    driveSchoolDetialNearestField.countText = countText;
  }
  final dynamic distanceText = json['distanceText'];
  if (distanceText != null) {
    driveSchoolDetialNearestField.distanceText = distanceText;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    driveSchoolDetialNearestField.id = id;
  }
  final double? latitude = jsonConvert.convert<double>(json['latitude']);
  if (latitude != null) {
    driveSchoolDetialNearestField.latitude = latitude;
  }
  final double? longitude = jsonConvert.convert<double>(json['longitude']);
  if (longitude != null) {
    driveSchoolDetialNearestField.longitude = longitude;
  }
  final dynamic timeDurationText = json['timeDurationText'];
  if (timeDurationText != null) {
    driveSchoolDetialNearestField.timeDurationText = timeDurationText;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    driveSchoolDetialNearestField.title = title;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    driveSchoolDetialNearestField.type = type;
  }
  return driveSchoolDetialNearestField;
}

Map<String, dynamic> $DriveSchoolDetialNearestFieldToJson(
    DriveSchoolDetialNearestField entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['address'] = entity.address;
  data['countText'] = entity.countText;
  data['distanceText'] = entity.distanceText;
  data['id'] = entity.id;
  data['latitude'] = entity.latitude;
  data['longitude'] = entity.longitude;
  data['timeDurationText'] = entity.timeDurationText;
  data['title'] = entity.title;
  data['type'] = entity.type;
  return data;
}

extension DriveSchoolDetialNearestFieldExtension on DriveSchoolDetialNearestField {
  DriveSchoolDetialNearestField copyWith({
    String? address,
    String? countText,
    dynamic distanceText,
    int? id,
    double? latitude,
    double? longitude,
    dynamic timeDurationText,
    String? title,
    String? type,
  }) {
    return DriveSchoolDetialNearestField()
      ..address = address ?? this.address
      ..countText = countText ?? this.countText
      ..distanceText = distanceText ?? this.distanceText
      ..id = id ?? this.id
      ..latitude = latitude ?? this.latitude
      ..longitude = longitude ?? this.longitude
      ..timeDurationText = timeDurationText ?? this.timeDurationText
      ..title = title ?? this.title
      ..type = type ?? this.type;
  }
}

DriveSchoolDetialPrivilegeList $DriveSchoolDetialPrivilegeListFromJson(
    Map<String, dynamic> json) {
  final DriveSchoolDetialPrivilegeList driveSchoolDetialPrivilegeList = DriveSchoolDetialPrivilegeList();
  final String? icon = jsonConvert.convert<String>(json['icon']);
  if (icon != null) {
    driveSchoolDetialPrivilegeList.icon = icon;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    driveSchoolDetialPrivilegeList.title = title;
  }
  return driveSchoolDetialPrivilegeList;
}

Map<String, dynamic> $DriveSchoolDetialPrivilegeListToJson(
    DriveSchoolDetialPrivilegeList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['icon'] = entity.icon;
  data['title'] = entity.title;
  return data;
}

extension DriveSchoolDetialPrivilegeListExtension on DriveSchoolDetialPrivilegeList {
  DriveSchoolDetialPrivilegeList copyWith({
    String? icon,
    String? title,
  }) {
    return DriveSchoolDetialPrivilegeList()
      ..icon = icon ?? this.icon
      ..title = title ?? this.title;
  }
}

DriveSchoolDetialRank $DriveSchoolDetialRankFromJson(
    Map<String, dynamic> json) {
  final DriveSchoolDetialRank driveSchoolDetialRank = DriveSchoolDetialRank();
  final String? rank = jsonConvert.convert<String>(json['rank']);
  if (rank != null) {
    driveSchoolDetialRank.rank = rank;
  }
  final int? sortType = jsonConvert.convert<int>(json['sortType']);
  if (sortType != null) {
    driveSchoolDetialRank.sortType = sortType;
  }
  return driveSchoolDetialRank;
}

Map<String, dynamic> $DriveSchoolDetialRankToJson(
    DriveSchoolDetialRank entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['rank'] = entity.rank;
  data['sortType'] = entity.sortType;
  return data;
}

extension DriveSchoolDetialRankExtension on DriveSchoolDetialRank {
  DriveSchoolDetialRank copyWith({
    String? rank,
    int? sortType,
  }) {
    return DriveSchoolDetialRank()
      ..rank = rank ?? this.rank
      ..sortType = sortType ?? this.sortType;
  }
}

DriveSchoolDetialRankCoachList $DriveSchoolDetialRankCoachListFromJson(
    Map<String, dynamic> json) {
  final DriveSchoolDetialRankCoachList driveSchoolDetialRankCoachList = DriveSchoolDetialRankCoachList();
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    driveSchoolDetialRankCoachList.avatar = avatar;
  }
  final String? bkIcon = jsonConvert.convert<String>(json['bkIcon']);
  if (bkIcon != null) {
    driveSchoolDetialRankCoachList.bkIcon = bkIcon;
  }
  final int? coachId = jsonConvert.convert<int>(json['coachId']);
  if (coachId != null) {
    driveSchoolDetialRankCoachList.coachId = coachId;
  }
  final int? goldCoach = jsonConvert.convert<int>(json['goldCoach']);
  if (goldCoach != null) {
    driveSchoolDetialRankCoachList.goldCoach = goldCoach;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    driveSchoolDetialRankCoachList.name = name;
  }
  final dynamic rankDesc = json['rankDesc'];
  if (rankDesc != null) {
    driveSchoolDetialRankCoachList.rankDesc = rankDesc;
  }
  final int? rankNum = jsonConvert.convert<int>(json['rankNum']);
  if (rankNum != null) {
    driveSchoolDetialRankCoachList.rankNum = rankNum;
  }
  final int? rankScore = jsonConvert.convert<int>(json['rankScore']);
  if (rankScore != null) {
    driveSchoolDetialRankCoachList.rankScore = rankScore;
  }
  final int? score = jsonConvert.convert<int>(json['score']);
  if (score != null) {
    driveSchoolDetialRankCoachList.score = score;
  }
  final int? studentCount = jsonConvert.convert<int>(json['studentCount']);
  if (studentCount != null) {
    driveSchoolDetialRankCoachList.studentCount = studentCount;
  }
  final String? tag = jsonConvert.convert<String>(json['tag']);
  if (tag != null) {
    driveSchoolDetialRankCoachList.tag = tag;
  }
  final String? tagIcon = jsonConvert.convert<String>(json['tagIcon']);
  if (tagIcon != null) {
    driveSchoolDetialRankCoachList.tagIcon = tagIcon;
  }
  final int? teachAge = jsonConvert.convert<int>(json['teachAge']);
  if (teachAge != null) {
    driveSchoolDetialRankCoachList.teachAge = teachAge;
  }
  return driveSchoolDetialRankCoachList;
}

Map<String, dynamic> $DriveSchoolDetialRankCoachListToJson(
    DriveSchoolDetialRankCoachList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['avatar'] = entity.avatar;
  data['bkIcon'] = entity.bkIcon;
  data['coachId'] = entity.coachId;
  data['goldCoach'] = entity.goldCoach;
  data['name'] = entity.name;
  data['rankDesc'] = entity.rankDesc;
  data['rankNum'] = entity.rankNum;
  data['rankScore'] = entity.rankScore;
  data['score'] = entity.score;
  data['studentCount'] = entity.studentCount;
  data['tag'] = entity.tag;
  data['tagIcon'] = entity.tagIcon;
  data['teachAge'] = entity.teachAge;
  return data;
}

extension DriveSchoolDetialRankCoachListExtension on DriveSchoolDetialRankCoachList {
  DriveSchoolDetialRankCoachList copyWith({
    String? avatar,
    String? bkIcon,
    int? coachId,
    int? goldCoach,
    String? name,
    dynamic rankDesc,
    int? rankNum,
    int? rankScore,
    int? score,
    int? studentCount,
    String? tag,
    String? tagIcon,
    int? teachAge,
  }) {
    return DriveSchoolDetialRankCoachList()
      ..avatar = avatar ?? this.avatar
      ..bkIcon = bkIcon ?? this.bkIcon
      ..coachId = coachId ?? this.coachId
      ..goldCoach = goldCoach ?? this.goldCoach
      ..name = name ?? this.name
      ..rankDesc = rankDesc ?? this.rankDesc
      ..rankNum = rankNum ?? this.rankNum
      ..rankScore = rankScore ?? this.rankScore
      ..score = score ?? this.score
      ..studentCount = studentCount ?? this.studentCount
      ..tag = tag ?? this.tag
      ..tagIcon = tagIcon ?? this.tagIcon
      ..teachAge = teachAge ?? this.teachAge;
  }
}