class SearchTypeBean {
  SearchTypeBean({
    this.busTeachTypeList,
    this.countyList,
    this.courseClassList,
    this.distanceSearchList,
    this.labelList,
    this.marketTypeList,
    this.miniCarTeachTypeList,
    this.motoTeachTypeList,
    this.otherTeachTypeList,
    this.teachTypeDetailList,
    this.truckTeachTypeList,
  });

  SearchTypeBean.fromJson(dynamic json) {
    if (json['busTeachTypeList'] != null) {
      busTeachTypeList = [];
      json['busTeachTypeList'].forEach((v) {
        busTeachTypeList?.add(BusTeachTypeList.fromJson(v));
      });
    }
    if (json['countyList'] != null) {
      countyList = [];
      json['countyList'].forEach((v) {
        countyList?.add(CountyList.fromJson(v));
      });
    }
    if (json['courseClassList'] != null) {
      courseClassList = [];
      json['courseClassList'].forEach((v) {
        courseClassList?.add(CourseClassList.fromJson(v));
      });
    }
    if (json['distanceSearchList'] != null) {
      distanceSearchList = [];
      json['distanceSearchList'].forEach((v) {
        distanceSearchList?.add(DistanceSearchList.fromJson(v));
      });
    }
    if (json['labelList'] != null) {
      labelList = [];
      json['labelList'].forEach((v) {
        labelList?.add(LabelList.fromJson(v));
      });
    }
    if (json['marketTypeList'] != null) {
      marketTypeList = [];
      json['marketTypeList'].forEach((v) {
        marketTypeList?.add(MarketTypeList.fromJson(v));
      });
    }
    if (json['miniCarTeachTypeList'] != null) {
      miniCarTeachTypeList = [];
      json['miniCarTeachTypeList'].forEach((v) {
        miniCarTeachTypeList?.add(MiniCarTeachTypeList.fromJson(v));
      });
    }
    if (json['motoTeachTypeList'] != null) {
      motoTeachTypeList = [];
      json['motoTeachTypeList'].forEach((v) {
        motoTeachTypeList?.add(MotoTeachTypeList.fromJson(v));
      });
    }
    if (json['otherTeachTypeList'] != null) {
      otherTeachTypeList = [];
      json['otherTeachTypeList'].forEach((v) {
        otherTeachTypeList?.add(OtherTeachTypeList.fromJson(v));
      });
    }
    if (json['teachTypeDetailList'] != null) {
      teachTypeDetailList = [];
      json['teachTypeDetailList'].forEach((v) {
        teachTypeDetailList?.add(TeachTypeDetailList.fromJson(v));
      });
    }
    if (json['truckTeachTypeList'] != null) {
      truckTeachTypeList = [];
      json['truckTeachTypeList'].forEach((v) {
        truckTeachTypeList?.add(TruckTeachTypeList.fromJson(v));
      });
    }
  }
  List<BusTeachTypeList>? busTeachTypeList;
  List<CountyList>? countyList;
  List<CourseClassList>? courseClassList;
  List<DistanceSearchList>? distanceSearchList;
  List<LabelList>? labelList;
  List<MarketTypeList>? marketTypeList;
  List<MiniCarTeachTypeList>? miniCarTeachTypeList;
  List<MotoTeachTypeList>? motoTeachTypeList;
  List<OtherTeachTypeList>? otherTeachTypeList;
  List<TeachTypeDetailList>? teachTypeDetailList;
  List<TruckTeachTypeList>? truckTeachTypeList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (busTeachTypeList != null) {
      map['busTeachTypeList'] =
          busTeachTypeList?.map((v) => v.toJson()).toList();
    }
    if (countyList != null) {
      map['countyList'] = countyList?.map((v) => v.toJson()).toList();
    }
    if (courseClassList != null) {
      map['courseClassList'] = courseClassList?.map((v) => v.toJson()).toList();
    }
    if (distanceSearchList != null) {
      map['distanceSearchList'] =
          distanceSearchList?.map((v) => v.toJson()).toList();
    }
    if (labelList != null) {
      map['labelList'] = labelList?.map((v) => v.toJson()).toList();
    }
    if (marketTypeList != null) {
      map['marketTypeList'] = marketTypeList?.map((v) => v.toJson()).toList();
    }
    if (miniCarTeachTypeList != null) {
      map['miniCarTeachTypeList'] =
          miniCarTeachTypeList?.map((v) => v.toJson()).toList();
    }
    if (motoTeachTypeList != null) {
      map['motoTeachTypeList'] =
          motoTeachTypeList?.map((v) => v.toJson()).toList();
    }
    if (otherTeachTypeList != null) {
      map['otherTeachTypeList'] =
          otherTeachTypeList?.map((v) => v.toJson()).toList();
    }
    if (teachTypeDetailList != null) {
      map['teachTypeDetailList'] =
          teachTypeDetailList?.map((v) => v.toJson()).toList();
    }
    if (truckTeachTypeList != null) {
      map['truckTeachTypeList'] =
          truckTeachTypeList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class TruckTeachTypeList {
  TruckTeachTypeList({
    this.enable,
    this.key,
    this.value,
  });

  TruckTeachTypeList.fromJson(dynamic json) {
    enable = json['enable'];
    key = json['key'];
    value = json['value'];
  }
  bool? enable;
  String? key;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['enable'] = enable;
    map['key'] = key;
    map['value'] = value;
    return map;
  }
}

class TeachTypeDetailList {
  TeachTypeDetailList({
    this.enable,
    this.key,
    this.value,
  });

  TeachTypeDetailList.fromJson(dynamic json) {
    enable = json['enable'];
    key = json['key'];
    value = json['value'];
  }
  bool? enable;
  String? key;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['enable'] = enable;
    map['key'] = key;
    map['value'] = value;
    return map;
  }
}

class OtherTeachTypeList {
  OtherTeachTypeList({
    this.enable,
    this.key,
    this.value,
  });

  OtherTeachTypeList.fromJson(dynamic json) {
    enable = json['enable'];
    key = json['key'];
    value = json['value'];
  }
  bool? enable;
  String? key;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['enable'] = enable;
    map['key'] = key;
    map['value'] = value;
    return map;
  }
}

class MotoTeachTypeList {
  MotoTeachTypeList({
    this.enable,
    this.key,
    this.value,
  });

  MotoTeachTypeList.fromJson(dynamic json) {
    enable = json['enable'];
    key = json['key'];
    value = json['value'];
  }
  bool? enable;
  String? key;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['enable'] = enable;
    map['key'] = key;
    map['value'] = value;
    return map;
  }
}

class MiniCarTeachTypeList {
  MiniCarTeachTypeList({
    this.enable,
    this.key,
    this.value,
  });

  MiniCarTeachTypeList.fromJson(dynamic json) {
    enable = json['enable'];
    key = json['key'];
    value = json['value'];
  }
  bool? enable;
  String? key;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['enable'] = enable;
    map['key'] = key;
    map['value'] = value;
    return map;
  }
}

class MarketTypeList {
  MarketTypeList({
    this.code,
    this.defaultPrivilege,
    this.disPlay,
    this.icon,
    this.name,
    this.remainingTime,
  });

  MarketTypeList.fromJson(dynamic json) {
    code = json['code'];
    defaultPrivilege = json['defaultPrivilege'];
    disPlay = json['disPlay'];
    icon = json['icon'];
    name = json['name'];
    remainingTime = json['remainingTime'];
  }
  int? code;
  String? defaultPrivilege;
  bool? disPlay;
  String? icon;
  String? name;
  bool? remainingTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['defaultPrivilege'] = defaultPrivilege;
    map['disPlay'] = disPlay;
    map['icon'] = icon;
    map['name'] = name;
    map['remainingTime'] = remainingTime;
    return map;
  }
}

class LabelList {
  LabelList({
    this.disPlay,
    this.iconUrl,
    this.label,
    this.labelDetail,
  });

  LabelList.fromJson(dynamic json) {
    disPlay = json['disPlay'];
    iconUrl = json['iconUrl'];
    label = json['label'];
    labelDetail = json['labelDetail'];
  }
  bool? disPlay;
  String? iconUrl;
  int? label;
  String? labelDetail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['disPlay'] = disPlay;
    map['iconUrl'] = iconUrl;
    map['label'] = label;
    map['labelDetail'] = labelDetail;
    return map;
  }
}

class DistanceSearchList {
  DistanceSearchList({
    this.enable,
    this.key,
    this.value,
  });

  DistanceSearchList.fromJson(dynamic json) {
    enable = json['enable'];
    key = json['key'];
    value = json['value'];
  }
  bool? enable;
  String? key;
  int? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['enable'] = enable;
    map['key'] = key;
    map['value'] = value;
    return map;
  }
}

class CourseClassList {
  CourseClassList({
    this.code,
    this.description,
    this.name,
  });

  CourseClassList.fromJson(dynamic json) {
    code = json['code'];
    description = json['description'];
    name = json['name'];
  }
  int? code;
  String? description;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['description'] = description;
    map['name'] = name;
    return map;
  }
}

class CountyList {
  CountyList({
    this.cityCode,
    this.cityName,
    this.count,
  });

  CountyList.fromJson(dynamic json) {
    cityCode = json['cityCode'];
    cityName = json['cityName'];
    count = json['count'];
  }
  String? cityCode;
  String? cityName;
  int? count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cityCode'] = cityCode;
    map['cityName'] = cityName;
    map['count'] = count;
    return map;
  }
}

class BusTeachTypeList {
  BusTeachTypeList({
    this.enable,
    this.key,
    this.value,
  });

  BusTeachTypeList.fromJson(dynamic json) {
    enable = json['enable'];
    key = json['key'];
    value = json['value'];
  }
  bool? enable;
  String? key;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['enable'] = enable;
    map['key'] = key;
    map['value'] = value;
    return map;
  }
}
