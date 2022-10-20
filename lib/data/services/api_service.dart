import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dynamic_ui/data/models/ui_model/ui_model.dart';

class ApiService {

  final _dio = Dio(
    BaseOptions(
      baseUrl: "https://dynamic-view-api.free.mockoapp.net/views",
      connectTimeout: 5000,
      receiveTimeout: 3000,
    ),
  );

  Future<List<UiModel>> getUiRequirements() async {
    Response response = await _dio.get(_dio.options.baseUrl);

    if (response.statusCode == HttpStatus.ok) {
      return (response.data['dynamic_views'] as List?)
              ?.map((ui) => UiModel.fromJson(ui))
              .toList() ??
          [];
    } else {
      throw Exception();
    }
  }
}
