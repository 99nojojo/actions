import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/mine_r_good_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class MineRGoodEntity {
	List<MineRGoodItemList>? itemList;

	MineRGoodEntity();

	factory MineRGoodEntity.fromJson(Map<String, dynamic> json) => $MineRGoodEntityFromJson(json);

	Map<String, dynamic> toJson() => $MineRGoodEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MineRGoodItemList {
	String? channelCode = '';
	MineRGoodItemListChannelGoodsPrice? channelGoodsPrice;
	String? description = '';
	String? dispatchUrl = '';
	String? recommendChannelCode = '';
	String? recommendGroup = '';
	MineRGoodItemListUiConfig? uiConfig;

	MineRGoodItemList();

	factory MineRGoodItemList.fromJson(Map<String, dynamic> json) => $MineRGoodItemListFromJson(json);

	Map<String, dynamic> toJson() => $MineRGoodItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MineRGoodItemListChannelGoodsPrice {
	dynamic activityCode;
	dynamic activityType;
	dynamic appleGoodsId;
	String? channelCode = '';
	double? channelPrice;
	MineRGoodItemListChannelGoodsPriceGoods? goods;
	dynamic priceConfigCode;
	double? salePrice;
	double? suggestedPrice;
	MineRGoodItemListChannelGoodsPriceUserBoughtInfo? userBoughtInfo;

	MineRGoodItemListChannelGoodsPrice();

	factory MineRGoodItemListChannelGoodsPrice.fromJson(Map<String, dynamic> json) => $MineRGoodItemListChannelGoodsPriceFromJson(json);

	Map<String, dynamic> toJson() => $MineRGoodItemListChannelGoodsPriceToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MineRGoodItemListChannelGoodsPriceGoods {
	String? dataCode = '';
	int? dataType = 0;
	String? durationDescription = '';
	String? goodsDescription = '';
	String? goodsName = '';
	dynamic hasRoute;
	String? tiku = '';
	int? times = 0;

	MineRGoodItemListChannelGoodsPriceGoods();

	factory MineRGoodItemListChannelGoodsPriceGoods.fromJson(Map<String, dynamic> json) => $MineRGoodItemListChannelGoodsPriceGoodsFromJson(json);

	Map<String, dynamic> toJson() => $MineRGoodItemListChannelGoodsPriceGoodsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MineRGoodItemListChannelGoodsPriceUserBoughtInfo {
	bool? effected = false;
	dynamic expireTime;
	bool? expired = false;

	MineRGoodItemListChannelGoodsPriceUserBoughtInfo();

	factory MineRGoodItemListChannelGoodsPriceUserBoughtInfo.fromJson(Map<String, dynamic> json) => $MineRGoodItemListChannelGoodsPriceUserBoughtInfoFromJson(json);

	Map<String, dynamic> toJson() => $MineRGoodItemListChannelGoodsPriceUserBoughtInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MineRGoodItemListUiConfig {
	String? actionUrl = '';
	dynamic boughtUrl;
	List<MineRGoodItemListUiConfigHighlightDescList>? highlightDescList;
	String? name = '';

	MineRGoodItemListUiConfig();

	factory MineRGoodItemListUiConfig.fromJson(Map<String, dynamic> json) => $MineRGoodItemListUiConfigFromJson(json);

	Map<String, dynamic> toJson() => $MineRGoodItemListUiConfigToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class MineRGoodItemListUiConfigHighlightDescList {
	String? highlightActionUrl = '';
	String? highlightIcon = '';
	String? highlightTitle = '';
	String? sort = '';

	MineRGoodItemListUiConfigHighlightDescList();

	factory MineRGoodItemListUiConfigHighlightDescList.fromJson(Map<String, dynamic> json) => $MineRGoodItemListUiConfigHighlightDescListFromJson(json);

	Map<String, dynamic> toJson() => $MineRGoodItemListUiConfigHighlightDescListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}