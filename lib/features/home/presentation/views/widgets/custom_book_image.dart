import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: SizedBox(
        height: 130,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(width * 0.04),
          child: AspectRatio(
            aspectRatio: 2.6 / 4,
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.fill,
              errorWidget: (context, url, error) {
                return Icon(
                  Icons.error,
                  size: width * 0.1,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
