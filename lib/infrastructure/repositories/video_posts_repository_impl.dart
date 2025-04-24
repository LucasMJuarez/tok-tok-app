import 'package:toktok/domain/datasources/video_posts_datasource.dart';
import 'package:toktok/domain/entities/video_post.dart';
import 'package:toktok/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostDatasource
  videoDatasource; //necesito un origen de la fuente de datos, cualquiera sea

  VideoPostsRepositoryImpl({required this.videoDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videoDatasource.getTrendingVideosByPage(page);
  }
}
