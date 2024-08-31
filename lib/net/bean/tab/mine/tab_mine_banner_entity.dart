import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/tab_mine_banner_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class TabMineBannerEntity {
	List<TabMineBannerItemList>? itemList;

	TabMineBannerEntity();

	factory TabMineBannerEntity.fromJson(Map<String, dynamic> json) => $TabMineBannerEntityFromJson(json);

	Map<String, dynamic> toJson() => $TabMineBannerEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class TabMineBannerItemList {
	TabMineBannerItemListPriceCompareInfo? priceCompareInfo;
	TabMineBannerItemListPromotion? promotion;
	TabMineBannerItemListRecommendGoods? recommendGoods;
	int? serverTime = 0;

	TabMineBannerItemList();

	factory TabMineBannerItemList.fromJson(Map<String, dynamic> json) => $TabMineBannerItemListFromJson(json);

	Map<String, dynamic> toJson() => $TabMineBannerItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class TabMineBannerItemListPriceCompareInfo {
	dynamic boughtUrl;
	String? channelCode = '';
	int? compareType = 0;
	String? dataCode = '';
	int? dataType = 0;
	String? goodsName = '';
	String? groupCode = '';
	String? groupName = '';
	double? price;
	List<TabMineBannerItemListPriceCompareInfoPriceCompareList>? priceCompareList;
	double? priceDiff;
	String? url = '';

	TabMineBannerItemListPriceCompareInfo();

	factory TabMineBannerItemListPriceCompareInfo.fromJson(Map<String, dynamic> json) => $TabMineBannerItemListPriceCompareInfoFromJson(json);

	Map<String, dynamic> toJson() => $TabMineBannerItemListPriceCompareInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class TabMineBannerItemListPriceCompareInfoPriceCompareList {
	dynamic boughtUrl;
	String? compareChannelCode = '';
	String? compareDataCode = '';
	int? compareDataType = 0;
	dynamic description;
	String? dispatchUrl = '';
	dynamic icon;
	dynamic label;
	String? name = '';
	double? price;
	int? purchaseMethod = 0;
	int? sortNum = 0;
	String? url = '';
	TabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfo? userBoughtInfo;

	TabMineBannerItemListPriceCompareInfoPriceCompareList();

	factory TabMineBannerItemListPriceCompareInfoPriceCompareList.fromJson(Map<String, dynamic> json) => $TabMineBannerItemListPriceCompareInfoPriceCompareListFromJson(json);

	Map<String, dynamic> toJson() => $TabMineBannerItemListPriceCompareInfoPriceCompareListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class TabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfo {
	bool? effected = false;
	dynamic expireTime;
	bool? expired = false;

	TabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfo();

	factory TabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfo.fromJson(Map<String, dynamic> json) => $TabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfoFromJson(json);

	Map<String, dynamic> toJson() => $TabMineBannerItemListPriceCompareInfoPriceCompareListUserBoughtInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class TabMineBannerItemListPromotion {
	dynamic discountEndTime;
	dynamic discountStartTime;
	dynamic discountStatus;
	dynamic uiConfig;

	TabMineBannerItemListPromotion();

	factory TabMineBannerItemListPromotion.fromJson(Map<String, dynamic> json) => $TabMineBannerItemListPromotionFromJson(json);

	Map<String, dynamic> toJson() => $TabMineBannerItemListPromotionToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class TabMineBannerItemListRecommendGoods {
	dynamic channelCode;
	TabMineBannerItemListRecommendGoodsChannelGoodsPrice? channelGoodsPrice;
	String? description = '';
	String? dispatchUrl = '';
	String? recommendChannelCode = '';
	String? recommendGroup = '';
	TabMineBannerItemListRecommendGoodsUiConfig? uiConfig;

	TabMineBannerItemListRecommendGoods();

	factory TabMineBannerItemListRecommendGoods.fromJson(Map<String, dynamic> json) => $TabMineBannerItemListRecommendGoodsFromJson(json);

	Map<String, dynamic> toJson() => $TabMineBannerItemListRecommendGoodsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class TabMineBannerItemListRecommendGoodsChannelGoodsPrice {
	dynamic activityCode;
	dynamic activityType;
	String? appleGoodsId = '';
	String? channelCode = '';
	double? channelPrice;
	TabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods? goods;
	dynamic priceConfigCode;
	double? salePrice;
	double? suggestedPrice;
	TabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfo? userBoughtInfo;

	TabMineBannerItemListRecommendGoodsChannelGoodsPrice();

	factory TabMineBannerItemListRecommendGoodsChannelGoodsPrice.fromJson(Map<String, dynamic> json) => $TabMineBannerItemListRecommendGoodsChannelGoodsPriceFromJson(json);

	Map<String, dynamic> toJson() => $TabMineBannerItemListRecommendGoodsChannelGoodsPriceToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class TabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods {
	String? dataCode = '';
	int? dataType = 0;
	String? durationDescription = '';
	String? goodsDescription = '';
	String? goodsName = '';
	dynamic hasRoute;
	String? tiku = '';
	int? times = 0;

	TabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods();

	factory TabMineBannerItemListRecommendGoodsChannelGoodsPriceGoods.fromJson(Map<String, dynamic> json) => $TabMineBannerItemListRecommendGoodsChannelGoodsPriceGoodsFromJson(json);

	Map<String, dynamic> toJson() => $TabMineBannerItemListRecommendGoodsChannelGoodsPriceGoodsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class TabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfo {
	bool? effected = false;
	dynamic expireTime;
	bool? expired = false;

	TabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfo();

	factory TabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfo.fromJson(Map<String, dynamic> json) => $TabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfoFromJson(json);

	Map<String, dynamic> toJson() => $TabMineBannerItemListRecommendGoodsChannelGoodsPriceUserBoughtInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class TabMineBannerItemListRecommendGoodsUiConfig {
	String? actionUrl = '';
	String? description = '';
	String? groupKey = '';
	String? groupName = '';

	TabMineBannerItemListRecommendGoodsUiConfig();

	factory TabMineBannerItemListRecommendGoodsUiConfig.fromJson(Map<String, dynamic> json) => $TabMineBannerItemListRecommendGoodsUiConfigFromJson(json);

	Map<String, dynamic> toJson() => $TabMineBannerItemListRecommendGoodsUiConfigToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}