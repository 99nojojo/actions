import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/nc_recommand1_data_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class NcRecommand1DataEntity {
	int? displayOrder = 0;
	List<NcRecommand1DataItemList>? itemList;
	String? title = '';
	int? typeCode = 0;
	bool? uniOper = false;

	NcRecommand1DataEntity();

	factory NcRecommand1DataEntity.fromJson(Map<String, dynamic> json) => $NcRecommand1DataEntityFromJson(json);

	Map<String, dynamic> toJson() => $NcRecommand1DataEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NcRecommand1DataItemList {
	int? displayOrder = 0;
	List<NcRecommand1DataItemListItemList>? itemList;
	String? title = '';
	int? typeCode = 0;
	bool? uniOper = false;

	NcRecommand1DataItemList();

	factory NcRecommand1DataItemList.fromJson(Map<String, dynamic> json) => $NcRecommand1DataItemListFromJson(json);

	Map<String, dynamic> toJson() => $NcRecommand1DataItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NcRecommand1DataItemListItemList {
	String? actionUrl = '';
	int? id = 0;
	String? logoUrl = '';
	int? maxPrice = 0;
	int? minPrice = 0;
	String? name = '';
	int? parallelImport = 0;
	int? rank = 0;
	bool? uniOper = false;
	NcRecommand1DataItemListItemListUniOperOortData? uniOperOortData;

	NcRecommand1DataItemListItemList();

	factory NcRecommand1DataItemListItemList.fromJson(Map<String, dynamic> json) => $NcRecommand1DataItemListItemListFromJson(json);

	Map<String, dynamic> toJson() => $NcRecommand1DataItemListItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NcRecommand1DataItemListItemListUniOperOortData {
	String? entrancePage1 = '';
	String? eventName = '';
	NcRecommand1DataItemListItemListUniOperOortDataProperties? properties;

	NcRecommand1DataItemListItemListUniOperOortData();

	factory NcRecommand1DataItemListItemListUniOperOortData.fromJson(Map<String, dynamic> json) => $NcRecommand1DataItemListItemListUniOperOortDataFromJson(json);

	Map<String, dynamic> toJson() => $NcRecommand1DataItemListItemListUniOperOortDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NcRecommand1DataItemListItemListUniOperOortDataProperties {
	String? fragmentName1 = '';
	String? actionType = '';
	int? operId = 0;
	String? pageName = '';
	String? actionName = '';

	NcRecommand1DataItemListItemListUniOperOortDataProperties();

	factory NcRecommand1DataItemListItemListUniOperOortDataProperties.fromJson(Map<String, dynamic> json) => $NcRecommand1DataItemListItemListUniOperOortDataPropertiesFromJson(json);

	Map<String, dynamic> toJson() => $NcRecommand1DataItemListItemListUniOperOortDataPropertiesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}