import 'package:dio/dio.dart';
import 'package:flutter_stacked_starter/app/app.locator.dart';
import 'package:flutter_stacked_starter/app/app.logger.dart';
import 'package:flutter_stacked_starter/constants/app_urls.dart';
import 'package:flutter_stacked_starter/services/api_service.dart';

import '../models/application_models.dart';

class PostsService {
  final log = getLogger('PostsService');

  final _apiService = locator<ApiService>();

  Future<List<Post>?> getAllPosts() async {
    try {
      final ApiResponse response = await _apiService.get(url: postsUrl);
      return response.data.map((post) => Post.fromJson(post)).toList();
    } on DioException catch (e) {
      log.e('DioException occurred: $e');
      return null;
    } catch (e) {
      log.e('An error occurred: $e');
      return null;
    }
  }
}