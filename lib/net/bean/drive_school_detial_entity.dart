import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/drive_school_detial_entity.g.dart';
import 'dart:convert';
export 'package:flutter_actions/generated/json/drive_school_detial_entity.g.dart';

@JsonSerializable()
class DriveSchoolDetialEntity {
	String? address = '';
	dynamic bannerActivity;
	List<DriveSchoolDetialBrandPrivileges>? brandPrivileges = [];
	String? cityCode = '';
	String? cityName = '';
	int? coachCount = 0;
	bool? cooperator = false;
	int? courseCount = 0;
	String? courseLeadAdvertiseUrl = '';
	List<DriveSchoolDetialCourses>? courses = [];
	List<DriveSchoolDetialCoverGroupList>? coverGroupList = [];
	List<DriveSchoolDetialCoverList>? coverList = [];
	DriveSchoolDetialDetailDto? detailDto;
	DriveSchoolDetialDianping? dianping;
	List<DriveSchoolDetialDianpingCommentCountDataList>? dianpingCommentCountDataList = [];
	List<DriveSchoolDetialDianpingTagList>? dianpingTagList = [];
	int? displayType = 0;
	int? fieldCount = 0;
	List<DriveSchoolDetialFieldList>? fieldList = [];
	bool? hasShuttleBus = false;
	int? id = 0;
	bool? inPass = false;
	bool? intelligent = false;
	dynamic intelligentImageList;
	dynamic intelligentPrivileges;
	bool? isBrand = false;
	bool? isFavor = false;
	DriveSchoolDetialJiaxiaoPhone? jiaxiaoPhone;
	double? latitude;
	dynamic learningCarSubTitle;
	List<DriveSchoolDetialLevel1Labels>? level1Labels = [];
	List<DriveSchoolDetialLevel2Labels>? level2Labels = [];
	double? longitude;
	dynamic midActivity;
	String? name = '';
	DriveSchoolDetialNearestField? nearestField;
	dynamic newShuttleBusList;
	dynamic oneByOneLeadH5Url;
	dynamic phoneCallSubTitle;
	List<String>? privilegeIcons = [];
	List<DriveSchoolDetialPrivilegeList>? privilegeList = [];
	DriveSchoolDetialRank? rank;
	int? rankCoachCount = 0;
	List<DriveSchoolDetialRankCoachList>? rankCoachList = [];
	String? schoolCode = '';
	int? showType = 0;
	dynamic shuttleBusList;
	bool? studentRegistration = false;
	int? targetInquiryType = 0;
	bool? threeImageHorizontal = false;
	String? trainFieldLeadAdvertiseUrl = '';
	int? tripRefreshIntvl = 0;
	String? typeLabel = '';
	int? vipLevel = 0;
	int? vipYear = 0;
	dynamic wechat;

	DriveSchoolDetialEntity();

	factory DriveSchoolDetialEntity.fromJson(Map<String, dynamic> json) => $DriveSchoolDetialEntityFromJson(json);

	Map<String, dynamic> toJson() => $DriveSchoolDetialEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DriveSchoolDetialBrandPrivileges {
	String? desc = '';
	String? icon = '';
	String? title = '';

	DriveSchoolDetialBrandPrivileges();

	factory DriveSchoolDetialBrandPrivileges.fromJson(Map<String, dynamic> json) => $DriveSchoolDetialBrandPrivilegesFromJson(json);

	Map<String, dynamic> toJson() => $DriveSchoolDetialBrandPrivilegesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DriveSchoolDetialCourses {
	String? btnSubText = '';
	String? btnText = '';
	bool? concessionalCourse = false;
	String? courseClassName = '';
	int? id = 0;
	String? image = '';
	String? name = '';
	int? originPrice = 0;
	int? price = 0;
	int? storePrice = 0;
	String? tags = '';
	String? type = '';

	DriveSchoolDetialCourses();

	factory DriveSchoolDetialCourses.fromJson(Map<String, dynamic> json) => $DriveSchoolDetialCoursesFromJson(json);

	Map<String, dynamic> toJson() => $DriveSchoolDetialCoursesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DriveSchoolDetialCoverGroupList {
	List<DriveSchoolDetialCoverGroupListCoverList>? coverList = [];
	String? name = '';
	int? type = 0;

	DriveSchoolDetialCoverGroupList();

	factory DriveSchoolDetialCoverGroupList.fromJson(Map<String, dynamic> json) => $DriveSchoolDetialCoverGroupListFromJson(json);

	Map<String, dynamic> toJson() => $DriveSchoolDetialCoverGroupListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DriveSchoolDetialCoverGroupListCoverList {
	String? imageUrl = '';
	int? positionNum = 0;
	bool? video = false;
	int? videoHeight = 0;
	String? videoUrl = '';
	int? videoWidth = 0;
	bool? vr = false;
	dynamic vrCoverUrl;
	dynamic vrViewUrl;

	DriveSchoolDetialCoverGroupListCoverList();

	factory DriveSchoolDetialCoverGroupListCoverList.fromJson(Map<String, dynamic> json) => $DriveSchoolDetialCoverGroupListCoverListFromJson(json);

	Map<String, dynamic> toJson() => $DriveSchoolDetialCoverGroupListCoverListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DriveSchoolDetialCoverList {
	String? imageUrl = '';
	int? positionNum = 0;
	bool? video = false;
	int? videoHeight = 0;
	String? videoUrl = '';
	int? videoWidth = 0;
	bool? vr = false;
	String? vrCoverUrl = '';
	String? vrViewUrl = '';

	DriveSchoolDetialCoverList();

	factory DriveSchoolDetialCoverList.fromJson(Map<String, dynamic> json) => $DriveSchoolDetialCoverListFromJson(json);

	Map<String, dynamic> toJson() => $DriveSchoolDetialCoverListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DriveSchoolDetialDetailDto {
	int? coachCount = 0;
	String? queryUrl = '';
	String? registerDate = '';
	int? studentCount = 0;

	DriveSchoolDetialDetailDto();

	factory DriveSchoolDetialDetailDto.fromJson(Map<String, dynamic> json) => $DriveSchoolDetialDetailDtoFromJson(json);

	Map<String, dynamic> toJson() => $DriveSchoolDetialDetailDtoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DriveSchoolDetialDianping {
	int? count = 0;
	String? desc = '';
	double? score;

	DriveSchoolDetialDianping();

	factory DriveSchoolDetialDianping.fromJson(Map<String, dynamic> json) => $DriveSchoolDetialDianpingFromJson(json);

	Map<String, dynamic> toJson() => $DriveSchoolDetialDianpingToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DriveSchoolDetialDianpingCommentCountDataList {
	String? cname = '';
	int? count = 0;
	String? key = '';
	int? ratio = 0;
	String? type = '';

	DriveSchoolDetialDianpingCommentCountDataList();

	factory DriveSchoolDetialDianpingCommentCountDataList.fromJson(Map<String, dynamic> json) => $DriveSchoolDetialDianpingCommentCountDataListFromJson(json);

	Map<String, dynamic> toJson() => $DriveSchoolDetialDianpingCommentCountDataListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DriveSchoolDetialDianpingTagList {
	String? cname = '';
	int? count = 0;
	String? key = '';

	DriveSchoolDetialDianpingTagList();

	factory DriveSchoolDetialDianpingTagList.fromJson(Map<String, dynamic> json) => $DriveSchoolDetialDianpingTagListFromJson(json);

	Map<String, dynamic> toJson() => $DriveSchoolDetialDianpingTagListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DriveSchoolDetialFieldList {
	String? address = '';
	String? distance = '';
	List<dynamic>? iconList = [];
	int? id = 0;
	String? image = '';
	dynamic imageIcon;
	double? latitude;
	double? longitude;
	String? name = '';
	String? subjects = '';
	dynamic tag;
	dynamic timeDurationText;
	int? totalCount = 0;
	String? type = '';

	DriveSchoolDetialFieldList();

	factory DriveSchoolDetialFieldList.fromJson(Map<String, dynamic> json) => $DriveSchoolDetialFieldListFromJson(json);

	Map<String, dynamic> toJson() => $DriveSchoolDetialFieldListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DriveSchoolDetialJiaxiaoPhone {
	String? complaintPhone = '';
	int? phoneStatus = 0;
	String? privatePhone = '';

	DriveSchoolDetialJiaxiaoPhone();

	factory DriveSchoolDetialJiaxiaoPhone.fromJson(Map<String, dynamic> json) => $DriveSchoolDetialJiaxiaoPhoneFromJson(json);

	Map<String, dynamic> toJson() => $DriveSchoolDetialJiaxiaoPhoneToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DriveSchoolDetialLevel1Labels {
	String? desc = '';
	String? icon = '';
	String? title = '';

	DriveSchoolDetialLevel1Labels();

	factory DriveSchoolDetialLevel1Labels.fromJson(Map<String, dynamic> json) => $DriveSchoolDetialLevel1LabelsFromJson(json);

	Map<String, dynamic> toJson() => $DriveSchoolDetialLevel1LabelsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DriveSchoolDetialLevel2Labels {
	String? desc = '';
	String? icon = '';
	String? title = '';

	DriveSchoolDetialLevel2Labels();

	factory DriveSchoolDetialLevel2Labels.fromJson(Map<String, dynamic> json) => $DriveSchoolDetialLevel2LabelsFromJson(json);

	Map<String, dynamic> toJson() => $DriveSchoolDetialLevel2LabelsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DriveSchoolDetialNearestField {
	String? address = '';
	String? countText = '';
	dynamic distanceText;
	int? id = 0;
	double? latitude;
	double? longitude;
	dynamic timeDurationText;
	String? title = '';
	String? type = '';

	DriveSchoolDetialNearestField();

	factory DriveSchoolDetialNearestField.fromJson(Map<String, dynamic> json) => $DriveSchoolDetialNearestFieldFromJson(json);

	Map<String, dynamic> toJson() => $DriveSchoolDetialNearestFieldToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DriveSchoolDetialPrivilegeList {
	String? icon = '';
	String? title = '';

	DriveSchoolDetialPrivilegeList();

	factory DriveSchoolDetialPrivilegeList.fromJson(Map<String, dynamic> json) => $DriveSchoolDetialPrivilegeListFromJson(json);

	Map<String, dynamic> toJson() => $DriveSchoolDetialPrivilegeListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DriveSchoolDetialRank {
	String? rank = '';
	int? sortType = 0;

	DriveSchoolDetialRank();

	factory DriveSchoolDetialRank.fromJson(Map<String, dynamic> json) => $DriveSchoolDetialRankFromJson(json);

	Map<String, dynamic> toJson() => $DriveSchoolDetialRankToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DriveSchoolDetialRankCoachList {
	String? avatar = '';
	String? bkIcon = '';
	int? coachId = 0;
	int? goldCoach = 0;
	String? name = '';
	dynamic rankDesc;
	int? rankNum = 0;
	int? rankScore = 0;
	int? score = 0;
	int? studentCount = 0;
	String? tag = '';
	String? tagIcon = '';
	int? teachAge = 0;

	DriveSchoolDetialRankCoachList();

	factory DriveSchoolDetialRankCoachList.fromJson(Map<String, dynamic> json) => $DriveSchoolDetialRankCoachListFromJson(json);

	Map<String, dynamic> toJson() => $DriveSchoolDetialRankCoachListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}