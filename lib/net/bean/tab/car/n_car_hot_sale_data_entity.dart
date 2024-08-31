import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/n_car_hot_sale_data_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class NCarHotSaleDataEntity {
	String? name = '';
	List<NCarHotSaleDataItemList>? itemList;

	NCarHotSaleDataEntity();

	factory NCarHotSaleDataEntity.fromJson(Map<String, dynamic> json) => $NCarHotSaleDataEntityFromJson(json);

	Map<String, dynamic> toJson() => $NCarHotSaleDataEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NCarHotSaleDataItemList {
	String? actionUrl = '';
	String? imageUrl = '';
	int? location = 0;
	String? moduleName = '';
	int? tabId = 0;
	String? title = '';
	bool? uniOper = false;
	NCarHotSaleDataItemListUniOperOortData? uniOperOortData;

	NCarHotSaleDataItemList();

	factory NCarHotSaleDataItemList.fromJson(Map<String, dynamic> json) => $NCarHotSaleDataItemListFromJson(json);

	Map<String, dynamic> toJson() => $NCarHotSaleDataItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NCarHotSaleDataItemListUniOperOortData {
	String? entrancePage1 = '';
	String? eventName = '';
	NCarHotSaleDataItemListUniOperOortDataProperties? properties;

	NCarHotSaleDataItemListUniOperOortData();

	factory NCarHotSaleDataItemListUniOperOortData.fromJson(Map<String, dynamic> json) => $NCarHotSaleDataItemListUniOperOortDataFromJson(json);

	Map<String, dynamic> toJson() => $NCarHotSaleDataItemListUniOperOortDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NCarHotSaleDataItemListUniOperOortDataProperties {
	String? fragmentName1 = '';
	String? actionType = '';
	int? operId = 0;
	String? pageName = '';
	String? actionName = '';

	NCarHotSaleDataItemListUniOperOortDataProperties();

	factory NCarHotSaleDataItemListUniOperOortDataProperties.fromJson(Map<String, dynamic> json) => $NCarHotSaleDataItemListUniOperOortDataPropertiesFromJson(json);

	Map<String, dynamic> toJson() => $NCarHotSaleDataItemListUniOperOortDataPropertiesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}