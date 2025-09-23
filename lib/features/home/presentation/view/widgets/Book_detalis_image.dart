import 'package:bookly_app/core/utlis/assets.dart';
import 'package:flutter/material.dart';

class BookDetalisImage extends StatelessWidget {
  const BookDetalisImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155,
      width: 110,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(13),

        image: DecorationImage(
          fit: BoxFit.fill,

          image: AssetImage(AssetsData.test_iamge),
        ),
      ),
    );
  }
}
