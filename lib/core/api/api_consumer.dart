import 'package:dio/src/options.dart';

abstract class ApiConsumer {
  Future<dynamic> get(
    String path, {
    Object? data,
        Options? options,
    Map<String, dynamic>? queryParameters,
  });
  Future<dynamic> post(
    String path, {
    Object? data,

    Map<String, dynamic>? queryParameters,
    bool isFromData = false,
        ///
        Options? options,
  });
  Future<dynamic> put(
      String path, {
        Object? data,
        Map<String, dynamic>? queryParameters,
        bool isFromData = false,
      });
  Future<dynamic> patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    bool isFromData = false,
  });
  Future<dynamic> delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    bool isFromData = false,
  });
}
