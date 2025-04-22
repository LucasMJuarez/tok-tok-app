import 'package:flutter/material.dart';
import 'package:toktok/domain/entities/video_post.dart';
import 'package:toktok/infrastructure/models/local_video_model.dart';
import 'package:toktok/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  //todo Repository, DataSource
  bool initialLoading = true;

  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    //todo: cargar videos
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos =
        videoPosts
            .map(
              (video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity(),
            )
            .toList(); // lo que retorne en este metodo va a ser lo que es newVideos

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
