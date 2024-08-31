import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/dian_ping_prew_entity.dart';

DianPingPrewEntity $DianPingPrewEntityFromJson(Map<String, dynamic> json) {
  final DianPingPrewEntity dianPingPrewEntity = DianPingPrewEntity();
  final List<DianPingPrewItemList>? itemList = (json['itemList'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<DianPingPrewItemList>(e) as DianPingPrewItemList)
      .toList();
  if (itemList != null) {
    dianPingPrewEntity.itemList = itemList;
  }
  return dianPingPrewEntity;
}

Map<String, dynamic> $DianPingPrewEntityToJson(DianPingPrewEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  return data;
}

extension DianPingPrewEntityExtension on DianPingPrewEntity {
  DianPingPrewEntity copyWith({
    List<DianPingPrewItemList>? itemList,
  }) {
    return DianPingPrewEntity()
      ..itemList = itemList ?? this.itemList;
  }
}

DianPingPrewItemList $DianPingPrewItemListFromJson(Map<String, dynamic> json) {
  final DianPingPrewItemList dianPingPrewItemList = DianPingPrewItemList();
  final dynamic address = json['address'];
  if (address != null) {
    dianPingPrewItemList.address = address;
  }
  final DianPingPrewItemListAuthor? author = jsonConvert.convert<
      DianPingPrewItemListAuthor>(json['author']);
  if (author != null) {
    dianPingPrewItemList.author = author;
  }
  final String? authorId = jsonConvert.convert<String>(json['authorId']);
  if (authorId != null) {
    dianPingPrewItemList.authorId = authorId;
  }
  final bool? buildJiakaoVip = jsonConvert.convert<bool>(
      json['buildJiakaoVip']);
  if (buildJiakaoVip != null) {
    dianPingPrewItemList.buildJiakaoVip = buildJiakaoVip;
  }
  final int? complainStatus = jsonConvert.convert<int>(json['complainStatus']);
  if (complainStatus != null) {
    dianPingPrewItemList.complainStatus = complainStatus;
  }
  final String? content = jsonConvert.convert<String>(json['content']);
  if (content != null) {
    dianPingPrewItemList.content = content;
  }
  final int? costTime = jsonConvert.convert<int>(json['costTime']);
  if (costTime != null) {
    dianPingPrewItemList.costTime = costTime;
  }
  final int? createTime = jsonConvert.convert<int>(json['createTime']);
  if (createTime != null) {
    dianPingPrewItemList.createTime = createTime;
  }
  final int? credibility = jsonConvert.convert<int>(json['credibility']);
  if (credibility != null) {
    dianPingPrewItemList.credibility = credibility;
  }
  final dynamic credibilityUpdateTime = json['credibilityUpdateTime'];
  if (credibilityUpdateTime != null) {
    dianPingPrewItemList.credibilityUpdateTime = credibilityUpdateTime;
  }
  final int? dianpingId = jsonConvert.convert<int>(json['dianpingId']);
  if (dianpingId != null) {
    dianPingPrewItemList.dianpingId = dianpingId;
  }
  final String? extraData = jsonConvert.convert<String>(json['extraData']);
  if (extraData != null) {
    dianPingPrewItemList.extraData = extraData;
  }
  final int? floor = jsonConvert.convert<int>(json['floor']);
  if (floor != null) {
    dianPingPrewItemList.floor = floor;
  }
  final String? floorName = jsonConvert.convert<String>(json['floorName']);
  if (floorName != null) {
    dianPingPrewItemList.floorName = floorName;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    dianPingPrewItemList.id = id;
  }
  final int? imageCount = jsonConvert.convert<int>(json['imageCount']);
  if (imageCount != null) {
    dianPingPrewItemList.imageCount = imageCount;
  }
  final List<
      DianPingPrewItemListImageList>? imageList = (json['imageList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<DianPingPrewItemListImageList>(
          e) as DianPingPrewItemListImageList).toList();
  if (imageList != null) {
    dianPingPrewItemList.imageList = imageList;
  }
  final String? ipLocation = jsonConvert.convert<String>(json['ipLocation']);
  if (ipLocation != null) {
    dianPingPrewItemList.ipLocation = ipLocation;
  }
  final bool? jinghua = jsonConvert.convert<bool>(json['jinghua']);
  if (jinghua != null) {
    dianPingPrewItemList.jinghua = jinghua;
  }
  final dynamic location = json['location'];
  if (location != null) {
    dianPingPrewItemList.location = location;
  }
  final dynamic originalCredibility = json['originalCredibility'];
  if (originalCredibility != null) {
    dianPingPrewItemList.originalCredibility = originalCredibility;
  }
  final String? placeToken = jsonConvert.convert<String>(json['placeToken']);
  if (placeToken != null) {
    dianPingPrewItemList.placeToken = placeToken;
  }
  final dynamic quote = json['quote'];
  if (quote != null) {
    dianPingPrewItemList.quote = quote;
  }
  final int? replyCount = jsonConvert.convert<int>(json['replyCount']);
  if (replyCount != null) {
    dianPingPrewItemList.replyCount = replyCount;
  }
  final int? replyId = jsonConvert.convert<int>(json['replyId']);
  if (replyId != null) {
    dianPingPrewItemList.replyId = replyId;
  }
  final int? score = jsonConvert.convert<int>(json['score']);
  if (score != null) {
    dianPingPrewItemList.score = score;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    dianPingPrewItemList.status = status;
  }
  final String? topic = jsonConvert.convert<String>(json['topic']);
  if (topic != null) {
    dianPingPrewItemList.topic = topic;
  }
  final String? version = jsonConvert.convert<String>(json['version']);
  if (version != null) {
    dianPingPrewItemList.version = version;
  }
  final int? zanCount = jsonConvert.convert<int>(json['zanCount']);
  if (zanCount != null) {
    dianPingPrewItemList.zanCount = zanCount;
  }
  final bool? zanable = jsonConvert.convert<bool>(json['zanable']);
  if (zanable != null) {
    dianPingPrewItemList.zanable = zanable;
  }
  return dianPingPrewItemList;
}

Map<String, dynamic> $DianPingPrewItemListToJson(DianPingPrewItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['address'] = entity.address;
  data['author'] = entity.author?.toJson();
  data['authorId'] = entity.authorId;
  data['buildJiakaoVip'] = entity.buildJiakaoVip;
  data['complainStatus'] = entity.complainStatus;
  data['content'] = entity.content;
  data['costTime'] = entity.costTime;
  data['createTime'] = entity.createTime;
  data['credibility'] = entity.credibility;
  data['credibilityUpdateTime'] = entity.credibilityUpdateTime;
  data['dianpingId'] = entity.dianpingId;
  data['extraData'] = entity.extraData;
  data['floor'] = entity.floor;
  data['floorName'] = entity.floorName;
  data['id'] = entity.id;
  data['imageCount'] = entity.imageCount;
  data['imageList'] = entity.imageList?.map((v) => v.toJson()).toList();
  data['ipLocation'] = entity.ipLocation;
  data['jinghua'] = entity.jinghua;
  data['location'] = entity.location;
  data['originalCredibility'] = entity.originalCredibility;
  data['placeToken'] = entity.placeToken;
  data['quote'] = entity.quote;
  data['replyCount'] = entity.replyCount;
  data['replyId'] = entity.replyId;
  data['score'] = entity.score;
  data['status'] = entity.status;
  data['topic'] = entity.topic;
  data['version'] = entity.version;
  data['zanCount'] = entity.zanCount;
  data['zanable'] = entity.zanable;
  return data;
}

extension DianPingPrewItemListExtension on DianPingPrewItemList {
  DianPingPrewItemList copyWith({
    dynamic address,
    DianPingPrewItemListAuthor? author,
    String? authorId,
    bool? buildJiakaoVip,
    int? complainStatus,
    String? content,
    int? costTime,
    int? createTime,
    int? credibility,
    dynamic credibilityUpdateTime,
    int? dianpingId,
    String? extraData,
    int? floor,
    String? floorName,
    int? id,
    int? imageCount,
    List<DianPingPrewItemListImageList>? imageList,
    String? ipLocation,
    bool? jinghua,
    dynamic location,
    dynamic originalCredibility,
    String? placeToken,
    dynamic quote,
    int? replyCount,
    int? replyId,
    int? score,
    int? status,
    String? topic,
    String? version,
    int? zanCount,
    bool? zanable,
  }) {
    return DianPingPrewItemList()
      ..address = address ?? this.address
      ..author = author ?? this.author
      ..authorId = authorId ?? this.authorId
      ..buildJiakaoVip = buildJiakaoVip ?? this.buildJiakaoVip
      ..complainStatus = complainStatus ?? this.complainStatus
      ..content = content ?? this.content
      ..costTime = costTime ?? this.costTime
      ..createTime = createTime ?? this.createTime
      ..credibility = credibility ?? this.credibility
      ..credibilityUpdateTime = credibilityUpdateTime ??
          this.credibilityUpdateTime
      ..dianpingId = dianpingId ?? this.dianpingId
      ..extraData = extraData ?? this.extraData
      ..floor = floor ?? this.floor
      ..floorName = floorName ?? this.floorName
      ..id = id ?? this.id
      ..imageCount = imageCount ?? this.imageCount
      ..imageList = imageList ?? this.imageList
      ..ipLocation = ipLocation ?? this.ipLocation
      ..jinghua = jinghua ?? this.jinghua
      ..location = location ?? this.location
      ..originalCredibility = originalCredibility ?? this.originalCredibility
      ..placeToken = placeToken ?? this.placeToken
      ..quote = quote ?? this.quote
      ..replyCount = replyCount ?? this.replyCount
      ..replyId = replyId ?? this.replyId
      ..score = score ?? this.score
      ..status = status ?? this.status
      ..topic = topic ?? this.topic
      ..version = version ?? this.version
      ..zanCount = zanCount ?? this.zanCount
      ..zanable = zanable ?? this.zanable;
  }
}

DianPingPrewItemListAuthor $DianPingPrewItemListAuthorFromJson(
    Map<String, dynamic> json) {
  final DianPingPrewItemListAuthor dianPingPrewItemListAuthor = DianPingPrewItemListAuthor();
  final bool? admin = jsonConvert.convert<bool>(json['admin']);
  if (admin != null) {
    dianPingPrewItemListAuthor.admin = admin;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    dianPingPrewItemListAuthor.avatar = avatar;
  }
  final bool? blacklist = jsonConvert.convert<bool>(json['blacklist']);
  if (blacklist != null) {
    dianPingPrewItemListAuthor.blacklist = blacklist;
  }
  final String? gender = jsonConvert.convert<String>(json['gender']);
  if (gender != null) {
    dianPingPrewItemListAuthor.gender = gender;
  }
  final bool? jiakaoVip = jsonConvert.convert<bool>(json['jiakaoVip']);
  if (jiakaoVip != null) {
    dianPingPrewItemListAuthor.jiakaoVip = jiakaoVip;
  }
  final dynamic jiakaoVipLogo = json['jiakaoVipLogo'];
  if (jiakaoVipLogo != null) {
    dianPingPrewItemListAuthor.jiakaoVipLogo = jiakaoVipLogo;
  }
  final String? mucangId = jsonConvert.convert<String>(json['mucangId']);
  if (mucangId != null) {
    dianPingPrewItemListAuthor.mucangId = mucangId;
  }
  final String? nickname = jsonConvert.convert<String>(json['nickname']);
  if (nickname != null) {
    dianPingPrewItemListAuthor.nickname = nickname;
  }
  return dianPingPrewItemListAuthor;
}

Map<String, dynamic> $DianPingPrewItemListAuthorToJson(
    DianPingPrewItemListAuthor entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['admin'] = entity.admin;
  data['avatar'] = entity.avatar;
  data['blacklist'] = entity.blacklist;
  data['gender'] = entity.gender;
  data['jiakaoVip'] = entity.jiakaoVip;
  data['jiakaoVipLogo'] = entity.jiakaoVipLogo;
  data['mucangId'] = entity.mucangId;
  data['nickname'] = entity.nickname;
  return data;
}

extension DianPingPrewItemListAuthorExtension on DianPingPrewItemListAuthor {
  DianPingPrewItemListAuthor copyWith({
    bool? admin,
    String? avatar,
    bool? blacklist,
    String? gender,
    bool? jiakaoVip,
    dynamic jiakaoVipLogo,
    String? mucangId,
    String? nickname,
  }) {
    return DianPingPrewItemListAuthor()
      ..admin = admin ?? this.admin
      ..avatar = avatar ?? this.avatar
      ..blacklist = blacklist ?? this.blacklist
      ..gender = gender ?? this.gender
      ..jiakaoVip = jiakaoVip ?? this.jiakaoVip
      ..jiakaoVipLogo = jiakaoVipLogo ?? this.jiakaoVipLogo
      ..mucangId = mucangId ?? this.mucangId
      ..nickname = nickname ?? this.nickname;
  }
}

DianPingPrewItemListImageList $DianPingPrewItemListImageListFromJson(
    Map<String, dynamic> json) {
  final DianPingPrewItemListImageList dianPingPrewItemListImageList = DianPingPrewItemListImageList();
  final int? contentLength = jsonConvert.convert<int>(json['contentLength']);
  if (contentLength != null) {
    dianPingPrewItemListImageList.contentLength = contentLength;
  }
  final int? height = jsonConvert.convert<int>(json['height']);
  if (height != null) {
    dianPingPrewItemListImageList.height = height;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    dianPingPrewItemListImageList.id = id;
  }
  final String? large = jsonConvert.convert<String>(json['large']);
  if (large != null) {
    dianPingPrewItemListImageList.large = large;
  }
  final String? small = jsonConvert.convert<String>(json['small']);
  if (small != null) {
    dianPingPrewItemListImageList.small = small;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    dianPingPrewItemListImageList.url = url;
  }
  final int? width = jsonConvert.convert<int>(json['width']);
  if (width != null) {
    dianPingPrewItemListImageList.width = width;
  }
  return dianPingPrewItemListImageList;
}

Map<String, dynamic> $DianPingPrewItemListImageListToJson(
    DianPingPrewItemListImageList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['contentLength'] = entity.contentLength;
  data['height'] = entity.height;
  data['id'] = entity.id;
  data['large'] = entity.large;
  data['small'] = entity.small;
  data['url'] = entity.url;
  data['width'] = entity.width;
  return data;
}

extension DianPingPrewItemListImageListExtension on DianPingPrewItemListImageList {
  DianPingPrewItemListImageList copyWith({
    int? contentLength,
    int? height,
    int? id,
    String? large,
    String? small,
    String? url,
    int? width,
  }) {
    return DianPingPrewItemListImageList()
      ..contentLength = contentLength ?? this.contentLength
      ..height = height ?? this.height
      ..id = id ?? this.id
      ..large = large ?? this.large
      ..small = small ?? this.small
      ..url = url ?? this.url
      ..width = width ?? this.width;
  }
}