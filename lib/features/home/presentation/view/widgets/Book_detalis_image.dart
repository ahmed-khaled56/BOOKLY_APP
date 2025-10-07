import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookDetalisImage extends StatelessWidget {
  const BookDetalisImage({super.key, required this.urlImage});
  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: CachedNetworkImage(
        imageUrl: urlImage,
        fit: BoxFit.fill,

        errorWidget: (context, url, error) => Icon(Icons.error),
        placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
