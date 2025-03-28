import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PhotoPost extends StatelessWidget {
  final String url;
  final String postID;
  final double width;
  final double height;

  const PhotoPost({
    super.key,
    required this.url,
    required this.postID,
    this.width = double.maxFinite,
    this.height = 0,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: width,
        height: height == 0 ? 250 : height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              url,
            ),
          ),
        ),
      ),
    );
  }
}
