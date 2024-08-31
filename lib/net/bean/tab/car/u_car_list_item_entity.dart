import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/u_car_list_item_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class UCarListItemEntity {
	List<UCarListItemItemList>? itemList;

	UCarListItemEntity();

	factory UCarListItemEntity.fromJson(Map<String, dynamic> json) => $UCarListItemEntityFromJson(json);

	Map<String, dynamic> toJson() => $UCarListItemEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UCarListItemItemList {
	String? country = '';
	int? year = 0;
	bool? publishPublishNow = false;
	double? purchasePrice;
	String? boardTime = '';
	dynamic merchantId;
	int? monthlyPayment = 0;
	String? carNo = '';
	double? price;
	int? downPayment = 0;
	int? downPaymentRatio = 0;
	double? decline;
	double? displacement;
	int? model = 0;
	String? id = '';
	int? brand = 0;
	int? mileage = 0;
	UCarListItemItemListImage? image;
	List<UCarListItemItemListImages>? images;
	String? brandName = '';
	String? seriesName = '';
	UCarListItemItemListSellerInfo? sellerInfo;
	List<UCarListItemItemListLabels>? labels;
	String? detailWebUrl = '';
	String? style = '';
	int? sellerType = 0;
	int? fewNew = 0;
	int? dataSource = 0;
	int? status = 0;
	String? no = '';
	String? color = '';
	int? city = 0;
	double? newCarPrice;
	String? styleName = '';
	String? title = '';
	dynamic includeTransferFee;
	String? sid = '';
	int? customerStatus = 0;
	bool? isAuth = false;
	String? cityName = '';
	int? gearbox = 0;
	double? star;
	int? updateTime = 0;
	int? status2 = 0;
	String? modelName = '';
	int? createTime = 0;
	int? series = 0;
	String? gearboxName = '';
	dynamic businessType;
	String? detailH5Url = '';
	String? age = '';

	UCarListItemItemList();

	factory UCarListItemItemList.fromJson(Map<String, dynamic> json) => $UCarListItemItemListFromJson(json);

	Map<String, dynamic> toJson() => $UCarListItemItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UCarListItemItemListImage {
	String? small = '';
	String? big = '';
	String? medium = '';
	String? medium2 = '';

	UCarListItemItemListImage();

	factory UCarListItemItemListImage.fromJson(Map<String, dynamic> json) => $UCarListItemItemListImageFromJson(json);

	Map<String, dynamic> toJson() => $UCarListItemItemListImageToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UCarListItemItemListImages {
	String? small = '';
	String? big = '';
	String? medium = '';
	String? medium2 = '';

	UCarListItemItemListImages();

	factory UCarListItemItemListImages.fromJson(Map<String, dynamic> json) => $UCarListItemItemListImagesFromJson(json);

	Map<String, dynamic> toJson() => $UCarListItemItemListImagesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UCarListItemItemListSellerInfo {
	String? address = '';
	dynamic carUsage;
	String? contacter = '';
	String? description = '';
	dynamic identity;
	double? lat;
	double? lng;
	dynamic sellReason;
	String? seller = '';
	dynamic sex;
	String? phone = '';

	UCarListItemItemListSellerInfo();

	factory UCarListItemItemListSellerInfo.fromJson(Map<String, dynamic> json) => $UCarListItemItemListSellerInfoFromJson(json);

	Map<String, dynamic> toJson() => $UCarListItemItemListSellerInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UCarListItemItemListLabels {
	String? color = '';
	int? id = 0;
	String? name = '';

	UCarListItemItemListLabels();

	factory UCarListItemItemListLabels.fromJson(Map<String, dynamic> json) => $UCarListItemItemListLabelsFromJson(json);

	Map<String, dynamic> toJson() => $UCarListItemItemListLabelsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}