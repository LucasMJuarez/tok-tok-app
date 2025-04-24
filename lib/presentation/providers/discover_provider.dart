import 'package:flutter/material.dart';
import 'package:toktok/domain/entities/video_post.dart';
import 'package:toktok/domain/repositories/video_posts_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  // Repository, DataSource
  final VideoPostRepository videoRepository;
  bool initialLoading = true;

  List<VideoPost> videos = [];

  DiscoverProvider({required this.videoRepository});

  Future<void> loadNextPage() async {
    //todo: cargar videos
    // await Future.delayed(const Duration(seconds: 2));

    // final List<VideoPost> newVideos =
    //     videoPosts
    //         .map(
    //           (video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity(),
    //         )
    //         .toList(); // lo que retorne en este metodo va a ser lo que es newVideos

    final newVideos = await videoRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
