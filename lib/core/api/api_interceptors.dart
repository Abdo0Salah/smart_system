import 'package:dio/dio.dart';

import '../../cache/cache_helper.dart';
import 'end_ponits.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    ///لو عايز اضيف حاجه في الهيدر مع الريكويست
    options.headers[ApiKey.token] =
        CacheHelper().getData(key: ApiKey.token) != null
            ? 'FOODAPI ${CacheHelper().getData(key: ApiKey.token)}'
            : null;
    super.onRequest(options, handler);
  }
}
