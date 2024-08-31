import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/mine/mine_r_good_entity.dart';

MineRGoodEntity $MineRGoodEntityFromJson(Map<String, dynamic> json) {
  final MineRGoodEntity mineRGoodEntity = MineRGoodEntity();
  final List<MineRGoodItemList>? itemList = (json['itemList'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<MineRGoodItemList>(e) as MineRGoodItemList)
      .toList();
  if (itemList != null) {
    mineRGoodEntity.itemList = itemList;
  }
  return mineRGoodEntity;
}

Map<String, dynamic> $MineRGoodEntityToJson(MineRGoodEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  return data;
}

extension MineRGoodEntityExtension on MineRGoodEntity {
  MineRGoodEntity copyWith({
    List<MineRGoodItemList>? itemList,
  }) {
    return MineRGoodEntity()
      ..itemList = itemList ?? this.itemList;
  }
}

MineRGoodItemList $MineRGoodItemListFromJson(Map<String, dynamic> json) {
  final MineRGoodItemList mineRGoodItemList = MineRGoodItemList();
  final String? channelCode = jsonConvert.convert<String>(json['channelCode']);
  if (channelCode != null) {
    mineRGoodItemList.channelCode = channelCode;
  }
  final MineRGoodItemListChannelGoodsPrice? channelGoodsPrice = jsonConvert
      .convert<MineRGoodItemListChannelGoodsPrice>(json['channelGoodsPrice']);
  if (channelGoodsPrice != null) {
    mineRGoodItemList.channelGoodsPrice = channelGoodsPrice;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    mineRGoodItemList.description = description;
  }
  final String? dispatchUrl = jsonConvert.convert<String>(json['dispatchUrl']);
  if (dispatchUrl != null) {
    mineRGoodItemList.dispatchUrl = dispatchUrl;
  }
  final String? recommendChannelCode = jsonConvert.convert<String>(
      json['recommendChannelCode']);
  if (recommendChannelCode != null) {
    mineRGoodItemList.recommendChannelCode = recommendChannelCode;
  }
  final String? recommendGroup = jsonConvert.convert<String>(
      json['recommendGroup']);
  if (recommendGroup != null) {
    mineRGoodItemList.recommendGroup = recommendGroup;
  }
  final MineRGoodItemListUiConfig? uiConfig = jsonConvert.convert<
      MineRGoodItemListUiConfig>(json['uiConfig']);
  if (uiConfig != null) {
    mineRGoodItemList.uiConfig = uiConfig;
  }
  return mineRGoodItemList;
}

Map<String, dynamic> $MineRGoodItemListToJson(MineRGoodItemList entity) {
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

extension MineRGoodItemListExtension on MineRGoodItemList {
  MineRGoodItemList copyWith({
    String? channelCode,
    MineRGoodItemListChannelGoodsPrice? channelGoodsPrice,
    String? description,
    String? dispatchUrl,
    String? recommendChannelCode,
    String? recommendGroup,
    MineRGoodItemListUiConfig? uiConfig,
  }) {
    return MineRGoodItemList()
      ..channelCode = channelCode ?? this.channelCode
      ..channelGoodsPrice = channelGoodsPrice ?? this.channelGoodsPrice
      ..description = description ?? this.description
      ..dispatchUrl = dispatchUrl ?? this.dispatchUrl
      ..recommendChannelCode = recommendChannelCode ?? this.recommendChannelCode
      ..recommendGroup = recommendGroup ?? this.recommendGroup
      ..uiConfig = uiConfig ?? this.uiConfig;
  }
}

MineRGoodItemListChannelGoodsPrice $MineRGoodItemListChannelGoodsPriceFromJson(
    Map<String, dynamic> json) {
  final MineRGoodItemListChannelGoodsPrice mineRGoodItemListChannelGoodsPrice = MineRGoodItemListChannelGoodsPrice();
  final dynamic activityCode = json['activityCode'];
  if (activityCode != null) {
    mineRGoodItemListChannelGoodsPrice.activityCode = activityCode;
  }
  final dynamic activityType = json['activityType'];
  if (activityType != null) {
    mineRGoodItemListChannelGoodsPrice.activityType = activityType;
  }
  final dynamic appleGoodsId = json['appleGoodsId'];
  if (appleGoodsId != null) {
    mineRGoodItemListChannelGoodsPrice.appleGoodsId = appleGoodsId;
  }
  final String? channelCode = jsonConvert.convert<String>(json['channelCode']);
  if (channelCode != null) {
    mineRGoodItemListChannelGoodsPrice.channelCode = channelCode;
  }
  final double? channelPrice = jsonConvert.convert<double>(
      json['channelPrice']);
  if (channelPrice != null) {
    mineRGoodItemListChannelGoodsPrice.channelPrice = channelPrice;
  }
  final MineRGoodItemListChannelGoodsPriceGoods? goods = jsonConvert.convert<
      MineRGoodItemListChannelGoodsPriceGoods>(json['goods']);
  if (goods != null) {
    mineRGoodItemListChannelGoodsPrice.goods = goods;
  }
  final dynamic priceConfigCode = json['priceConfigCode'];
  if (priceConfigCode != null) {
    mineRGoodItemListChannelGoodsPrice.priceConfigCode = priceConfigCode;
  }
  final double? salePrice = jsonConvert.convert<double>(json['salePrice']);
  if (salePrice != null) {
    mineRGoodItemListChannelGoodsPrice.salePrice = salePrice;
  }
  final double? suggestedPrice = jsonConvert.convert<double>(
      json['suggestedPrice']);
  if (suggestedPrice != null) {
    mineRGoodItemListChannelGoodsPrice.suggestedPrice = suggestedPrice;
  }
  final MineRGoodItemListChannelGoodsPriceUserBoughtInfo? userBoughtInfo = jsonConvert
      .convert<MineRGoodItemListChannelGoodsPriceUserBoughtInfo>(
      json['userBoughtInfo']);
  if (userBoughtInfo != null) {
    mineRGoodItemListChannelGoodsPrice.userBoughtInfo = userBoughtInfo;
  }
  return mineRGoodItemListChannelGoodsPrice;
}

Map<String, dynamic> $MineRGoodItemListChannelGoodsPriceToJson(
    MineRGoodItemListChannelGoodsPrice entity) {
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

extension MineRGoodItemListChannelGoodsPriceExtension on MineRGoodItemListChannelGoodsPrice {
  MineRGoodItemListChannelGoodsPrice copyWith({
    dynamic activityCode,
    dynamic activityType,
    dynamic appleGoodsId,
    String? channelCode,
    double? channelPrice,
    MineRGoodItemListChannelGoodsPriceGoods? goods,
    dynamic priceConfigCode,
    double? salePrice,
    double? suggestedPrice,
    MineRGoodItemListChannelGoodsPriceUserBoughtInfo? userBoughtInfo,
  }) {
    return MineRGoodItemListChannelGoodsPrice()
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

MineRGoodItemListChannelGoodsPriceGoods $MineRGoodItemListChannelGoodsPriceGoodsFromJson(
    Map<String, dynamic> json) {
  final MineRGoodItemListChannelGoodsPriceGoods mineRGoodItemListChannelGoodsPriceGoods = MineRGoodItemListChannelGoodsPriceGoods();
  final String? dataCode = jsonConvert.convert<String>(json['dataCode']);
  if (dataCode != null) {
    mineRGoodItemListChannelGoodsPriceGoods.dataCode = dataCode;
  }
  final int? dataType = jsonConvert.convert<int>(json['dataType']);
  if (dataType != null) {
    mineRGoodItemListChannelGoodsPriceGoods.dataType = dataType;
  }
  final String? durationDescription = jsonConvert.convert<String>(
      json['durationDescription']);
  if (durationDescription != null) {
    mineRGoodItemListChannelGoodsPriceGoods.durationDescription =
        durationDescription;
  }
  final String? goodsDescription = jsonConvert.convert<String>(
      json['goodsDescription']);
  if (goodsDescription != null) {
    mineRGoodItemListChannelGoodsPriceGoods.goodsDescription = goodsDescription;
  }
  final String? goodsName = jsonConvert.convert<String>(json['goodsName']);
  if (goodsName != null) {
    mineRGoodItemListChannelGoodsPriceGoods.goodsName = goodsName;
  }
  final dynamic hasRoute = json['hasRoute'];
  if (hasRoute != null) {
    mineRGoodItemListChannelGoodsPriceGoods.hasRoute = hasRoute;
  }
  final String? tiku = jsonConvert.convert<String>(json['tiku']);
  if (tiku != null) {
    mineRGoodItemListChannelGoodsPriceGoods.tiku = tiku;
  }
  final int? times = jsonConvert.convert<int>(json['times']);
  if (times != null) {
    mineRGoodItemListChannelGoodsPriceGoods.times = times;
  }
  return mineRGoodItemListChannelGoodsPriceGoods;
}

Map<String, dynamic> $MineRGoodItemListChannelGoodsPriceGoodsToJson(
    MineRGoodItemListChannelGoodsPriceGoods entity) {
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

extension MineRGoodItemListChannelGoodsPriceGoodsExtension on MineRGoodItemListChannelGoodsPriceGoods {
  MineRGoodItemListChannelGoodsPriceGoods copyWith({
    String? dataCode,
    int? dataType,
    String? durationDescription,
    String? goodsDescription,
    String? goodsName,
    dynamic hasRoute,
    String? tiku,
    int? times,
  }) {
    return MineRGoodItemListChannelGoodsPriceGoods()
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

MineRGoodItemListChannelGoodsPriceUserBoughtInfo $MineRGoodItemListChannelGoodsPriceUserBoughtInfoFromJson(
    Map<String, dynamic> json) {
  final MineRGoodItemListChannelGoodsPriceUserBoughtInfo mineRGoodItemListChannelGoodsPriceUserBoughtInfo = MineRGoodItemListChannelGoodsPriceUserBoughtInfo();
  final bool? effected = jsonConvert.convert<bool>(json['effected']);
  if (effected != null) {
    mineRGoodItemListChannelGoodsPriceUserBoughtInfo.effected = effected;
  }
  final dynamic expireTime = json['expireTime'];
  if (expireTime != null) {
    mineRGoodItemListChannelGoodsPriceUserBoughtInfo.expireTime = expireTime;
  }
  final bool? expired = jsonConvert.convert<bool>(json['expired']);
  if (expired != null) {
    mineRGoodItemListChannelGoodsPriceUserBoughtInfo.expired = expired;
  }
  return mineRGoodItemListChannelGoodsPriceUserBoughtInfo;
}

Map<String, dynamic> $MineRGoodItemListChannelGoodsPriceUserBoughtInfoToJson(
    MineRGoodItemListChannelGoodsPriceUserBoughtInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['effected'] = entity.effected;
  data['expireTime'] = entity.expireTime;
  data['expired'] = entity.expired;
  return data;
}

extension MineRGoodItemListChannelGoodsPriceUserBoughtInfoExtension on MineRGoodItemListChannelGoodsPriceUserBoughtInfo {
  MineRGoodItemListChannelGoodsPriceUserBoughtInfo copyWith({
    bool? effected,
    dynamic expireTime,
    bool? expired,
  }) {
    return MineRGoodItemListChannelGoodsPriceUserBoughtInfo()
      ..effected = effected ?? this.effected
      ..expireTime = expireTime ?? this.expireTime
      ..expired = expired ?? this.expired;
  }
}

MineRGoodItemListUiConfig $MineRGoodItemListUiConfigFromJson(
    Map<String, dynamic> json) {
  final MineRGoodItemListUiConfig mineRGoodItemListUiConfig = MineRGoodItemListUiConfig();
  final String? actionUrl = jsonConvert.convert<String>(json['actionUrl']);
  if (actionUrl != null) {
    mineRGoodItemListUiConfig.actionUrl = actionUrl;
  }
  final dynamic boughtUrl = json['boughtUrl'];
  if (boughtUrl != null) {
    mineRGoodItemListUiConfig.boughtUrl = boughtUrl;
  }
  final List<
      MineRGoodItemListUiConfigHighlightDescList>? highlightDescList = (json['highlightDescList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<MineRGoodItemListUiConfigHighlightDescList>(
          e) as MineRGoodItemListUiConfigHighlightDescList).toList();
  if (highlightDescList != null) {
    mineRGoodItemListUiConfig.highlightDescList = highlightDescList;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    mineRGoodItemListUiConfig.name = name;
  }
  return mineRGoodItemListUiConfig;
}

Map<String, dynamic> $MineRGoodItemListUiConfigToJson(
    MineRGoodItemListUiConfig entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['actionUrl'] = entity.actionUrl;
  data['boughtUrl'] = entity.boughtUrl;
  data['highlightDescList'] =
      entity.highlightDescList?.map((v) => v.toJson()).toList();
  data['name'] = entity.name;
  return data;
}

extension MineRGoodItemListUiConfigExtension on MineRGoodItemListUiConfig {
  MineRGoodItemListUiConfig copyWith({
    String? actionUrl,
    dynamic boughtUrl,
    List<MineRGoodItemListUiConfigHighlightDescList>? highlightDescList,
    String? name,
  }) {
    return MineRGoodItemListUiConfig()
      ..actionUrl = actionUrl ?? this.actionUrl
      ..boughtUrl = boughtUrl ?? this.boughtUrl
      ..highlightDescList = highlightDescList ?? this.highlightDescList
      ..name = name ?? this.name;
  }
}

MineRGoodItemListUiConfigHighlightDescList $MineRGoodItemListUiConfigHighlightDescListFromJson(
    Map<String, dynamic> json) {
  final MineRGoodItemListUiConfigHighlightDescList mineRGoodItemListUiConfigHighlightDescList = MineRGoodItemListUiConfigHighlightDescList();
  final String? highlightActionUrl = jsonConvert.convert<String>(
      json['highlightActionUrl']);
  if (highlightActionUrl != null) {
    mineRGoodItemListUiConfigHighlightDescList.highlightActionUrl =
        highlightActionUrl;
  }
  final String? highlightIcon = jsonConvert.convert<String>(
      json['highlightIcon']);
  if (highlightIcon != null) {
    mineRGoodItemListUiConfigHighlightDescList.highlightIcon = highlightIcon;
  }
  final String? highlightTitle = jsonConvert.convert<String>(
      json['highlightTitle']);
  if (highlightTitle != null) {
    mineRGoodItemListUiConfigHighlightDescList.highlightTitle = highlightTitle;
  }
  final String? sort = jsonConvert.convert<String>(json['sort']);
  if (sort != null) {
    mineRGoodItemListUiConfigHighlightDescList.sort = sort;
  }
  return mineRGoodItemListUiConfigHighlightDescList;
}

Map<String, dynamic> $MineRGoodItemListUiConfigHighlightDescListToJson(
    MineRGoodItemListUiConfigHighlightDescList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['highlightActionUrl'] = entity.highlightActionUrl;
  data['highlightIcon'] = entity.highlightIcon;
  data['highlightTitle'] = entity.highlightTitle;
  data['sort'] = entity.sort;
  return data;
}

extension MineRGoodItemListUiConfigHighlightDescListExtension on MineRGoodItemListUiConfigHighlightDescList {
  MineRGoodItemListUiConfigHighlightDescList copyWith({
    String? highlightActionUrl,
    String? highlightIcon,
    String? highlightTitle,
    String? sort,
  }) {
    return MineRGoodItemListUiConfigHighlightDescList()
      ..highlightActionUrl = highlightActionUrl ?? this.highlightActionUrl
      ..highlightIcon = highlightIcon ?? this.highlightIcon
      ..highlightTitle = highlightTitle ?? this.highlightTitle
      ..sort = sort ?? this.sort;
  }
}