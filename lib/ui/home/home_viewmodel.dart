import 'package:flutter_stacked_starter/app/app.logger.dart';
import 'package:flutter_stacked_starter/services/posts_service.dart';
import 'package:stacked/stacked.dart';

import '../../app/app.locator.dart';
import '../../models/application_models.dart';

class HomeViewModel extends FutureViewModel<List<Post>> {
  final log = getLogger('HomeViewModel');

  final _postsService = locator<PostsService>();

  @override
  Future<List<Post>> futureToRun() => getPosts();

  Future<List<Post>> getPosts() async {
    final posts = await _postsService.getAllPosts();
    if (posts != null) return posts;
    return [];
  }
}
