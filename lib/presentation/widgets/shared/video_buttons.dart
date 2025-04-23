import 'package:flutter/material.dart';
import 'package:toktok/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          value: video.likes,
          color: Colors.red,
          iconData: Icons.favorite,
        ),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color color;

  const _CustomIconButton({
    required this.value,
    required this.color,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: () {}, icon: Icon(iconData, color: Colors.red)),

        Text('$value'),
      ],
    );
  }
}
