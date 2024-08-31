import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/nc_recommand3_data_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class NcRecommand3DataEntity {
	int? displayOrder = 0;
	List<NcRecommand3DataItemList>? itemList;
	String? title = '';
	int? typeCode = 0;
	bool? uniOper = false;

	NcRecommand3DataEntity();

	factory NcRecommand3DataEntity.fromJson(Map<String, dynamic> json) => $NcRecommand3DataEntityFromJson(json);

	Map<String, dynamic> toJson() => $NcRecommand3DataEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NcRecommand3DataItemList {
	String? actionUrl = '';
	String? logoUrl = '';
	String? name = '';
	String? showMaskPrice = '';
	bool? uniOper = false;

	NcRecommand3DataItemList();

	factory NcRecommand3DataItemList.fromJson(Map<String, dynamic> json) => $NcRecommand3DataItemListFromJson(json);

	Map<String, dynamic> toJson() => $NcRecommand3DataItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}