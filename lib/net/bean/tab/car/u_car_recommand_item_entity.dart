import 'package:flutter_actions/generated/json/base/json_field.dart';
import 'package:flutter_actions/generated/json/u_car_recommand_item_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class UCarRecommandItemEntity {
	List<UCarRecommandItemItemList>? itemList;

	UCarRecommandItemEntity();

	factory UCarRecommandItemEntity.fromJson(Map<String, dynamic> json) => $UCarRecommandItemEntityFromJson(json);

	Map<String, dynamic> toJson() => $UCarRecommandItemEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UCarRecommandItemItemList {
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
	UCarRecommandItemItemListImage? image;
	List<UCarRecommandItemItemListImages>? images;
	String? brandName = '';
	String? seriesName = '';
	UCarRecommandItemItemListSellerInfo? sellerInfo;
	List<UCarRecommandItemItemListLabels>? labels;
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

	UCarRecommandItemItemList();

	factory UCarRecommandItemItemList.fromJson(Map<String, dynamic> json) => $UCarRecommandItemItemListFromJson(json);

	Map<String, dynamic> toJson() => $UCarRecommandItemItemListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UCarRecommandItemItemListImage {
	String? small = '';
	String? big = '';
	String? medium = '';
	String? medium2 = '';

	UCarRecommandItemItemListImage();

	factory UCarRecommandItemItemListImage.fromJson(Map<String, dynamic> json) => $UCarRecommandItemItemListImageFromJson(json);

	Map<String, dynamic> toJson() => $UCarRecommandItemItemListImageToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UCarRecommandItemItemListImages {
	String? small = '';
	String? big = '';
	String? medium = '';
	String? medium2 = '';

	UCarRecommandItemItemListImages();

	factory UCarRecommandItemItemListImages.fromJson(Map<String, dynamic> json) => $UCarRecommandItemItemListImagesFromJson(json);

	Map<String, dynamic> toJson() => $UCarRecommandItemItemListImagesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UCarRecommandItemItemListSellerInfo {
	dynamic address;
	dynamic carUsage;
	String? contacter = '';
	String? description = '';
	dynamic identity;
	dynamic lat;
	dynamic lng;
	dynamic sellReason;
	String? seller = '';
	dynamic sex;
	String? phone = '';

	UCarRecommandItemItemListSellerInfo();

	factory UCarRecommandItemItemListSellerInfo.fromJson(Map<String, dynamic> json) => $UCarRecommandItemItemListSellerInfoFromJson(json);

	Map<String, dynamic> toJson() => $UCarRecommandItemItemListSellerInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UCarRecommandItemItemListLabels {
	String? color = '';
	int? id = 0;
	String? name = '';

	UCarRecommandItemItemListLabels();

	factory UCarRecommandItemItemListLabels.fromJson(Map<String, dynamic> json) => $UCarRecommandItemItemListLabelsFromJson(json);

	Map<String, dynamic> toJson() => $UCarRecommandItemItemListLabelsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}