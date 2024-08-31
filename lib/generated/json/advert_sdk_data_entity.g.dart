import 'package:flutter_actions/generated/json/base/json_convert_content.dart';
import 'package:flutter_actions/net/bean/tab/car/advert_sdk_data_entity.dart';

AdvertSdkDataEntity $AdvertSdkDataEntityFromJson(Map<String, dynamic> json) {
  final AdvertSdkDataEntity advertSdkDataEntity = AdvertSdkDataEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    advertSdkDataEntity.id = id;
  }
  final String? style = jsonConvert.convert<String>(json['style']);
  if (style != null) {
    advertSdkDataEntity.style = style;
  }
  final bool? closeable = jsonConvert.convert<bool>(json['closeable']);
  if (closeable != null) {
    advertSdkDataEntity.closeable = closeable;
  }
  final int? checkTime = jsonConvert.convert<int>(json['checkTime']);
  if (checkTime != null) {
    advertSdkDataEntity.checkTime = checkTime;
  }
  final int? cacheTime = jsonConvert.convert<int>(json['cacheTime']);
  if (cacheTime != null) {
    advertSdkDataEntity.cacheTime = cacheTime;
  }
  final List<AdvertSdkDataList>? list = (json['list'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<AdvertSdkDataList>(e) as AdvertSdkDataList)
      .toList();
  if (list != null) {
    advertSdkDataEntity.list = list;
  }
  final String? extra = jsonConvert.convert<String>(json['extra']);
  if (extra != null) {
    advertSdkDataEntity.extra = extra;
  }
  final int? showLogType = jsonConvert.convert<int>(json['showLogType']);
  if (showLogType != null) {
    advertSdkDataEntity.showLogType = showLogType;
  }
  final dynamic debugInfo = json['debugInfo'];
  if (debugInfo != null) {
    advertSdkDataEntity.debugInfo = debugInfo;
  }
  final int? adlessDuration = jsonConvert.convert<int>(json['adlessDuration']);
  if (adlessDuration != null) {
    advertSdkDataEntity.adlessDuration = adlessDuration;
  }
  final int? advertNumber = jsonConvert.convert<int>(json['advertNumber']);
  if (advertNumber != null) {
    advertSdkDataEntity.advertNumber = advertNumber;
  }
  final String? closeWho = jsonConvert.convert<String>(json['closeWho']);
  if (closeWho != null) {
    advertSdkDataEntity.closeWho = closeWho;
  }
  final int? rewardRegisterTime = jsonConvert.convert<int>(
      json['rewardRegisterTime']);
  if (rewardRegisterTime != null) {
    advertSdkDataEntity.rewardRegisterTime = rewardRegisterTime;
  }
  return advertSdkDataEntity;
}

Map<String, dynamic> $AdvertSdkDataEntityToJson(AdvertSdkDataEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['style'] = entity.style;
  data['closeable'] = entity.closeable;
  data['checkTime'] = entity.checkTime;
  data['cacheTime'] = entity.cacheTime;
  data['list'] = entity.list?.map((v) => v.toJson()).toList();
  data['extra'] = entity.extra;
  data['showLogType'] = entity.showLogType;
  data['debugInfo'] = entity.debugInfo;
  data['adlessDuration'] = entity.adlessDuration;
  data['advertNumber'] = entity.advertNumber;
  data['closeWho'] = entity.closeWho;
  data['rewardRegisterTime'] = entity.rewardRegisterTime;
  return data;
}

extension AdvertSdkDataEntityExtension on AdvertSdkDataEntity {
  AdvertSdkDataEntity copyWith({
    int? id,
    String? style,
    bool? closeable,
    int? checkTime,
    int? cacheTime,
    List<AdvertSdkDataList>? list,
    String? extra,
    int? showLogType,
    dynamic debugInfo,
    int? adlessDuration,
    int? advertNumber,
    String? closeWho,
    int? rewardRegisterTime,
  }) {
    return AdvertSdkDataEntity()
      ..id = id ?? this.id
      ..style = style ?? this.style
      ..closeable = closeable ?? this.closeable
      ..checkTime = checkTime ?? this.checkTime
      ..cacheTime = cacheTime ?? this.cacheTime
      ..list = list ?? this.list
      ..extra = extra ?? this.extra
      ..showLogType = showLogType ?? this.showLogType
      ..debugInfo = debugInfo ?? this.debugInfo
      ..adlessDuration = adlessDuration ?? this.adlessDuration
      ..advertNumber = advertNumber ?? this.advertNumber
      ..closeWho = closeWho ?? this.closeWho
      ..rewardRegisterTime = rewardRegisterTime ?? this.rewardRegisterTime;
  }
}

AdvertSdkDataList $AdvertSdkDataListFromJson(Map<String, dynamic> json) {
  final AdvertSdkDataList advertSdkDataList = AdvertSdkDataList();
  final String? advertId = jsonConvert.convert<String>(json['advertId']);
  if (advertId != null) {
    advertSdkDataList.advertId = advertId;
  }
  final String? resourceId = jsonConvert.convert<String>(json['resourceId']);
  if (resourceId != null) {
    advertSdkDataList.resourceId = resourceId;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    advertSdkDataList.type = type;
  }
  final String? label = jsonConvert.convert<String>(json['label']);
  if (label != null) {
    advertSdkDataList.label = label;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    advertSdkDataList.title = title;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    advertSdkDataList.description = description;
  }
  final String? expiredTimeInfo = jsonConvert.convert<String>(
      json['expiredTimeInfo']);
  if (expiredTimeInfo != null) {
    advertSdkDataList.expiredTimeInfo = expiredTimeInfo;
  }
  final int? expiredTime = jsonConvert.convert<int>(json['expiredTime']);
  if (expiredTime != null) {
    advertSdkDataList.expiredTime = expiredTime;
  }
  final String? startTimeInfo = jsonConvert.convert<String>(
      json['startTimeInfo']);
  if (startTimeInfo != null) {
    advertSdkDataList.startTimeInfo = startTimeInfo;
  }
  final int? startTime = jsonConvert.convert<int>(json['startTime']);
  if (startTime != null) {
    advertSdkDataList.startTime = startTime;
  }
  final int? displayOrder = jsonConvert.convert<int>(json['displayOrder']);
  if (displayOrder != null) {
    advertSdkDataList.displayOrder = displayOrder;
  }
  final AdvertSdkDataListContent? content = jsonConvert.convert<
      AdvertSdkDataListContent>(json['content']);
  if (content != null) {
    advertSdkDataList.content = content;
  }
  final List<
      AdvertSdkDataListOutsideStatistics>? outsideStatistics = (json['outsideStatistics'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<AdvertSdkDataListOutsideStatistics>(
          e) as AdvertSdkDataListOutsideStatistics).toList();
  if (outsideStatistics != null) {
    advertSdkDataList.outsideStatistics = outsideStatistics;
  }
  final double? showDuration = jsonConvert.convert<double>(
      json['showDuration']);
  if (showDuration != null) {
    advertSdkDataList.showDuration = showDuration;
  }
  final dynamic track = json['track'];
  if (track != null) {
    advertSdkDataList.track = track;
  }
  final int? adCreateTime = jsonConvert.convert<int>(json['adCreateTime']);
  if (adCreateTime != null) {
    advertSdkDataList.adCreateTime = adCreateTime;
  }
  final int? adShowTime = jsonConvert.convert<int>(json['adShowTime']);
  if (adShowTime != null) {
    advertSdkDataList.adShowTime = adShowTime;
  }
  final String? extra = jsonConvert.convert<String>(json['extra']);
  if (extra != null) {
    advertSdkDataList.extra = extra;
  }
  final dynamic redDot = json['redDot'];
  if (redDot != null) {
    advertSdkDataList.redDot = redDot;
  }
  final String? adOriginMarkIcon = jsonConvert.convert<String>(
      json['adOriginMarkIcon']);
  if (adOriginMarkIcon != null) {
    advertSdkDataList.adOriginMarkIcon = adOriginMarkIcon;
  }
  final dynamic adWebviewDisclaimerContent = json['adWebviewDisclaimerContent'];
  if (adWebviewDisclaimerContent != null) {
    advertSdkDataList.adWebviewDisclaimerContent = adWebviewDisclaimerContent;
  }
  final String? adWebviewLeaveAlert = jsonConvert.convert<String>(
      json['adWebviewLeaveAlert']);
  if (adWebviewLeaveAlert != null) {
    advertSdkDataList.adWebviewLeaveAlert = adWebviewLeaveAlert;
  }
  final dynamic adWebviewPayAlert = json['adWebviewPayAlert'];
  if (adWebviewPayAlert != null) {
    advertSdkDataList.adWebviewPayAlert = adWebviewPayAlert;
  }
  final double? biddingPrice = jsonConvert.convert<double>(
      json['biddingPrice']);
  if (biddingPrice != null) {
    advertSdkDataList.biddingPrice = biddingPrice;
  }
  final int? biddingType = jsonConvert.convert<int>(json['biddingType']);
  if (biddingType != null) {
    advertSdkDataList.biddingType = biddingType;
  }
  final int? cd = jsonConvert.convert<int>(json['cd']);
  if (cd != null) {
    advertSdkDataList.cd = cd;
  }
  final String? clickableArea = jsonConvert.convert<String>(
      json['clickableArea']);
  if (clickableArea != null) {
    advertSdkDataList.clickableArea = clickableArea;
  }
  final AdvertSdkDataListCtaInfo? ctaInfo = jsonConvert.convert<
      AdvertSdkDataListCtaInfo>(json['ctaInfo']);
  if (ctaInfo != null) {
    advertSdkDataList.ctaInfo = ctaInfo;
  }
  final dynamic ecpmLevel = json['ecpmLevel'];
  if (ecpmLevel != null) {
    advertSdkDataList.ecpmLevel = ecpmLevel;
  }
  final double? er = jsonConvert.convert<double>(json['er']);
  if (er != null) {
    advertSdkDataList.er = er;
  }
  final int? flowAdType = jsonConvert.convert<int>(json['flowAdType']);
  if (flowAdType != null) {
    advertSdkDataList.flowAdType = flowAdType;
  }
  final dynamic interactiveStyle = json['interactiveStyle'];
  if (interactiveStyle != null) {
    advertSdkDataList.interactiveStyle = interactiveStyle;
  }
  final dynamic labelLocation = json['labelLocation'];
  if (labelLocation != null) {
    advertSdkDataList.labelLocation = labelLocation;
  }
  final int? landingPagePaymentPopupType = jsonConvert.convert<int>(
      json['landingPagePaymentPopupType']);
  if (landingPagePaymentPopupType != null) {
    advertSdkDataList.landingPagePaymentPopupType = landingPagePaymentPopupType;
  }
  final int? marketProtocol = jsonConvert.convert<int>(json['marketProtocol']);
  if (marketProtocol != null) {
    advertSdkDataList.marketProtocol = marketProtocol;
  }
  final int? popupButtonCountdown = jsonConvert.convert<int>(
      json['popupButtonCountdown']);
  if (popupButtonCountdown != null) {
    advertSdkDataList.popupButtonCountdown = popupButtonCountdown;
  }
  final String? redPacketUrl = jsonConvert.convert<String>(
      json['redPacketUrl']);
  if (redPacketUrl != null) {
    advertSdkDataList.redPacketUrl = redPacketUrl;
  }
  final int? requestType = jsonConvert.convert<int>(json['requestType']);
  if (requestType != null) {
    advertSdkDataList.requestType = requestType;
  }
  final int? resourceDisplayStyle = jsonConvert.convert<int>(
      json['resourceDisplayStyle']);
  if (resourceDisplayStyle != null) {
    advertSdkDataList.resourceDisplayStyle = resourceDisplayStyle;
  }
  final dynamic settlePrice = json['settlePrice'];
  if (settlePrice != null) {
    advertSdkDataList.settlePrice = settlePrice;
  }
  final List<dynamic>? subAdvertList = (json['subAdvertList'] as List<dynamic>?)
      ?.map(
          (e) => e)
      .toList();
  if (subAdvertList != null) {
    advertSdkDataList.subAdvertList = subAdvertList;
  }
  final dynamic webViewHeaders = json['webViewHeaders'];
  if (webViewHeaders != null) {
    advertSdkDataList.webViewHeaders = webViewHeaders;
  }
  final int? webviewDownloadType = jsonConvert.convert<int>(
      json['webviewDownloadType']);
  if (webviewDownloadType != null) {
    advertSdkDataList.webviewDownloadType = webviewDownloadType;
  }
  final dynamic webviewUaSuffix = json['webviewUaSuffix'];
  if (webviewUaSuffix != null) {
    advertSdkDataList.webviewUaSuffix = webviewUaSuffix;
  }
  final int? wipeStyle = jsonConvert.convert<int>(json['wipeStyle']);
  if (wipeStyle != null) {
    advertSdkDataList.wipeStyle = wipeStyle;
  }
  final String? wipeText = jsonConvert.convert<String>(json['wipeText']);
  if (wipeText != null) {
    advertSdkDataList.wipeText = wipeText;
  }
  final bool? closeable = jsonConvert.convert<bool>(json['closeable']);
  if (closeable != null) {
    advertSdkDataList.closeable = closeable;
  }
  final bool? commercial = jsonConvert.convert<bool>(json['commercial']);
  if (commercial != null) {
    advertSdkDataList.commercial = commercial;
  }
  final bool? dislike = jsonConvert.convert<bool>(json['dislike']);
  if (dislike != null) {
    advertSdkDataList.dislike = dislike;
  }
  return advertSdkDataList;
}

Map<String, dynamic> $AdvertSdkDataListToJson(AdvertSdkDataList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['advertId'] = entity.advertId;
  data['resourceId'] = entity.resourceId;
  data['type'] = entity.type;
  data['label'] = entity.label;
  data['title'] = entity.title;
  data['description'] = entity.description;
  data['expiredTimeInfo'] = entity.expiredTimeInfo;
  data['expiredTime'] = entity.expiredTime;
  data['startTimeInfo'] = entity.startTimeInfo;
  data['startTime'] = entity.startTime;
  data['displayOrder'] = entity.displayOrder;
  data['content'] = entity.content?.toJson();
  data['outsideStatistics'] =
      entity.outsideStatistics?.map((v) => v.toJson()).toList();
  data['showDuration'] = entity.showDuration;
  data['track'] = entity.track;
  data['adCreateTime'] = entity.adCreateTime;
  data['adShowTime'] = entity.adShowTime;
  data['extra'] = entity.extra;
  data['redDot'] = entity.redDot;
  data['adOriginMarkIcon'] = entity.adOriginMarkIcon;
  data['adWebviewDisclaimerContent'] = entity.adWebviewDisclaimerContent;
  data['adWebviewLeaveAlert'] = entity.adWebviewLeaveAlert;
  data['adWebviewPayAlert'] = entity.adWebviewPayAlert;
  data['biddingPrice'] = entity.biddingPrice;
  data['biddingType'] = entity.biddingType;
  data['cd'] = entity.cd;
  data['clickableArea'] = entity.clickableArea;
  data['ctaInfo'] = entity.ctaInfo?.toJson();
  data['ecpmLevel'] = entity.ecpmLevel;
  data['er'] = entity.er;
  data['flowAdType'] = entity.flowAdType;
  data['interactiveStyle'] = entity.interactiveStyle;
  data['labelLocation'] = entity.labelLocation;
  data['landingPagePaymentPopupType'] = entity.landingPagePaymentPopupType;
  data['marketProtocol'] = entity.marketProtocol;
  data['popupButtonCountdown'] = entity.popupButtonCountdown;
  data['redPacketUrl'] = entity.redPacketUrl;
  data['requestType'] = entity.requestType;
  data['resourceDisplayStyle'] = entity.resourceDisplayStyle;
  data['settlePrice'] = entity.settlePrice;
  data['subAdvertList'] = entity.subAdvertList;
  data['webViewHeaders'] = entity.webViewHeaders;
  data['webviewDownloadType'] = entity.webviewDownloadType;
  data['webviewUaSuffix'] = entity.webviewUaSuffix;
  data['wipeStyle'] = entity.wipeStyle;
  data['wipeText'] = entity.wipeText;
  data['closeable'] = entity.closeable;
  data['commercial'] = entity.commercial;
  data['dislike'] = entity.dislike;
  return data;
}

extension AdvertSdkDataListExtension on AdvertSdkDataList {
  AdvertSdkDataList copyWith({
    String? advertId,
    String? resourceId,
    String? type,
    String? label,
    String? title,
    String? description,
    String? expiredTimeInfo,
    int? expiredTime,
    String? startTimeInfo,
    int? startTime,
    int? displayOrder,
    AdvertSdkDataListContent? content,
    List<AdvertSdkDataListOutsideStatistics>? outsideStatistics,
    double? showDuration,
    dynamic track,
    int? adCreateTime,
    int? adShowTime,
    String? extra,
    dynamic redDot,
    String? adOriginMarkIcon,
    dynamic adWebviewDisclaimerContent,
    String? adWebviewLeaveAlert,
    dynamic adWebviewPayAlert,
    double? biddingPrice,
    int? biddingType,
    int? cd,
    String? clickableArea,
    AdvertSdkDataListCtaInfo? ctaInfo,
    dynamic ecpmLevel,
    double? er,
    int? flowAdType,
    dynamic interactiveStyle,
    dynamic labelLocation,
    int? landingPagePaymentPopupType,
    int? marketProtocol,
    int? popupButtonCountdown,
    String? redPacketUrl,
    int? requestType,
    int? resourceDisplayStyle,
    dynamic settlePrice,
    List<dynamic>? subAdvertList,
    dynamic webViewHeaders,
    int? webviewDownloadType,
    dynamic webviewUaSuffix,
    int? wipeStyle,
    String? wipeText,
    bool? closeable,
    bool? commercial,
    bool? dislike,
  }) {
    return AdvertSdkDataList()
      ..advertId = advertId ?? this.advertId
      ..resourceId = resourceId ?? this.resourceId
      ..type = type ?? this.type
      ..label = label ?? this.label
      ..title = title ?? this.title
      ..description = description ?? this.description
      ..expiredTimeInfo = expiredTimeInfo ?? this.expiredTimeInfo
      ..expiredTime = expiredTime ?? this.expiredTime
      ..startTimeInfo = startTimeInfo ?? this.startTimeInfo
      ..startTime = startTime ?? this.startTime
      ..displayOrder = displayOrder ?? this.displayOrder
      ..content = content ?? this.content
      ..outsideStatistics = outsideStatistics ?? this.outsideStatistics
      ..showDuration = showDuration ?? this.showDuration
      ..track = track ?? this.track
      ..adCreateTime = adCreateTime ?? this.adCreateTime
      ..adShowTime = adShowTime ?? this.adShowTime
      ..extra = extra ?? this.extra
      ..redDot = redDot ?? this.redDot
      ..adOriginMarkIcon = adOriginMarkIcon ?? this.adOriginMarkIcon
      ..adWebviewDisclaimerContent = adWebviewDisclaimerContent ??
          this.adWebviewDisclaimerContent
      ..adWebviewLeaveAlert = adWebviewLeaveAlert ?? this.adWebviewLeaveAlert
      ..adWebviewPayAlert = adWebviewPayAlert ?? this.adWebviewPayAlert
      ..biddingPrice = biddingPrice ?? this.biddingPrice
      ..biddingType = biddingType ?? this.biddingType
      ..cd = cd ?? this.cd
      ..clickableArea = clickableArea ?? this.clickableArea
      ..ctaInfo = ctaInfo ?? this.ctaInfo
      ..ecpmLevel = ecpmLevel ?? this.ecpmLevel
      ..er = er ?? this.er
      ..flowAdType = flowAdType ?? this.flowAdType
      ..interactiveStyle = interactiveStyle ?? this.interactiveStyle
      ..labelLocation = labelLocation ?? this.labelLocation
      ..landingPagePaymentPopupType = landingPagePaymentPopupType ??
          this.landingPagePaymentPopupType
      ..marketProtocol = marketProtocol ?? this.marketProtocol
      ..popupButtonCountdown = popupButtonCountdown ?? this.popupButtonCountdown
      ..redPacketUrl = redPacketUrl ?? this.redPacketUrl
      ..requestType = requestType ?? this.requestType
      ..resourceDisplayStyle = resourceDisplayStyle ?? this.resourceDisplayStyle
      ..settlePrice = settlePrice ?? this.settlePrice
      ..subAdvertList = subAdvertList ?? this.subAdvertList
      ..webViewHeaders = webViewHeaders ?? this.webViewHeaders
      ..webviewDownloadType = webviewDownloadType ?? this.webviewDownloadType
      ..webviewUaSuffix = webviewUaSuffix ?? this.webviewUaSuffix
      ..wipeStyle = wipeStyle ?? this.wipeStyle
      ..wipeText = wipeText ?? this.wipeText
      ..closeable = closeable ?? this.closeable
      ..commercial = commercial ?? this.commercial
      ..dislike = dislike ?? this.dislike;
  }
}

AdvertSdkDataListContent $AdvertSdkDataListContentFromJson(
    Map<String, dynamic> json) {
  final AdvertSdkDataListContent advertSdkDataListContent = AdvertSdkDataListContent();
  final String? image = jsonConvert.convert<String>(json['image']);
  if (image != null) {
    advertSdkDataListContent.image = image;
  }
  final String? subtitle = jsonConvert.convert<String>(json['subtitle']);
  if (subtitle != null) {
    advertSdkDataListContent.subtitle = subtitle;
  }
  final String? width = jsonConvert.convert<String>(json['width']);
  if (width != null) {
    advertSdkDataListContent.width = width;
  }
  final AdvertSdkDataListContentAction? action = jsonConvert.convert<
      AdvertSdkDataListContentAction>(json['action']);
  if (action != null) {
    advertSdkDataListContent.action = action;
  }
  final String? label = jsonConvert.convert<String>(json['label']);
  if (label != null) {
    advertSdkDataListContent.label = label;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    advertSdkDataListContent.title = title;
  }
  final String? height = jsonConvert.convert<String>(json['height']);
  if (height != null) {
    advertSdkDataListContent.height = height;
  }
  final String? target = jsonConvert.convert<String>(json['target']);
  if (target != null) {
    advertSdkDataListContent.target = target;
  }
  return advertSdkDataListContent;
}

Map<String, dynamic> $AdvertSdkDataListContentToJson(
    AdvertSdkDataListContent entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['image'] = entity.image;
  data['subtitle'] = entity.subtitle;
  data['width'] = entity.width;
  data['action'] = entity.action?.toJson();
  data['label'] = entity.label;
  data['title'] = entity.title;
  data['height'] = entity.height;
  data['target'] = entity.target;
  return data;
}

extension AdvertSdkDataListContentExtension on AdvertSdkDataListContent {
  AdvertSdkDataListContent copyWith({
    String? image,
    String? subtitle,
    String? width,
    AdvertSdkDataListContentAction? action,
    String? label,
    String? title,
    String? height,
    String? target,
  }) {
    return AdvertSdkDataListContent()
      ..image = image ?? this.image
      ..subtitle = subtitle ?? this.subtitle
      ..width = width ?? this.width
      ..action = action ?? this.action
      ..label = label ?? this.label
      ..title = title ?? this.title
      ..height = height ?? this.height
      ..target = target ?? this.target;
  }
}

AdvertSdkDataListContentAction $AdvertSdkDataListContentActionFromJson(
    Map<String, dynamic> json) {
  final AdvertSdkDataListContentAction advertSdkDataListContentAction = AdvertSdkDataListContentAction();
  final String? showToolbar = jsonConvert.convert<String>(json['showToolbar']);
  if (showToolbar != null) {
    advertSdkDataListContentAction.showToolbar = showToolbar;
  }
  final String? aslUrl = jsonConvert.convert<String>(json['aslUrl']);
  if (aslUrl != null) {
    advertSdkDataListContentAction.aslUrl = aslUrl;
  }
  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    advertSdkDataListContentAction.text = text;
  }
  final String? event = jsonConvert.convert<String>(json['event']);
  if (event != null) {
    advertSdkDataListContentAction.event = event;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    advertSdkDataListContentAction.type = type;
  }
  final String? dplUrl = jsonConvert.convert<String>(json['dplUrl']);
  if (dplUrl != null) {
    advertSdkDataListContentAction.dplUrl = dplUrl;
  }
  return advertSdkDataListContentAction;
}

Map<String, dynamic> $AdvertSdkDataListContentActionToJson(
    AdvertSdkDataListContentAction entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['showToolbar'] = entity.showToolbar;
  data['aslUrl'] = entity.aslUrl;
  data['text'] = entity.text;
  data['event'] = entity.event;
  data['type'] = entity.type;
  data['dplUrl'] = entity.dplUrl;
  return data;
}

extension AdvertSdkDataListContentActionExtension on AdvertSdkDataListContentAction {
  AdvertSdkDataListContentAction copyWith({
    String? showToolbar,
    String? aslUrl,
    String? text,
    String? event,
    String? type,
    String? dplUrl,
  }) {
    return AdvertSdkDataListContentAction()
      ..showToolbar = showToolbar ?? this.showToolbar
      ..aslUrl = aslUrl ?? this.aslUrl
      ..text = text ?? this.text
      ..event = event ?? this.event
      ..type = type ?? this.type
      ..dplUrl = dplUrl ?? this.dplUrl;
  }
}

AdvertSdkDataListOutsideStatistics $AdvertSdkDataListOutsideStatisticsFromJson(
    Map<String, dynamic> json) {
  final AdvertSdkDataListOutsideStatistics advertSdkDataListOutsideStatistics = AdvertSdkDataListOutsideStatistics();
  final int? interval = jsonConvert.convert<int>(json['interval']);
  if (interval != null) {
    advertSdkDataListOutsideStatistics.interval = interval;
  }
  final String? onlineTrack = jsonConvert.convert<String>(json['onlineTrack']);
  if (onlineTrack != null) {
    advertSdkDataListOutsideStatistics.onlineTrack = onlineTrack;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    advertSdkDataListOutsideStatistics.type = type;
  }
  return advertSdkDataListOutsideStatistics;
}

Map<String, dynamic> $AdvertSdkDataListOutsideStatisticsToJson(
    AdvertSdkDataListOutsideStatistics entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['interval'] = entity.interval;
  data['onlineTrack'] = entity.onlineTrack;
  data['type'] = entity.type;
  return data;
}

extension AdvertSdkDataListOutsideStatisticsExtension on AdvertSdkDataListOutsideStatistics {
  AdvertSdkDataListOutsideStatistics copyWith({
    int? interval,
    String? onlineTrack,
    String? type,
  }) {
    return AdvertSdkDataListOutsideStatistics()
      ..interval = interval ?? this.interval
      ..onlineTrack = onlineTrack ?? this.onlineTrack
      ..type = type ?? this.type;
  }
}

AdvertSdkDataListCtaInfo $AdvertSdkDataListCtaInfoFromJson(
    Map<String, dynamic> json) {
  final AdvertSdkDataListCtaInfo advertSdkDataListCtaInfo = AdvertSdkDataListCtaInfo();
  final dynamic ctaStyle = json['ctaStyle'];
  if (ctaStyle != null) {
    advertSdkDataListCtaInfo.ctaStyle = ctaStyle;
  }
  final dynamic ctaText = json['ctaText'];
  if (ctaText != null) {
    advertSdkDataListCtaInfo.ctaText = ctaText;
  }
  return advertSdkDataListCtaInfo;
}

Map<String, dynamic> $AdvertSdkDataListCtaInfoToJson(
    AdvertSdkDataListCtaInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['ctaStyle'] = entity.ctaStyle;
  data['ctaText'] = entity.ctaText;
  return data;
}

extension AdvertSdkDataListCtaInfoExtension on AdvertSdkDataListCtaInfo {
  AdvertSdkDataListCtaInfo copyWith({
    dynamic ctaStyle,
    dynamic ctaText,
  }) {
    return AdvertSdkDataListCtaInfo()
      ..ctaStyle = ctaStyle ?? this.ctaStyle
      ..ctaText = ctaText ?? this.ctaText;
  }
}