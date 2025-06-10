import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repositories/post_repository.dart';
import '../models/post.dart';

final postRepositoryProvider = Provider((ref) => PostRepository());

final postProvider = FutureProvider<List<Post>>((ref) async {
  return ref.read(postRepositoryProvider).getPosts();
});
