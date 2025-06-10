import 'package:dio/dio.dart';
import '../../models/post.dart';
import '../exceptions/api_exceptions.dart';
import 'dio_client.dart';

class ApiService {
  final Dio _dio = DioClient().dio;

  Future<List<Post>> fetchPosts() async {
    try {
      final response = await _dio.get('/posts');
      return (response.data as List).map((json) => Post.fromJson(json)).toList();
    } on DioException catch (e) {
      throw ApiException.fromDioError(e);
    }
  }
}
