import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/nc_recommand2_data_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class NcRecommand2DataEntity {
	int? displayOrder = 0;
	List<NcRecommand2DataItemList>? itemList;
	String? title = '';
	int? typeCode = 0;
	bool? uniOper = false;

	NcRecommand2DataEntity();

	factory NcRecommand2DataEntity.fromJson(Map<String, dynamic> json) => $NcRecommand2DataEntityFromJson(json);

	Map<String, dynamic> toJson() => $NcRecommand2DataEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NcRecommand2DataItemList {
	String? actionUrl = '';
	String? imageUrl = '';
	int? seriesId = 0;
	int? tabId = 0;
	bool? uniOper = false;
	NcRecommand2DataItemListUniOperOortData? uniOperOortData;

	NcRecommand2DataItemList();

	factory NcRecommand2DataItemList.fromJson(Map<String, dynamic> json) => $NcRecommand2DataItemListFromJson(json);

	Map<String, dynamic> toJson() => $NcRecommand2DataItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NcRecommand2DataItemListUniOperOortData {
	String? entrancePage1 = '';
	String? eventName = '';
	NcRecommand2DataItemListUniOperOortDataProperties? properties;

	NcRecommand2DataItemListUniOperOortData();

	factory NcRecommand2DataItemListUniOperOortData.fromJson(Map<String, dynamic> json) => $NcRecommand2DataItemListUniOperOortDataFromJson(json);

	Map<String, dynamic> toJson() => $NcRecommand2DataItemListUniOperOortDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NcRecommand2DataItemListUniOperOortDataProperties {
	String? fragmentName1 = '';
	String? actionType = '';
	int? operId = 0;
	String? pageName = '';
	String? actionName = '';

	NcRecommand2DataItemListUniOperOortDataProperties();

	factory NcRecommand2DataItemListUniOperOortDataProperties.fromJson(Map<String, dynamic> json) => $NcRecommand2DataItemListUniOperOortDataPropertiesFromJson(json);

	Map<String, dynamic> toJson() => $NcRecommand2DataItemListUniOperOortDataPropertiesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}