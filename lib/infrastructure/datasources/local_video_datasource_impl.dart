import 'package:toktok/domain/datasources/video_posts_datasource.dart';
import 'package:toktok/domain/entities/video_post.dart';
import 'package:toktok/infrastructure/models/local_video_model.dart';
import 'package:toktok/shared/data/local_video_post.dart';

class LocalVideoDatasource implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) async {
    return [];
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos =
        videoPosts
            .map(
              (video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity(),
            )
            .toList(); // lo que retorne en este metodo va a ser lo que es newVideos
    return newVideos;
  }
}
