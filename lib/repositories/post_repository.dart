import '../core/network/api_service.dart';
import '../models/post.dart';

class PostRepository {
  final ApiService _apiService = ApiService();

  Future<List<Post>> getPosts() async {
    return await _apiService.fetchPosts();
  }
}
