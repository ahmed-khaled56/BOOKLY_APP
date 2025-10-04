import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomItemListview extends StatelessWidget {
  const CustomItemListview({super.key, this.urlImage = ""});
  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 60,

      // height: MediaQuery.of(context).size.height * .1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          imageUrl: urlImage,
          fit: BoxFit.fill,

          errorWidget: (context, url, error) => Icon(Icons.error),
          placeholder: (context, url) =>
              const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
