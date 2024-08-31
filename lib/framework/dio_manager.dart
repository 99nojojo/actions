import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_file_store/dio_cache_interceptor_file_store.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioManager {
  late final Dio _dio;
  CacheOptions? _cacheOptions;

  static DioManager? _instance;

  factory DioManager() => _instance ??= DioManager._internal();

  static DioManager get shared => _instance ??= DioManager._internal();

  DioManager._internal() {
    BaseOptions baseOptions = BaseOptions(
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        sendTimeout: const Duration(seconds: 10));
    _dio = Dio(baseOptions);
  }

  Future<void> dioInterceptorConfig() async {
    _cacheOptions = await _getFileCacheOption();

    _dio
      ..interceptors.add(DioCacheInterceptor(options: _cacheOptions!))
      ..interceptors.add(RetryInterceptor(dio: _dio))
      ..interceptors.add(InterceptorsWrapper(onRequest: (request, handle) {
        //可以添加header信息
        // request.headers["token"] = "";
        handle.next(request);
      }, onResponse: (response, handler) {
        response.data ??= jsonDecode("{}}");
        handler.next(response);
      }, onError: (e, handler) {
        print("错误 error: ${e.error} ==== ${e.message}");
      }))
      ..interceptors.add(PrettyDioLogger(
          request: false,
          requestHeader: false,
          requestBody: false,
          responseBody: false,
          responseHeader: false,
          compact: false,
          error: false));
  }

  Future<CacheOptions> _getFileCacheOption({String cacheDirName = ""}) async {
    Directory dir = await getTemporaryDirectory();
    String path = join(dir.path, cacheDirName);
    var options = CacheOptions(
        store: FileCacheStore(path),
        policy: CachePolicy.request,
        hitCacheOnErrorExcept: [
          401,
          403,
        ],
        maxStale: const Duration(days: 7),
        priority: CachePriority.normal,
        allowPostMethod: true,
        keyBuilder: CacheOptions.defaultCacheKeyBuilder);

    return options;
  }
}

extension DioRequestExtension on DioManager {
  Future<NetResult<T>> request<T>(String url,
      {required T Function(Map<String, dynamic>)? fromJson,
      String? newBaseUrl,
      bool isPost = false,
      Map<String, dynamic> params = const {},
      bool useCache = false}) async {
    NetResult<T> onCacheResult(Response response, bool isCache) {
      bool isSuccess = response.statusCode == 200;
      var data = response.data["data"];
      return NetResult(
          resultType: isSuccess ? NetResultType.success : NetResultType.failure,
          data: fromJson != null ? fromJson.call(data) : data,
          code: response.data["errorCode"] ?? 0,
          message: response.data["message"],
          statusCode: response.statusCode ?? 0,
          statusMessage: response.statusMessage,
          isCache: useCache);
    }

    try {
      _dio.setBaseUrl(newBaseUrl);
      _dio.updateMethod(isPost);
      Options options = _cacheOptions!
          .copyWith(
            policy: useCache ? CachePolicy.refresh : CachePolicy.noCache,
          )
          .toOptions();
      final response = await _dio.request(url, data: params, options: options);
      NetResult<T> result;
      if (response.extra[CacheResponse.fromNetwork] == false) {
        var newCacheOptions =
            _cacheOptions!.copyWith(policy: CachePolicy.noCache).toOptions();
        final newResponse =
            await _dio.request(url, data: params, options: newCacheOptions);
        if (newResponse.statusCode != 200) {
          result = onCacheResult(response, true);
          return result;
        }
        return onCacheResult(newResponse, false);
      } else {
        return onCacheResult(response, false);
      }
    } catch (error) {
      return NetResult(resultType: NetResultType.catchError, catchError: e);
    }
  }
}

extension DioExtension on Dio {
  void setBaseUrl(String? baseUrl) {
    if (baseUrl?.isNotEmpty == true) {
      options.baseUrl = baseUrl!;
    }
  }

  void updateMethod(bool isPost) {
    options.method = isPost ? "POST" : "GET";
  }
}

enum NetResultType {
  success,
  failure,
  catchError,
}

class NetResult<T> {
  final T? data;
  final String? message;
  final String? errorCode;
  final int code;
  final int statusCode;
  final String? statusMessage;
  final dynamic catchError;
  final NetResultType resultType;
  final bool isCache;

  NetResult(
      {required this.resultType,
      this.errorCode,
      this.data,
      this.message,
      this.code = 0,
      this.isCache = false,
      this.statusCode = 0,
      this.statusMessage,
      this.catchError});
}
