import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/car/u_car_recommand_item_entity.dart';

UCarRecommandItemEntity $UCarRecommandItemEntityFromJson(
    Map<String, dynamic> json) {
  final UCarRecommandItemEntity uCarRecommandItemEntity = UCarRecommandItemEntity();
  final List<UCarRecommandItemItemList>? itemList = (json['itemList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<UCarRecommandItemItemList>(
          e) as UCarRecommandItemItemList).toList();
  if (itemList != null) {
    uCarRecommandItemEntity.itemList = itemList;
  }
  return uCarRecommandItemEntity;
}

Map<String, dynamic> $UCarRecommandItemEntityToJson(
    UCarRecommandItemEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  return data;
}

extension UCarRecommandItemEntityExtension on UCarRecommandItemEntity {
  UCarRecommandItemEntity copyWith({
    List<UCarRecommandItemItemList>? itemList,
  }) {
    return UCarRecommandItemEntity()
      ..itemList = itemList ?? this.itemList;
  }
}

UCarRecommandItemItemList $UCarRecommandItemItemListFromJson(
    Map<String, dynamic> json) {
  final UCarRecommandItemItemList uCarRecommandItemItemList = UCarRecommandItemItemList();
  final String? country = jsonConvert.convert<String>(json['country']);
  if (country != null) {
    uCarRecommandItemItemList.country = country;
  }
  final int? year = jsonConvert.convert<int>(json['year']);
  if (year != null) {
    uCarRecommandItemItemList.year = year;
  }
  final bool? publishPublishNow = jsonConvert.convert<bool>(
      json['publishPublishNow']);
  if (publishPublishNow != null) {
    uCarRecommandItemItemList.publishPublishNow = publishPublishNow;
  }
  final double? purchasePrice = jsonConvert.convert<double>(
      json['purchasePrice']);
  if (purchasePrice != null) {
    uCarRecommandItemItemList.purchasePrice = purchasePrice;
  }
  final String? boardTime = jsonConvert.convert<String>(json['boardTime']);
  if (boardTime != null) {
    uCarRecommandItemItemList.boardTime = boardTime;
  }
  final dynamic merchantId = json['merchantId'];
  if (merchantId != null) {
    uCarRecommandItemItemList.merchantId = merchantId;
  }
  final int? monthlyPayment = jsonConvert.convert<int>(json['monthlyPayment']);
  if (monthlyPayment != null) {
    uCarRecommandItemItemList.monthlyPayment = monthlyPayment;
  }
  final String? carNo = jsonConvert.convert<String>(json['carNo']);
  if (carNo != null) {
    uCarRecommandItemItemList.carNo = carNo;
  }
  final double? price = jsonConvert.convert<double>(json['price']);
  if (price != null) {
    uCarRecommandItemItemList.price = price;
  }
  final int? downPayment = jsonConvert.convert<int>(json['downPayment']);
  if (downPayment != null) {
    uCarRecommandItemItemList.downPayment = downPayment;
  }
  final int? downPaymentRatio = jsonConvert.convert<int>(
      json['downPaymentRatio']);
  if (downPaymentRatio != null) {
    uCarRecommandItemItemList.downPaymentRatio = downPaymentRatio;
  }
  final double? decline = jsonConvert.convert<double>(json['decline']);
  if (decline != null) {
    uCarRecommandItemItemList.decline = decline;
  }
  final double? displacement = jsonConvert.convert<double>(
      json['displacement']);
  if (displacement != null) {
    uCarRecommandItemItemList.displacement = displacement;
  }
  final int? model = jsonConvert.convert<int>(json['model']);
  if (model != null) {
    uCarRecommandItemItemList.model = model;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    uCarRecommandItemItemList.id = id;
  }
  final int? brand = jsonConvert.convert<int>(json['brand']);
  if (brand != null) {
    uCarRecommandItemItemList.brand = brand;
  }
  final int? mileage = jsonConvert.convert<int>(json['mileage']);
  if (mileage != null) {
    uCarRecommandItemItemList.mileage = mileage;
  }
  final UCarRecommandItemItemListImage? image = jsonConvert.convert<
      UCarRecommandItemItemListImage>(json['image']);
  if (image != null) {
    uCarRecommandItemItemList.image = image;
  }
  final List<UCarRecommandItemItemListImages>? images = (json['images'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<UCarRecommandItemItemListImages>(
          e) as UCarRecommandItemItemListImages).toList();
  if (images != null) {
    uCarRecommandItemItemList.images = images;
  }
  final String? brandName = jsonConvert.convert<String>(json['brandName']);
  if (brandName != null) {
    uCarRecommandItemItemList.brandName = brandName;
  }
  final String? seriesName = jsonConvert.convert<String>(json['seriesName']);
  if (seriesName != null) {
    uCarRecommandItemItemList.seriesName = seriesName;
  }
  final UCarRecommandItemItemListSellerInfo? sellerInfo = jsonConvert.convert<
      UCarRecommandItemItemListSellerInfo>(json['sellerInfo']);
  if (sellerInfo != null) {
    uCarRecommandItemItemList.sellerInfo = sellerInfo;
  }
  final List<UCarRecommandItemItemListLabels>? labels = (json['labels'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<UCarRecommandItemItemListLabels>(
          e) as UCarRecommandItemItemListLabels).toList();
  if (labels != null) {
    uCarRecommandItemItemList.labels = labels;
  }
  final String? detailWebUrl = jsonConvert.convert<String>(
      json['detailWebUrl']);
  if (detailWebUrl != null) {
    uCarRecommandItemItemList.detailWebUrl = detailWebUrl;
  }
  final String? style = jsonConvert.convert<String>(json['style']);
  if (style != null) {
    uCarRecommandItemItemList.style = style;
  }
  final int? sellerType = jsonConvert.convert<int>(json['sellerType']);
  if (sellerType != null) {
    uCarRecommandItemItemList.sellerType = sellerType;
  }
  final int? fewNew = jsonConvert.convert<int>(json['fewNew']);
  if (fewNew != null) {
    uCarRecommandItemItemList.fewNew = fewNew;
  }
  final int? dataSource = jsonConvert.convert<int>(json['dataSource']);
  if (dataSource != null) {
    uCarRecommandItemItemList.dataSource = dataSource;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    uCarRecommandItemItemList.status = status;
  }
  final String? no = jsonConvert.convert<String>(json['no']);
  if (no != null) {
    uCarRecommandItemItemList.no = no;
  }
  final String? color = jsonConvert.convert<String>(json['color']);
  if (color != null) {
    uCarRecommandItemItemList.color = color;
  }
  final int? city = jsonConvert.convert<int>(json['city']);
  if (city != null) {
    uCarRecommandItemItemList.city = city;
  }
  final double? newCarPrice = jsonConvert.convert<double>(json['newCarPrice']);
  if (newCarPrice != null) {
    uCarRecommandItemItemList.newCarPrice = newCarPrice;
  }
  final String? styleName = jsonConvert.convert<String>(json['styleName']);
  if (styleName != null) {
    uCarRecommandItemItemList.styleName = styleName;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    uCarRecommandItemItemList.title = title;
  }
  final dynamic includeTransferFee = json['includeTransferFee'];
  if (includeTransferFee != null) {
    uCarRecommandItemItemList.includeTransferFee = includeTransferFee;
  }
  final String? sid = jsonConvert.convert<String>(json['sid']);
  if (sid != null) {
    uCarRecommandItemItemList.sid = sid;
  }
  final int? customerStatus = jsonConvert.convert<int>(json['customerStatus']);
  if (customerStatus != null) {
    uCarRecommandItemItemList.customerStatus = customerStatus;
  }
  final bool? isAuth = jsonConvert.convert<bool>(json['isAuth']);
  if (isAuth != null) {
    uCarRecommandItemItemList.isAuth = isAuth;
  }
  final String? cityName = jsonConvert.convert<String>(json['cityName']);
  if (cityName != null) {
    uCarRecommandItemItemList.cityName = cityName;
  }
  final int? gearbox = jsonConvert.convert<int>(json['gearbox']);
  if (gearbox != null) {
    uCarRecommandItemItemList.gearbox = gearbox;
  }
  final double? star = jsonConvert.convert<double>(json['star']);
  if (star != null) {
    uCarRecommandItemItemList.star = star;
  }
  final int? updateTime = jsonConvert.convert<int>(json['updateTime']);
  if (updateTime != null) {
    uCarRecommandItemItemList.updateTime = updateTime;
  }
  final int? status2 = jsonConvert.convert<int>(json['status2']);
  if (status2 != null) {
    uCarRecommandItemItemList.status2 = status2;
  }
  final String? modelName = jsonConvert.convert<String>(json['modelName']);
  if (modelName != null) {
    uCarRecommandItemItemList.modelName = modelName;
  }
  final int? createTime = jsonConvert.convert<int>(json['createTime']);
  if (createTime != null) {
    uCarRecommandItemItemList.createTime = createTime;
  }
  final int? series = jsonConvert.convert<int>(json['series']);
  if (series != null) {
    uCarRecommandItemItemList.series = series;
  }
  final String? gearboxName = jsonConvert.convert<String>(json['gearboxName']);
  if (gearboxName != null) {
    uCarRecommandItemItemList.gearboxName = gearboxName;
  }
  final dynamic businessType = json['businessType'];
  if (businessType != null) {
    uCarRecommandItemItemList.businessType = businessType;
  }
  final String? detailH5Url = jsonConvert.convert<String>(json['detailH5Url']);
  if (detailH5Url != null) {
    uCarRecommandItemItemList.detailH5Url = detailH5Url;
  }
  final String? age = jsonConvert.convert<String>(json['age']);
  if (age != null) {
    uCarRecommandItemItemList.age = age;
  }
  return uCarRecommandItemItemList;
}

Map<String, dynamic> $UCarRecommandItemItemListToJson(
    UCarRecommandItemItemList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['country'] = entity.country;
  data['year'] = entity.year;
  data['publishPublishNow'] = entity.publishPublishNow;
  data['purchasePrice'] = entity.purchasePrice;
  data['boardTime'] = entity.boardTime;
  data['merchantId'] = entity.merchantId;
  data['monthlyPayment'] = entity.monthlyPayment;
  data['carNo'] = entity.carNo;
  data['price'] = entity.price;
  data['downPayment'] = entity.downPayment;
  data['downPaymentRatio'] = entity.downPaymentRatio;
  data['decline'] = entity.decline;
  data['displacement'] = entity.displacement;
  data['model'] = entity.model;
  data['id'] = entity.id;
  data['brand'] = entity.brand;
  data['mileage'] = entity.mileage;
  data['image'] = entity.image?.toJson();
  data['images'] = entity.images?.map((v) => v.toJson()).toList();
  data['brandName'] = entity.brandName;
  data['seriesName'] = entity.seriesName;
  data['sellerInfo'] = entity.sellerInfo?.toJson();
  data['labels'] = entity.labels?.map((v) => v.toJson()).toList();
  data['detailWebUrl'] = entity.detailWebUrl;
  data['style'] = entity.style;
  data['sellerType'] = entity.sellerType;
  data['fewNew'] = entity.fewNew;
  data['dataSource'] = entity.dataSource;
  data['status'] = entity.status;
  data['no'] = entity.no;
  data['color'] = entity.color;
  data['city'] = entity.city;
  data['newCarPrice'] = entity.newCarPrice;
  data['styleName'] = entity.styleName;
  data['title'] = entity.title;
  data['includeTransferFee'] = entity.includeTransferFee;
  data['sid'] = entity.sid;
  data['customerStatus'] = entity.customerStatus;
  data['isAuth'] = entity.isAuth;
  data['cityName'] = entity.cityName;
  data['gearbox'] = entity.gearbox;
  data['star'] = entity.star;
  data['updateTime'] = entity.updateTime;
  data['status2'] = entity.status2;
  data['modelName'] = entity.modelName;
  data['createTime'] = entity.createTime;
  data['series'] = entity.series;
  data['gearboxName'] = entity.gearboxName;
  data['businessType'] = entity.businessType;
  data['detailH5Url'] = entity.detailH5Url;
  data['age'] = entity.age;
  return data;
}

extension UCarRecommandItemItemListExtension on UCarRecommandItemItemList {
  UCarRecommandItemItemList copyWith({
    String? country,
    int? year,
    bool? publishPublishNow,
    double? purchasePrice,
    String? boardTime,
    dynamic merchantId,
    int? monthlyPayment,
    String? carNo,
    double? price,
    int? downPayment,
    int? downPaymentRatio,
    double? decline,
    double? displacement,
    int? model,
    String? id,
    int? brand,
    int? mileage,
    UCarRecommandItemItemListImage? image,
    List<UCarRecommandItemItemListImages>? images,
    String? brandName,
    String? seriesName,
    UCarRecommandItemItemListSellerInfo? sellerInfo,
    List<UCarRecommandItemItemListLabels>? labels,
    String? detailWebUrl,
    String? style,
    int? sellerType,
    int? fewNew,
    int? dataSource,
    int? status,
    String? no,
    String? color,
    int? city,
    double? newCarPrice,
    String? styleName,
    String? title,
    dynamic includeTransferFee,
    String? sid,
    int? customerStatus,
    bool? isAuth,
    String? cityName,
    int? gearbox,
    double? star,
    int? updateTime,
    int? status2,
    String? modelName,
    int? createTime,
    int? series,
    String? gearboxName,
    dynamic businessType,
    String? detailH5Url,
    String? age,
  }) {
    return UCarRecommandItemItemList()
      ..country = country ?? this.country
      ..year = year ?? this.year
      ..publishPublishNow = publishPublishNow ?? this.publishPublishNow
      ..purchasePrice = purchasePrice ?? this.purchasePrice
      ..boardTime = boardTime ?? this.boardTime
      ..merchantId = merchantId ?? this.merchantId
      ..monthlyPayment = monthlyPayment ?? this.monthlyPayment
      ..carNo = carNo ?? this.carNo
      ..price = price ?? this.price
      ..downPayment = downPayment ?? this.downPayment
      ..downPaymentRatio = downPaymentRatio ?? this.downPaymentRatio
      ..decline = decline ?? this.decline
      ..displacement = displacement ?? this.displacement
      ..model = model ?? this.model
      ..id = id ?? this.id
      ..brand = brand ?? this.brand
      ..mileage = mileage ?? this.mileage
      ..image = image ?? this.image
      ..images = images ?? this.images
      ..brandName = brandName ?? this.brandName
      ..seriesName = seriesName ?? this.seriesName
      ..sellerInfo = sellerInfo ?? this.sellerInfo
      ..labels = labels ?? this.labels
      ..detailWebUrl = detailWebUrl ?? this.detailWebUrl
      ..style = style ?? this.style
      ..sellerType = sellerType ?? this.sellerType
      ..fewNew = fewNew ?? this.fewNew
      ..dataSource = dataSource ?? this.dataSource
      ..status = status ?? this.status
      ..no = no ?? this.no
      ..color = color ?? this.color
      ..city = city ?? this.city
      ..newCarPrice = newCarPrice ?? this.newCarPrice
      ..styleName = styleName ?? this.styleName
      ..title = title ?? this.title
      ..includeTransferFee = includeTransferFee ?? this.includeTransferFee
      ..sid = sid ?? this.sid
      ..customerStatus = customerStatus ?? this.customerStatus
      ..isAuth = isAuth ?? this.isAuth
      ..cityName = cityName ?? this.cityName
      ..gearbox = gearbox ?? this.gearbox
      ..star = star ?? this.star
      ..updateTime = updateTime ?? this.updateTime
      ..status2 = status2 ?? this.status2
      ..modelName = modelName ?? this.modelName
      ..createTime = createTime ?? this.createTime
      ..series = series ?? this.series
      ..gearboxName = gearboxName ?? this.gearboxName
      ..businessType = businessType ?? this.businessType
      ..detailH5Url = detailH5Url ?? this.detailH5Url
      ..age = age ?? this.age;
  }
}

UCarRecommandItemItemListImage $UCarRecommandItemItemListImageFromJson(
    Map<String, dynamic> json) {
  final UCarRecommandItemItemListImage uCarRecommandItemItemListImage = UCarRecommandItemItemListImage();
  final String? small = jsonConvert.convert<String>(json['small']);
  if (small != null) {
    uCarRecommandItemItemListImage.small = small;
  }
  final String? big = jsonConvert.convert<String>(json['big']);
  if (big != null) {
    uCarRecommandItemItemListImage.big = big;
  }
  final String? medium = jsonConvert.convert<String>(json['medium']);
  if (medium != null) {
    uCarRecommandItemItemListImage.medium = medium;
  }
  final String? medium2 = jsonConvert.convert<String>(json['medium2']);
  if (medium2 != null) {
    uCarRecommandItemItemListImage.medium2 = medium2;
  }
  return uCarRecommandItemItemListImage;
}

Map<String, dynamic> $UCarRecommandItemItemListImageToJson(
    UCarRecommandItemItemListImage entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['small'] = entity.small;
  data['big'] = entity.big;
  data['medium'] = entity.medium;
  data['medium2'] = entity.medium2;
  return data;
}

extension UCarRecommandItemItemListImageExtension on UCarRecommandItemItemListImage {
  UCarRecommandItemItemListImage copyWith({
    String? small,
    String? big,
    String? medium,
    String? medium2,
  }) {
    return UCarRecommandItemItemListImage()
      ..small = small ?? this.small
      ..big = big ?? this.big
      ..medium = medium ?? this.medium
      ..medium2 = medium2 ?? this.medium2;
  }
}

UCarRecommandItemItemListImages $UCarRecommandItemItemListImagesFromJson(
    Map<String, dynamic> json) {
  final UCarRecommandItemItemListImages uCarRecommandItemItemListImages = UCarRecommandItemItemListImages();
  final String? small = jsonConvert.convert<String>(json['small']);
  if (small != null) {
    uCarRecommandItemItemListImages.small = small;
  }
  final String? big = jsonConvert.convert<String>(json['big']);
  if (big != null) {
    uCarRecommandItemItemListImages.big = big;
  }
  final String? medium = jsonConvert.convert<String>(json['medium']);
  if (medium != null) {
    uCarRecommandItemItemListImages.medium = medium;
  }
  final String? medium2 = jsonConvert.convert<String>(json['medium2']);
  if (medium2 != null) {
    uCarRecommandItemItemListImages.medium2 = medium2;
  }
  return uCarRecommandItemItemListImages;
}

Map<String, dynamic> $UCarRecommandItemItemListImagesToJson(
    UCarRecommandItemItemListImages entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['small'] = entity.small;
  data['big'] = entity.big;
  data['medium'] = entity.medium;
  data['medium2'] = entity.medium2;
  return data;
}

extension UCarRecommandItemItemListImagesExtension on UCarRecommandItemItemListImages {
  UCarRecommandItemItemListImages copyWith({
    String? small,
    String? big,
    String? medium,
    String? medium2,
  }) {
    return UCarRecommandItemItemListImages()
      ..small = small ?? this.small
      ..big = big ?? this.big
      ..medium = medium ?? this.medium
      ..medium2 = medium2 ?? this.medium2;
  }
}

UCarRecommandItemItemListSellerInfo $UCarRecommandItemItemListSellerInfoFromJson(
    Map<String, dynamic> json) {
  final UCarRecommandItemItemListSellerInfo uCarRecommandItemItemListSellerInfo = UCarRecommandItemItemListSellerInfo();
  final dynamic address = json['address'];
  if (address != null) {
    uCarRecommandItemItemListSellerInfo.address = address;
  }
  final dynamic carUsage = json['carUsage'];
  if (carUsage != null) {
    uCarRecommandItemItemListSellerInfo.carUsage = carUsage;
  }
  final String? contacter = jsonConvert.convert<String>(json['contacter']);
  if (contacter != null) {
    uCarRecommandItemItemListSellerInfo.contacter = contacter;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    uCarRecommandItemItemListSellerInfo.description = description;
  }
  final dynamic identity = json['identity'];
  if (identity != null) {
    uCarRecommandItemItemListSellerInfo.identity = identity;
  }
  final dynamic lat = json['lat'];
  if (lat != null) {
    uCarRecommandItemItemListSellerInfo.lat = lat;
  }
  final dynamic lng = json['lng'];
  if (lng != null) {
    uCarRecommandItemItemListSellerInfo.lng = lng;
  }
  final dynamic sellReason = json['sellReason'];
  if (sellReason != null) {
    uCarRecommandItemItemListSellerInfo.sellReason = sellReason;
  }
  final String? seller = jsonConvert.convert<String>(json['seller']);
  if (seller != null) {
    uCarRecommandItemItemListSellerInfo.seller = seller;
  }
  final dynamic sex = json['sex'];
  if (sex != null) {
    uCarRecommandItemItemListSellerInfo.sex = sex;
  }
  final String? phone = jsonConvert.convert<String>(json['phone']);
  if (phone != null) {
    uCarRecommandItemItemListSellerInfo.phone = phone;
  }
  return uCarRecommandItemItemListSellerInfo;
}

Map<String, dynamic> $UCarRecommandItemItemListSellerInfoToJson(
    UCarRecommandItemItemListSellerInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['address'] = entity.address;
  data['carUsage'] = entity.carUsage;
  data['contacter'] = entity.contacter;
  data['description'] = entity.description;
  data['identity'] = entity.identity;
  data['lat'] = entity.lat;
  data['lng'] = entity.lng;
  data['sellReason'] = entity.sellReason;
  data['seller'] = entity.seller;
  data['sex'] = entity.sex;
  data['phone'] = entity.phone;
  return data;
}

extension UCarRecommandItemItemListSellerInfoExtension on UCarRecommandItemItemListSellerInfo {
  UCarRecommandItemItemListSellerInfo copyWith({
    dynamic address,
    dynamic carUsage,
    String? contacter,
    String? description,
    dynamic identity,
    dynamic lat,
    dynamic lng,
    dynamic sellReason,
    String? seller,
    dynamic sex,
    String? phone,
  }) {
    return UCarRecommandItemItemListSellerInfo()
      ..address = address ?? this.address
      ..carUsage = carUsage ?? this.carUsage
      ..contacter = contacter ?? this.contacter
      ..description = description ?? this.description
      ..identity = identity ?? this.identity
      ..lat = lat ?? this.lat
      ..lng = lng ?? this.lng
      ..sellReason = sellReason ?? this.sellReason
      ..seller = seller ?? this.seller
      ..sex = sex ?? this.sex
      ..phone = phone ?? this.phone;
  }
}

UCarRecommandItemItemListLabels $UCarRecommandItemItemListLabelsFromJson(
    Map<String, dynamic> json) {
  final UCarRecommandItemItemListLabels uCarRecommandItemItemListLabels = UCarRecommandItemItemListLabels();
  final String? color = jsonConvert.convert<String>(json['color']);
  if (color != null) {
    uCarRecommandItemItemListLabels.color = color;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    uCarRecommandItemItemListLabels.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    uCarRecommandItemItemListLabels.name = name;
  }
  return uCarRecommandItemItemListLabels;
}

Map<String, dynamic> $UCarRecommandItemItemListLabelsToJson(
    UCarRecommandItemItemListLabels entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['color'] = entity.color;
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension UCarRecommandItemItemListLabelsExtension on UCarRecommandItemItemListLabels {
  UCarRecommandItemItemListLabels copyWith({
    String? color,
    int? id,
    String? name,
  }) {
    return UCarRecommandItemItemListLabels()
      ..color = color ?? this.color
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}