import 'package:flutter/material.dart';

class StoryCircleImage extends StatelessWidget {
  const StoryCircleImage({
    Key? key,
    this.imageProvider,
    this.imageRadius = 35,
    required this.color,
  }) : super(key: key);
  final double imageRadius;
  final ImageProvider? imageProvider;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: imageRadius + 20,
      width: imageRadius + 20,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: color,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: CircleAvatar(
          backgroundImage: imageProvider,
        ),
      ),
    );
  }
}
