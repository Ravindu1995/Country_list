import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio()
    ..options = BaseOptions(
      baseUrl: "https://restcountries.com/v3.1/",
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );
  return dio;
});
