import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/car/u_car_list_item_entity.dart';

UCarListItemEntity $UCarListItemEntityFromJson(Map<String, dynamic> json) {
  final UCarListItemEntity uCarListItemEntity = UCarListItemEntity();
  final List<UCarListItemItemList>? itemList = (json['itemList'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<UCarListItemItemList>(e) as UCarListItemItemList)
      .toList();
  if (itemList != null) {
    uCarListItemEntity.itemList = itemList;
  }
  return uCarListItemEntity;
}

Map<String, dynamic> $UCarListItemEntityToJson(UCarListItemEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['itemList'] = entity.itemList?.map((v) => v.toJson()).toList();
  return data;
}

extension UCarListItemEntityExtension on UCarListItemEntity {
  UCarListItemEntity copyWith({
    List<UCarListItemItemList>? itemList,
  }) {
    return UCarListItemEntity()
      ..itemList = itemList ?? this.itemList;
  }
}

UCarListItemItemList $UCarListItemItemListFromJson(Map<String, dynamic> json) {
  final UCarListItemItemList uCarListItemItemList = UCarListItemItemList();
  final String? country = jsonConvert.convert<String>(json['country']);
  if (country != null) {
    uCarListItemItemList.country = country;
  }
  final int? year = jsonConvert.convert<int>(json['year']);
  if (year != null) {
    uCarListItemItemList.year = year;
  }
  final bool? publishPublishNow = jsonConvert.convert<bool>(
      json['publishPublishNow']);
  if (publishPublishNow != null) {
    uCarListItemItemList.publishPublishNow = publishPublishNow;
  }
  final double? purchasePrice = jsonConvert.convert<double>(
      json['purchasePrice']);
  if (purchasePrice != null) {
    uCarListItemItemList.purchasePrice = purchasePrice;
  }
  final String? boardTime = jsonConvert.convert<String>(json['boardTime']);
  if (boardTime != null) {
    uCarListItemItemList.boardTime = boardTime;
  }
  final dynamic merchantId = json['merchantId'];
  if (merchantId != null) {
    uCarListItemItemList.merchantId = merchantId;
  }
  final int? monthlyPayment = jsonConvert.convert<int>(json['monthlyPayment']);
  if (monthlyPayment != null) {
    uCarListItemItemList.monthlyPayment = monthlyPayment;
  }
  final String? carNo = jsonConvert.convert<String>(json['carNo']);
  if (carNo != null) {
    uCarListItemItemList.carNo = carNo;
  }
  final double? price = jsonConvert.convert<double>(json['price']);
  if (price != null) {
    uCarListItemItemList.price = price;
  }
  final int? downPayment = jsonConvert.convert<int>(json['downPayment']);
  if (downPayment != null) {
    uCarListItemItemList.downPayment = downPayment;
  }
  final int? downPaymentRatio = jsonConvert.convert<int>(
      json['downPaymentRatio']);
  if (downPaymentRatio != null) {
    uCarListItemItemList.downPaymentRatio = downPaymentRatio;
  }
  final double? decline = jsonConvert.convert<double>(json['decline']);
  if (decline != null) {
    uCarListItemItemList.decline = decline;
  }
  final double? displacement = jsonConvert.convert<double>(
      json['displacement']);
  if (displacement != null) {
    uCarListItemItemList.displacement = displacement;
  }
  final int? model = jsonConvert.convert<int>(json['model']);
  if (model != null) {
    uCarListItemItemList.model = model;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    uCarListItemItemList.id = id;
  }
  final int? brand = jsonConvert.convert<int>(json['brand']);
  if (brand != null) {
    uCarListItemItemList.brand = brand;
  }
  final int? mileage = jsonConvert.convert<int>(json['mileage']);
  if (mileage != null) {
    uCarListItemItemList.mileage = mileage;
  }
  final UCarListItemItemListImage? image = jsonConvert.convert<
      UCarListItemItemListImage>(json['image']);
  if (image != null) {
    uCarListItemItemList.image = image;
  }
  final List<UCarListItemItemListImages>? images = (json['images'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<UCarListItemItemListImages>(
          e) as UCarListItemItemListImages).toList();
  if (images != null) {
    uCarListItemItemList.images = images;
  }
  final String? brandName = jsonConvert.convert<String>(json['brandName']);
  if (brandName != null) {
    uCarListItemItemList.brandName = brandName;
  }
  final String? seriesName = jsonConvert.convert<String>(json['seriesName']);
  if (seriesName != null) {
    uCarListItemItemList.seriesName = seriesName;
  }
  final UCarListItemItemListSellerInfo? sellerInfo = jsonConvert.convert<
      UCarListItemItemListSellerInfo>(json['sellerInfo']);
  if (sellerInfo != null) {
    uCarListItemItemList.sellerInfo = sellerInfo;
  }
  final List<UCarListItemItemListLabels>? labels = (json['labels'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<UCarListItemItemListLabels>(
          e) as UCarListItemItemListLabels).toList();
  if (labels != null) {
    uCarListItemItemList.labels = labels;
  }
  final String? detailWebUrl = jsonConvert.convert<String>(
      json['detailWebUrl']);
  if (detailWebUrl != null) {
    uCarListItemItemList.detailWebUrl = detailWebUrl;
  }
  final String? style = jsonConvert.convert<String>(json['style']);
  if (style != null) {
    uCarListItemItemList.style = style;
  }
  final int? sellerType = jsonConvert.convert<int>(json['sellerType']);
  if (sellerType != null) {
    uCarListItemItemList.sellerType = sellerType;
  }
  final int? fewNew = jsonConvert.convert<int>(json['fewNew']);
  if (fewNew != null) {
    uCarListItemItemList.fewNew = fewNew;
  }
  final int? dataSource = jsonConvert.convert<int>(json['dataSource']);
  if (dataSource != null) {
    uCarListItemItemList.dataSource = dataSource;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    uCarListItemItemList.status = status;
  }
  final String? no = jsonConvert.convert<String>(json['no']);
  if (no != null) {
    uCarListItemItemList.no = no;
  }
  final String? color = jsonConvert.convert<String>(json['color']);
  if (color != null) {
    uCarListItemItemList.color = color;
  }
  final int? city = jsonConvert.convert<int>(json['city']);
  if (city != null) {
    uCarListItemItemList.city = city;
  }
  final double? newCarPrice = jsonConvert.convert<double>(json['newCarPrice']);
  if (newCarPrice != null) {
    uCarListItemItemList.newCarPrice = newCarPrice;
  }
  final String? styleName = jsonConvert.convert<String>(json['styleName']);
  if (styleName != null) {
    uCarListItemItemList.styleName = styleName;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    uCarListItemItemList.title = title;
  }
  final dynamic includeTransferFee = json['includeTransferFee'];
  if (includeTransferFee != null) {
    uCarListItemItemList.includeTransferFee = includeTransferFee;
  }
  final String? sid = jsonConvert.convert<String>(json['sid']);
  if (sid != null) {
    uCarListItemItemList.sid = sid;
  }
  final int? customerStatus = jsonConvert.convert<int>(json['customerStatus']);
  if (customerStatus != null) {
    uCarListItemItemList.customerStatus = customerStatus;
  }
  final bool? isAuth = jsonConvert.convert<bool>(json['isAuth']);
  if (isAuth != null) {
    uCarListItemItemList.isAuth = isAuth;
  }
  final String? cityName = jsonConvert.convert<String>(json['cityName']);
  if (cityName != null) {
    uCarListItemItemList.cityName = cityName;
  }
  final int? gearbox = jsonConvert.convert<int>(json['gearbox']);
  if (gearbox != null) {
    uCarListItemItemList.gearbox = gearbox;
  }
  final double? star = jsonConvert.convert<double>(json['star']);
  if (star != null) {
    uCarListItemItemList.star = star;
  }
  final int? updateTime = jsonConvert.convert<int>(json['updateTime']);
  if (updateTime != null) {
    uCarListItemItemList.updateTime = updateTime;
  }
  final int? status2 = jsonConvert.convert<int>(json['status2']);
  if (status2 != null) {
    uCarListItemItemList.status2 = status2;
  }
  final String? modelName = jsonConvert.convert<String>(json['modelName']);
  if (modelName != null) {
    uCarListItemItemList.modelName = modelName;
  }
  final int? createTime = jsonConvert.convert<int>(json['createTime']);
  if (createTime != null) {
    uCarListItemItemList.createTime = createTime;
  }
  final int? series = jsonConvert.convert<int>(json['series']);
  if (series != null) {
    uCarListItemItemList.series = series;
  }
  final String? gearboxName = jsonConvert.convert<String>(json['gearboxName']);
  if (gearboxName != null) {
    uCarListItemItemList.gearboxName = gearboxName;
  }
  final dynamic businessType = json['businessType'];
  if (businessType != null) {
    uCarListItemItemList.businessType = businessType;
  }
  final String? detailH5Url = jsonConvert.convert<String>(json['detailH5Url']);
  if (detailH5Url != null) {
    uCarListItemItemList.detailH5Url = detailH5Url;
  }
  final String? age = jsonConvert.convert<String>(json['age']);
  if (age != null) {
    uCarListItemItemList.age = age;
  }
  return uCarListItemItemList;
}

Map<String, dynamic> $UCarListItemItemListToJson(UCarListItemItemList entity) {
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

extension UCarListItemItemListExtension on UCarListItemItemList {
  UCarListItemItemList copyWith({
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
    UCarListItemItemListImage? image,
    List<UCarListItemItemListImages>? images,
    String? brandName,
    String? seriesName,
    UCarListItemItemListSellerInfo? sellerInfo,
    List<UCarListItemItemListLabels>? labels,
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
    return UCarListItemItemList()
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

UCarListItemItemListImage $UCarListItemItemListImageFromJson(
    Map<String, dynamic> json) {
  final UCarListItemItemListImage uCarListItemItemListImage = UCarListItemItemListImage();
  final String? small = jsonConvert.convert<String>(json['small']);
  if (small != null) {
    uCarListItemItemListImage.small = small;
  }
  final String? big = jsonConvert.convert<String>(json['big']);
  if (big != null) {
    uCarListItemItemListImage.big = big;
  }
  final String? medium = jsonConvert.convert<String>(json['medium']);
  if (medium != null) {
    uCarListItemItemListImage.medium = medium;
  }
  final String? medium2 = jsonConvert.convert<String>(json['medium2']);
  if (medium2 != null) {
    uCarListItemItemListImage.medium2 = medium2;
  }
  return uCarListItemItemListImage;
}

Map<String, dynamic> $UCarListItemItemListImageToJson(
    UCarListItemItemListImage entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['small'] = entity.small;
  data['big'] = entity.big;
  data['medium'] = entity.medium;
  data['medium2'] = entity.medium2;
  return data;
}

extension UCarListItemItemListImageExtension on UCarListItemItemListImage {
  UCarListItemItemListImage copyWith({
    String? small,
    String? big,
    String? medium,
    String? medium2,
  }) {
    return UCarListItemItemListImage()
      ..small = small ?? this.small
      ..big = big ?? this.big
      ..medium = medium ?? this.medium
      ..medium2 = medium2 ?? this.medium2;
  }
}

UCarListItemItemListImages $UCarListItemItemListImagesFromJson(
    Map<String, dynamic> json) {
  final UCarListItemItemListImages uCarListItemItemListImages = UCarListItemItemListImages();
  final String? small = jsonConvert.convert<String>(json['small']);
  if (small != null) {
    uCarListItemItemListImages.small = small;
  }
  final String? big = jsonConvert.convert<String>(json['big']);
  if (big != null) {
    uCarListItemItemListImages.big = big;
  }
  final String? medium = jsonConvert.convert<String>(json['medium']);
  if (medium != null) {
    uCarListItemItemListImages.medium = medium;
  }
  final String? medium2 = jsonConvert.convert<String>(json['medium2']);
  if (medium2 != null) {
    uCarListItemItemListImages.medium2 = medium2;
  }
  return uCarListItemItemListImages;
}

Map<String, dynamic> $UCarListItemItemListImagesToJson(
    UCarListItemItemListImages entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['small'] = entity.small;
  data['big'] = entity.big;
  data['medium'] = entity.medium;
  data['medium2'] = entity.medium2;
  return data;
}

extension UCarListItemItemListImagesExtension on UCarListItemItemListImages {
  UCarListItemItemListImages copyWith({
    String? small,
    String? big,
    String? medium,
    String? medium2,
  }) {
    return UCarListItemItemListImages()
      ..small = small ?? this.small
      ..big = big ?? this.big
      ..medium = medium ?? this.medium
      ..medium2 = medium2 ?? this.medium2;
  }
}

UCarListItemItemListSellerInfo $UCarListItemItemListSellerInfoFromJson(
    Map<String, dynamic> json) {
  final UCarListItemItemListSellerInfo uCarListItemItemListSellerInfo = UCarListItemItemListSellerInfo();
  final String? address = jsonConvert.convert<String>(json['address']);
  if (address != null) {
    uCarListItemItemListSellerInfo.address = address;
  }
  final dynamic carUsage = json['carUsage'];
  if (carUsage != null) {
    uCarListItemItemListSellerInfo.carUsage = carUsage;
  }
  final String? contacter = jsonConvert.convert<String>(json['contacter']);
  if (contacter != null) {
    uCarListItemItemListSellerInfo.contacter = contacter;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    uCarListItemItemListSellerInfo.description = description;
  }
  final dynamic identity = json['identity'];
  if (identity != null) {
    uCarListItemItemListSellerInfo.identity = identity;
  }
  final double? lat = jsonConvert.convert<double>(json['lat']);
  if (lat != null) {
    uCarListItemItemListSellerInfo.lat = lat;
  }
  final double? lng = jsonConvert.convert<double>(json['lng']);
  if (lng != null) {
    uCarListItemItemListSellerInfo.lng = lng;
  }
  final dynamic sellReason = json['sellReason'];
  if (sellReason != null) {
    uCarListItemItemListSellerInfo.sellReason = sellReason;
  }
  final String? seller = jsonConvert.convert<String>(json['seller']);
  if (seller != null) {
    uCarListItemItemListSellerInfo.seller = seller;
  }
  final dynamic sex = json['sex'];
  if (sex != null) {
    uCarListItemItemListSellerInfo.sex = sex;
  }
  final String? phone = jsonConvert.convert<String>(json['phone']);
  if (phone != null) {
    uCarListItemItemListSellerInfo.phone = phone;
  }
  return uCarListItemItemListSellerInfo;
}

Map<String, dynamic> $UCarListItemItemListSellerInfoToJson(
    UCarListItemItemListSellerInfo entity) {
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

extension UCarListItemItemListSellerInfoExtension on UCarListItemItemListSellerInfo {
  UCarListItemItemListSellerInfo copyWith({
    String? address,
    dynamic carUsage,
    String? contacter,
    String? description,
    dynamic identity,
    double? lat,
    double? lng,
    dynamic sellReason,
    String? seller,
    dynamic sex,
    String? phone,
  }) {
    return UCarListItemItemListSellerInfo()
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

UCarListItemItemListLabels $UCarListItemItemListLabelsFromJson(
    Map<String, dynamic> json) {
  final UCarListItemItemListLabels uCarListItemItemListLabels = UCarListItemItemListLabels();
  final String? color = jsonConvert.convert<String>(json['color']);
  if (color != null) {
    uCarListItemItemListLabels.color = color;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    uCarListItemItemListLabels.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    uCarListItemItemListLabels.name = name;
  }
  return uCarListItemItemListLabels;
}

Map<String, dynamic> $UCarListItemItemListLabelsToJson(
    UCarListItemItemListLabels entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['color'] = entity.color;
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension UCarListItemItemListLabelsExtension on UCarListItemItemListLabels {
  UCarListItemItemListLabels copyWith({
    String? color,
    int? id,
    String? name,
  }) {
    return UCarListItemItemListLabels()
      ..color = color ?? this.color
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}