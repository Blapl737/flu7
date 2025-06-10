import 'package:dio/dio.dart';

class ApiException implements Exception {
  final String message;

  ApiException(this.message);

  factory ApiException.fromDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ApiException("Ошибка: Тайм-аут соединения.");
      case DioExceptionType.receiveTimeout:
        return ApiException("Ошибка: Время ожидания ответа истекло.");
      case DioExceptionType.badResponse:
        return ApiException("Ошибка: Неверный ответ от сервера.");
      default:
        return ApiException("Произошла неизвестная ошибка.");
    }
  }
}
