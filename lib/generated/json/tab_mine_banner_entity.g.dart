import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/mine/tab_mine_banner_entity.dart';

TabMineBannerEntity $TabMineBannerEntityFromJson(Map<String, dynamic> json) {
  final TabMineBannerEntity tabMineBannerEntity = TabMineBannerEntity();
  final List<TabMineBannerItemList>? itemList = (json['itemList'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<TabMineBannerItemList>(e) as TabMineBannerItemList)
      .toList();
  if (itemList != null) {
    tabMineBannerEntity.itemList = itemList;
  }
  return tabMineBannerEntity;
}

Map<String, dynamic> $TabMineBannerEntityToJson(TabMineBannerEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  return data;
}

extension TabMineBannerEntityExtension on TabMineBannerEntity {
  TabMineBannerEntity copyWith({
    List<TabMineBannerItemList>? itemList,
  }) {
    return TabMineBannerEntity()
      ..itemList = itemList ?? this.itemList;
  }
}

TabMineBannerItemList $TabMineBannerItemListFromJson(
    Map<String, dynamic> json) {
  final TabMineBannerItemList tabMineBannerItemList = TabMineBannerItemList();
  final TabMineBannerItemListPriceCompareInfo? priceCompareInfo = jsonConvert
      .convert<TabMineBannerItemListPriceCompareInfo>(json['priceCompareInfo']);
  if (priceCompareInfo != null) {
    tabMineBannerItemList.priceCompareInfo = priceCompareInfo;
  }
  final TabMineBannerItemListPromotion? promotion = jsonConvert.convert<
      TabMineBannerItemListPromotion>(json['promotion']);
  if (promotion != null) {
    tabMineBannerItemList.promotion = promotion;
  }
  final TabMineBannerItemListRecommendGoods? recommendGoods = jsonConvert
      .convert<TabMineBannerItemListRecommendGoods>(json['recommendGoods']);
  if (recommendGoods != null) {
    tabMineBannerItemList.recommendGoods = recommendGoods;
  }
  final int? serverTime = jsonConvert.convert<int>(json['serverTime']);
  if (serverTime != null) {
    tabMineBannerItemList.serverTime = serverTime;
  }
  return tabMineBannerItemList;
}

Map<String, dynamic> $TabMineBannerItemListToJson(
    TabMineBannerItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['priceCompareInfo'] = entity.priceCompareInfo?.toJson();
  data['promotion'] = entity.promotion?.toJson();
  data['recommendGoods'] = entity.recommendGoods?.toJson();
  data['serverTime'] = entity.serverTime;
  return data;
}

extension TabMineBannerItemListExtension on TabMineBannerItemList {
  TabMineBannerItemList copyWith({
    TabMineBannerItemListPriceCompareInfo? priceCompareInfo,
    TabMineBannerItemListPromotion? promotion,
    TabMineBannerItemListRecommendGoods? recommendGoods,
    int? serverTime,
  }) {
    return TabMineBannerItemList()
      ..priceCompareInfo = priceCompareInfo ?? this.priceCompareInfo
      ..promotion = promotion ?? this.promotion
      ..recommendGoods = recommendGoods ?? this.recommendGoods
      ..serverTime = serverTime ?? this.serverTime;
  }
}

TabMineBannerItemListPriceCompareInfo $TabMineBannerItemListPriceCompareInfoFromJson(
    Map<String, dynamic> json) {
  final TabMineBannerItemListPriceCompareInfo tabMineBannerItemListPriceCompareInfo = TabMineBannerItemListPriceCompareInfo();
  final dynamic boughtUrl = json['boughtUrl'];
  if (boughtUrl != null) {
    tabMineBannerItemListPriceCompareInfo.boughtUrl = boughtUrl;
  }
  final String? channelCode = jsonConvert.convert<String>(json['channelCode']);
  if (channelCode != null) {
    tabMineBannerItemListPriceCompareInfo.channelCode = channelCode;
  }
  final int? compareType = jsonConvert.convert<int>(json['compareType']);
  if (compareType != null) {
    tabMineBannerItemListPriceCompareInfo.compareType = compareType;
  }
  final String? dataCode = jsonConvert.convert<String>(json['dataCode']);
  if (dataCode != null) {
    tabMineBannerItemListPriceCompareInfo.dataCode = dataCode;
  }
  final int? dataType = jsonConvert.convert<int>(json['dataType']);
  if (dataType != null) {
    tabMineBannerItemListPriceCompareInfo.dataType = dataType;
  }
  final String? goodsName = jsonConvert.convert<String>(json['goodsName']);
  if (goodsName != null) {
    tabMineBannerItemListPriceCompareInfo.goodsName = goodsName;
  }
  final String? groupCode = jsonConvert.convert<String>(json['groupCode']);
  if (groupCode != null) {
    tabMineBannerItemListPriceCompareInfo.groupCode = groupCode;
  }
  final String? groupName = jsonConvert.convert<String>(json['groupName']);
  if (groupName != null) {
    tabMineBannerItemListPriceCompareInfo.groupName = groupName;
  }
  final double? price = jsonConvert.convert<double>(json['price']);
  if (price != null) {
    tabMineBannerItemListPriceCompareInfo.price = price;
  }
  final List<
      TabMineBannerItemListPriceCompareInfoPriceCompareList>? priceCompareList = (json['priceCompareList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          TabMineBannerItemListPriceCompareInfoPriceCompareList>(
          e) as TabMineBannerItemListPriceCompareInfoPriceCompareList).toList();
  if (priceCompareList != null) {
    tabMineBannerItemListPriceCompareInfo.priceCompareList = priceCompareList;
  }
  final double? priceDiff = jsonConvert.convert<double>(json['priceDiff']);
  if (priceDiff != null) {
    tabMineBannerItemListPriceCompareInfo.priceDiff = priceDiff;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    tabMineBannerItemListPriceCompareInfo.url = url;
  }
  return tabMineBannerItemListPriceCompareInfo;
}

Map<String, dynamic> $TabMineBannerItemListPriceCompareInfoToJson(
    TabMineBannerItemListPriceCompareInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['boughtUrl'] = entity.boughtUrl;
  data['channelCode'] = entity.channelCode;
  data['compareType'] = entity.compareType;
  data['dataCode'] = entity.dataCode;
  data['dataType'] = entity.dataType;
  data['goodsName'] = entity.goodsName;
  data['groupCode'] = entity.groupCode;
  data['groupName'] = entity.groupName;
  data['price'] = entity.price;
  data['priceCompareList'] =
      entity.priceCompareList?.map((v) => v.toJson()).toList();
  data['priceDiff'] = entity.priceDiff;
  data['url'] = entity.url;
  return data;
}

extension TabMineBannerItemListPriceCompareInfoExtension on TabMineBannerItemListPriceCompareInfo {
  TabMineBannerItemListPriceCompareInfo copyWith({
    dynamic boughtUrl,
    String? channelCode,
    int? compareType,
    String? dataCode,
    int? dataType,
    String? goodsName,
    String? groupCode,
    String? groupName,
    double? price,
    List<
        TabMineBannerItemListPriceCompareInfoPriceCompareList>? priceCompareList,
    double? priceDiff,
    String? url,
  }) {
    return TabMineBannerItemListPriceCompareInfo()
      ..boughtUrl = boughtUrl ?? this.boughtUrl
      ..channelCode = channelCode ?? this.channelCode
      ..compareType = compareType ?? this.compareType
      ..dataCode = dataCode ?? this.dataCode
      ..dataType = dataType ?? this.dataType
      ..goodsName = goodsName ?? this.goodsName
      ..groupCode = groupCode ?? this.groupCode
      ..groupName = groupName ?? this.groupName
      ..price = price ?? this.price
      ..priceCompareList = priceCompareList ?? this.priceCompareList
      ..priceDiff = priceDiff ?? this.priceDiff
      ..url = url ?? this.url;
  }
}

TabMineBannerItemListPriceCompareInfoPriceCompareList $TabMineBannerItemListPriceCompareInfoPriceCompareListFromJson(
    Map<String, dynamic> json) {
  final TabMineBannerItemListPriceCompareInfoPriceCompareList tabMineBannerItemListPriceCompareInfoPriceCompareList = TabMineBannerItemListPriceCompareInfoPriceCompareList();
  final dynamic boughtUrl = json['boughtUrl'];
  if (boughtUrl != null) {
    tabMineBannerItemListPriceCompareInfoPriceCompareList.boughtUrl = boughtUrl;
  }
  final String? compareChannelCode = jsonConvert.convert<String>(
      json['compareChannelCode']);
  if (compareChannelCode != null) {
    tabMineBannerItemListPriceCompareInfoPriceCompareList.compareChannelCode =
        compareChannelCode;
  }
  final String? compareDataCode = jsonConvert.convert<String>(
      json['compareDataCode']);
  if (compareDataCode != null) {
    tabMineBannerItemListPriceCompareInfoPriceCompareList.compareDataCode =
        compareDataCode;
  }
  final int? compareDataType = jsonConvert.convert<int>(
      json['compareDataType']);
  if (compareDataType != null) {
    tabMineBannerItemListPriceCompareInfoPriceCompareList.compareDataType =
        compareDataType;
  }
  final dynamic description = json['description'];
  if (description != null) {
    tabMineBannerItemListPriceCompareInfoPriceCompareList.description =
        description;
  }
  final String? dispatchUrl = jsonConvert.convert<String>(json['dispatchUrl']);
  if (dispatchUrl != null) {
    tabMineBannerItemListPriceCompareInfoPriceCompareList.dispatchUrl =
        dispatchUrl;
  }
  final dynamic icon = json['icon'];
  if (icon != null) {
    tabMineBannerItemListPriceCompareInfoPriceCompareList.icon = icon;
  }
  final dynamic label = json['label'];
  if (label != null) {
    tabMineBannerItemListPriceCompareInfoPriceCompareList.label = label;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    tabMineBannerItemListPriceCompareInfoPriceCompareList.name = name;
  }
  final double? price = jsonConvert.convert<double>(json['price']);
  if (price != null) {
    tabMineBannerItemListPriceCompareInfoPriceCompareList.price = price;
  }
  final int? purchaseMethod = jsonConvert.convert<int>(json['purchaseMethod']);
  if (purchaseMethod != null) {
    tabMineBannerItemListPriceCompareInfoPriceCompareList.purchaseMethod =
        purchaseMethod;
  }
  final int? sortNum = jsonConvert.convert<int>(json['sortNum']);
  if (sortNum != null) {
    tabMineBannerItemListPriceCompareInfoPriceCompareList.sortNum = sortNum;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    tabMineBannerItemListPriceCompareInfoPriceCompareList.url = url;
  }
  final TabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfo? userBoughtInfo = jsonConvert
      .convert<
      TabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfo>(
      json['userBoughtInfo']);
  if (userBoughtInfo != null) {
    tabMineBannerItemListPriceCompareInfoPriceCompareList.userBoughtInfo =
        userBoughtInfo;
  }
  return tabMineBannerItemListPriceCompareInfoPriceCompareList;
}

Map<String,
    dynamic> $TabMineBannerItemListPriceCompareInfoPriceCompareListToJson(
    TabMineBannerItemListPriceCompareInfoPriceCompareList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['boughtUrl'] = entity.boughtUrl;
  data['compareChannelCode'] = entity.compareChannelCode;
  data['compareDataCode'] = entity.compareDataCode;
  data['compareDataType'] = entity.compareDataType;
  data['description'] = entity.description;
  data['dispatchUrl'] = entity.dispatchUrl;
  data['icon'] = entity.icon;
  data['label'] = entity.label;
  data['name'] = entity.name;
  data['price'] = entity.price;
  data['purchaseMethod'] = entity.purchaseMethod;
  data['sortNum'] = entity.sortNum;
  data['url'] = entity.url;
  data['userBoughtInfo'] = entity.userBoughtInfo?.toJson();
  return data;
}

extension TabMineBannerItemListPriceCompareInfoPriceCompareListExtension on TabMineBannerItemListPriceCompareInfoPriceCompareList {
  TabMineBannerItemListPriceCompareInfoPriceCompareList copyWith({
    dynamic boughtUrl,
    String? compareChannelCode,
    String? compareDataCode,
    int? compareDataType,
    dynamic description,
    String? dispatchUrl,
    dynamic icon,
    dynamic label,
    String? name,
    double? price,
    int? purchaseMethod,
    int? sortNum,
    String? url,
    TabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfo? userBoughtInfo,
  }) {
    return TabMineBannerItemListPriceCompareInfoPriceCompareList()
      ..boughtUrl = boughtUrl ?? this.boughtUrl
      ..compareChannelCode = compareChannelCode ?? this.compareChannelCode
      ..compareDataCode = compareDataCode ?? this.compareDataCode
      ..compareDataType = compareDataType ?? this.compareDataType
      ..description = description ?? this.description
      ..dispatchUrl = dispatchUrl ?? this.dispatchUrl
      ..icon = icon ?? this.icon
      ..label = label ?? this.label
      ..name = name ?? this.name
      ..price = price ?? this.price
      ..purchaseMethod = purchaseMethod ?? this.purchaseMethod
      ..sortNum = sortNum ?? this.sortNum
      ..url = url ?? this.url
      ..userBoughtInfo = userBoughtInfo ?? this.userBoughtInfo;
  }
}

TabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfo $TabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfoFromJson(
    Map<String, dynamic> json) {
  final TabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfo tabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfo = TabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfo();
  final bool? effected = jsonConvert.convert<bool>(json['effected']);
  if (effected != null) {
    tabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfo
        .effected = effected;
  }
  final dynamic expireTime = json['expireTime'];
  if (expireTime != null) {
    tabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfo
        .expireTime = expireTime;
  }
  final bool? expired = jsonConvert.convert<bool>(json['expired']);
  if (expired != null) {
    tabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfo
        .expired = expired;
  }
  return tabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfo;
}

Map<String,
    dynamic> $TabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfoToJson(
    TabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['effected'] = entity.effected;
  data['expireTime'] = entity.expireTime;
  data['expired'] = entity.expired;
  return data;
}

extension TabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfoExtension on TabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfo {
  TabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfo copyWith({
    bool? effected,
    dynamic expireTime,
    bool? expired,
  }) {
    return TabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfo()
      ..effected = effected ?? this.effected
      ..expireTime = expireTime ?? this.expireTime
      ..expired = expired ?? this.expired;
  }
}

TabMineBannerItemListPromotion $TabMineBannerItemListPromotionFromJson(
    Map<String, dynamic> json) {
  final TabMineBannerItemListPromotion tabMineBannerItemListPromotion = TabMineBannerItemListPromotion();
  final dynamic discountEndTime = json['discountEndTime'];
  if (discountEndTime != null) {
    tabMineBannerItemListPromotion.discountEndTime = discountEndTime;
  }
  final dynamic discountStartTime = json['discountStartTime'];
  if (discountStartTime != null) {
    tabMineBannerItemListPromotion.discountStartTime = discountStartTime;
  }
  final dynamic discountStatus = json['discountStatus'];
  if (discountStatus != null) {
    tabMineBannerItemListPromotion.discountStatus = discountStatus;
  }
  final dynamic uiConfig = json['uiConfig'];
  if (uiConfig != null) {
    tabMineBannerItemListPromotion.uiConfig = uiConfig;
  }
  return tabMineBannerItemListPromotion;
}

Map<String, dynamic> $TabMineBannerItemListPromotionToJson(
    TabMineBannerItemListPromotion entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['discountEndTime'] = entity.discountEndTime;
  data['discountStartTime'] = entity.discountStartTime;
  data['discountStatus'] = entity.discountStatus;
  data['uiConfig'] = entity.uiConfig;
  return data;
}

extension TabMineBannerItemListPromotionExtension on TabMineBannerItemListPromotion {
  TabMineBannerItemListPromotion copyWith({
    dynamic discountEndTime,
    dynamic discountStartTime,
    dynamic discountStatus,
    dynamic uiConfig,
  }) {
    return TabMineBannerItemListPromotion()
      ..discountEndTime = discountEndTime ?? this.discountEndTime
      ..discountStartTime = discountStartTime ?? this.discountStartTime
      ..discountStatus = discountStatus ?? this.discountStatus
      ..uiConfig = uiConfig ?? this.uiConfig;
  }
}

TabMineBannerItemListRecommendGoods $TabMineBannerItemListRecommendGoodsFromJson(
    Map<String, dynamic> json) {
  final TabMineBannerItemListRecommendGoods tabMineBannerItemListRecommendGoods = TabMineBannerItemListRecommendGoods();
  final dynamic channelCode = json['channelCode'];
  if (channelCode != null) {
    tabMineBannerItemListRecommendGoods.channelCode = channelCode;
  }
  final TabMineBannerItemListRecommendGoodsChannelGoodsPrice? channelGoodsPrice = jsonConvert
      .convert<TabMineBannerItemListRecommendGoodsChannelGoodsPrice>(
      json['channelGoodsPrice']);
  if (channelGoodsPrice != null) {
    tabMineBannerItemListRecommendGoods.channelGoodsPrice = channelGoodsPrice;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    tabMineBannerItemListRecommendGoods.description = description;
  }
  final String? dispatchUrl = jsonConvert.convert<String>(json['dispatchUrl']);
  if (dispatchUrl != null) {
    tabMineBannerItemListRecommendGoods.dispatchUrl = dispatchUrl;
  }
  final String? recommendChannelCode = jsonConvert.convert<String>(
      json['recommendChannelCode']);
  if (recommendChannelCode != null) {
    tabMineBannerItemListRecommendGoods.recommendChannelCode =
        recommendChannelCode;
  }
  final String? recommendGroup = jsonConvert.convert<String>(
      json['recommendGroup']);
  if (recommendGroup != null) {
    tabMineBannerItemListRecommendGoods.recommendGroup = recommendGroup;
  }
  final TabMineBannerItemListRecommendGoodsUiConfig? uiConfig = jsonConvert
      .convert<TabMineBannerItemListRecommendGoodsUiConfig>(json['uiConfig']);
  if (uiConfig != null) {
    tabMineBannerItemListRecommendGoods.uiConfig = uiConfig;
  }
  return tabMineBannerItemListRecommendGoods;
}

Map<String, dynamic> $TabMineBannerItemListRecommendGoodsToJson(
    TabMineBannerItemListRecommendGoods entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['channelCode'] = entity.channelCode;
  data['channelGoodsPrice'] = entity.channelGoodsPrice?.toJson();
  data['description'] = entity.description;
  data['dispatchUrl'] = entity.dispatchUrl;
  data['recommendChannelCode'] = entity.recommendChannelCode;
  data['recommendGroup'] = entity.recommendGroup;
  data['uiConfig'] = entity.uiConfig?.toJson();
  return data;
}

extension TabMineBannerItemListRecommendGoodsExtension on TabMineBannerItemListRecommendGoods {
  TabMineBannerItemListRecommendGoods copyWith({
    dynamic channelCode,
    TabMineBannerItemListRecommendGoodsChannelGoodsPrice? channelGoodsPrice,
    String? description,
    String? dispatchUrl,
    String? recommendChannelCode,
    String? recommendGroup,
    TabMineBannerItemListRecommendGoodsUiConfig? uiConfig,
  }) {
    return TabMineBannerItemListRecommendGoods()
      ..channelCode = channelCode ?? this.channelCode
      ..channelGoodsPrice = channelGoodsPrice ?? this.channelGoodsPrice
      ..description = description ?? this.description
      ..dispatchUrl = dispatchUrl ?? this.dispatchUrl
      ..recommendChannelCode = recommendChannelCode ?? this.recommendChannelCode
      ..recommendGroup = recommendGroup ?? this.recommendGroup
      ..uiConfig = uiConfig ?? this.uiConfig;
  }
}

TabMineBannerItemListRecommendGoodsChannelGoodsPrice $TabMineBannerItemListRecommendGoodsChannelGoodsPriceFromJson(
    Map<String, dynamic> json) {
  final TabMineBannerItemListRecommendGoodsChannelGoodsPrice tabMineBannerItemListRecommendGoodsChannelGoodsPrice = TabMineBannerItemListRecommendGoodsChannelGoodsPrice();
  final dynamic activityCode = json['activityCode'];
  if (activityCode != null) {
    tabMineBannerItemListRecommendGoodsChannelGoodsPrice.activityCode =
        activityCode;
  }
  final dynamic activityType = json['activityType'];
  if (activityType != null) {
    tabMineBannerItemListRecommendGoodsChannelGoodsPrice.activityType =
        activityType;
  }
  final String? appleGoodsId = jsonConvert.convert<String>(
      json['appleGoodsId']);
  if (appleGoodsId != null) {
    tabMineBannerItemListRecommendGoodsChannelGoodsPrice.appleGoodsId =
        appleGoodsId;
  }
  final String? channelCode = jsonConvert.convert<String>(json['channelCode']);
  if (channelCode != null) {
    tabMineBannerItemListRecommendGoodsChannelGoodsPrice.channelCode =
        channelCode;
  }
  final double? channelPrice = jsonConvert.convert<double>(
      json['channelPrice']);
  if (channelPrice != null) {
    tabMineBannerItemListRecommendGoodsChannelGoodsPrice.channelPrice =
        channelPrice;
  }
  final TabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods? goods = jsonConvert
      .convert<TabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods>(
      json['goods']);
  if (goods != null) {
    tabMineBannerItemListRecommendGoodsChannelGoodsPrice.goods = goods;
  }
  final dynamic priceConfigCode = json['priceConfigCode'];
  if (priceConfigCode != null) {
    tabMineBannerItemListRecommendGoodsChannelGoodsPrice.priceConfigCode =
        priceConfigCode;
  }
  final double? salePrice = jsonConvert.convert<double>(json['salePrice']);
  if (salePrice != null) {
    tabMineBannerItemListRecommendGoodsChannelGoodsPrice.salePrice = salePrice;
  }
  final double? suggestedPrice = jsonConvert.convert<double>(
      json['suggestedPrice']);
  if (suggestedPrice != null) {
    tabMineBannerItemListRecommendGoodsChannelGoodsPrice.suggestedPrice =
        suggestedPrice;
  }
  final TabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfo? userBoughtInfo = jsonConvert
      .convert<
      TabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfo>(
      json['userBoughtInfo']);
  if (userBoughtInfo != null) {
    tabMineBannerItemListRecommendGoodsChannelGoodsPrice.userBoughtInfo =
        userBoughtInfo;
  }
  return tabMineBannerItemListRecommendGoodsChannelGoodsPrice;
}

Map<String,
    dynamic> $TabMineBannerItemListRecommendGoodsChannelGoodsPriceToJson(
    TabMineBannerItemListRecommendGoodsChannelGoodsPrice entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['activityCode'] = entity.activityCode;
  data['activityType'] = entity.activityType;
  data['appleGoodsId'] = entity.appleGoodsId;
  data['channelCode'] = entity.channelCode;
  data['channelPrice'] = entity.channelPrice;
  data['goods'] = entity.goods?.toJson();
  data['priceConfigCode'] = entity.priceConfigCode;
  data['salePrice'] = entity.salePrice;
  data['suggestedPrice'] = entity.suggestedPrice;
  data['userBoughtInfo'] = entity.userBoughtInfo?.toJson();
  return data;
}

extension TabMineBannerItemListRecommendGoodsChannelGoodsPriceExtension on TabMineBannerItemListRecommendGoodsChannelGoodsPrice {
  TabMineBannerItemListRecommendGoodsChannelGoodsPrice copyWith({
    dynamic activityCode,
    dynamic activityType,
    String? appleGoodsId,
    String? channelCode,
    double? channelPrice,
    TabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods? goods,
    dynamic priceConfigCode,
    double? salePrice,
    double? suggestedPrice,
    TabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfo? userBoughtInfo,
  }) {
    return TabMineBannerItemListRecommendGoodsChannelGoodsPrice()
      ..activityCode = activityCode ?? this.activityCode
      ..activityType = activityType ?? this.activityType
      ..appleGoodsId = appleGoodsId ?? this.appleGoodsId
      ..channelCode = channelCode ?? this.channelCode
      ..channelPrice = channelPrice ?? this.channelPrice
      ..goods = goods ?? this.goods
      ..priceConfigCode = priceConfigCode ?? this.priceConfigCode
      ..salePrice = salePrice ?? this.salePrice
      ..suggestedPrice = suggestedPrice ?? this.suggestedPrice
      ..userBoughtInfo = userBoughtInfo ?? this.userBoughtInfo;
  }
}

TabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods $TabMineBannerItemListRecommendGoodsChannelGoodsPriceGoodsFromJson(
    Map<String, dynamic> json) {
  final TabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods tabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods = TabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods();
  final String? dataCode = jsonConvert.convert<String>(json['dataCode']);
  if (dataCode != null) {
    tabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods.dataCode =
        dataCode;
  }
  final int? dataType = jsonConvert.convert<int>(json['dataType']);
  if (dataType != null) {
    tabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods.dataType =
        dataType;
  }
  final String? durationDescription = jsonConvert.convert<String>(
      json['durationDescription']);
  if (durationDescription != null) {
    tabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods
        .durationDescription = durationDescription;
  }
  final String? goodsDescription = jsonConvert.convert<String>(
      json['goodsDescription']);
  if (goodsDescription != null) {
    tabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods.goodsDescription =
        goodsDescription;
  }
  final String? goodsName = jsonConvert.convert<String>(json['goodsName']);
  if (goodsName != null) {
    tabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods.goodsName =
        goodsName;
  }
  final dynamic hasRoute = json['hasRoute'];
  if (hasRoute != null) {
    tabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods.hasRoute =
        hasRoute;
  }
  final String? tiku = jsonConvert.convert<String>(json['tiku']);
  if (tiku != null) {
    tabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods.tiku = tiku;
  }
  final int? times = jsonConvert.convert<int>(json['times']);
  if (times != null) {
    tabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods.times = times;
  }
  return tabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods;
}

Map<String,
    dynamic> $TabMineBannerItemListRecommendGoodsChannelGoodsPriceGoodsToJson(
    TabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['dataCode'] = entity.dataCode;
  data['dataType'] = entity.dataType;
  data['durationDescription'] = entity.durationDescription;
  data['goodsDescription'] = entity.goodsDescription;
  data['goodsName'] = entity.goodsName;
  data['hasRoute'] = entity.hasRoute;
  data['tiku'] = entity.tiku;
  data['times'] = entity.times;
  return data;
}

extension TabMineBannerItemListRecommendGoodsChannelGoodsPriceGoodsExtension on TabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods {
  TabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods copyWith({
    String? dataCode,
    int? dataType,
    String? durationDescription,
    String? goodsDescription,
    String? goodsName,
    dynamic hasRoute,
    String? tiku,
    int? times,
  }) {
    return TabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods()
      ..dataCode = dataCode ?? this.dataCode
      ..dataType = dataType ?? this.dataType
      ..durationDescription = durationDescription ?? this.durationDescription
      ..goodsDescription = goodsDescription ?? this.goodsDescription
      ..goodsName = goodsName ?? this.goodsName
      ..hasRoute = hasRoute ?? this.hasRoute
      ..tiku = tiku ?? this.tiku
      ..times = times ?? this.times;
  }
}

TabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfo $TabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfoFromJson(
    Map<String, dynamic> json) {
  final TabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfo tabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfo = TabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfo();
  final bool? effected = jsonConvert.convert<bool>(json['effected']);
  if (effected != null) {
    tabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfo
        .effected = effected;
  }
  final dynamic expireTime = json['expireTime'];
  if (expireTime != null) {
    tabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfo
        .expireTime = expireTime;
  }
  final bool? expired = jsonConvert.convert<bool>(json['expired']);
  if (expired != null) {
    tabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfo.expired =
        expired;
  }
  return tabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfo;
}

Map<String,
    dynamic> $TabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfoToJson(
    TabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['effected'] = entity.effected;
  data['expireTime'] = entity.expireTime;
  data['expired'] = entity.expired;
  return data;
}

extension TabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfoExtension on TabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfo {
  TabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfo copyWith({
    bool? effected,
    dynamic expireTime,
    bool? expired,
  }) {
    return TabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfo()
      ..effected = effected ?? this.effected
      ..expireTime = expireTime ?? this.expireTime
      ..expired = expired ?? this.expired;
  }
}

TabMineBannerItemListRecommendGoodsUiConfig $TabMineBannerItemListRecommendGoodsUiConfigFromJson(
    Map<String, dynamic> json) {
  final TabMineBannerItemListRecommendGoodsUiConfig tabMineBannerItemListRecommendGoodsUiConfig = TabMineBannerItemListRecommendGoodsUiConfig();
  final String? actionUrl = jsonConvert.convert<String>(json['actionUrl']);
  if (actionUrl != null) {
    tabMineBannerItemListRecommendGoodsUiConfig.actionUrl = actionUrl;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    tabMineBannerItemListRecommendGoodsUiConfig.description = description;
  }
  final String? groupKey = jsonConvert.convert<String>(json['groupKey']);
  if (groupKey != null) {
    tabMineBannerItemListRecommendGoodsUiConfig.groupKey = groupKey;
  }
  final String? groupName = jsonConvert.convert<String>(json['groupName']);
  if (groupName != null) {
    tabMineBannerItemListRecommendGoodsUiConfig.groupName = groupName;
  }
  return tabMineBannerItemListRecommendGoodsUiConfig;
}

Map<String, dynamic> $TabMineBannerItemListRecommendGoodsUiConfigToJson(
    TabMineBannerItemListRecommendGoodsUiConfig entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['actionUrl'] = entity.actionUrl;
  data['description'] = entity.description;
  data['groupKey'] = entity.groupKey;
  data['groupName'] = entity.groupName;
  return data;
}

extension TabMineBannerItemListRecommendGoodsUiConfigExtension on TabMineBannerItemListRecommendGoodsUiConfig {
  TabMineBannerItemListRecommendGoodsUiConfig copyWith({
    String? actionUrl,
    String? description,
    String? groupKey,
    String? groupName,
  }) {
    return TabMineBannerItemListRecommendGoodsUiConfig()
      ..actionUrl = actionUrl ?? this.actionUrl
      ..description = description ?? this.description
      ..groupKey = groupKey ?? this.groupKey
      ..groupName = groupName ?? this.groupName;
  }
}