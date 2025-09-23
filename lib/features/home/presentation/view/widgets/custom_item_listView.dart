import 'package:bookly_app/core/utlis/assets.dart';
import 'package:flutter/material.dart';

class CustomItemListview extends StatelessWidget {
  const CustomItemListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,

      child: AspectRatio(
        aspectRatio: 2.6 / 4.1,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.amber,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.test_iamge),
            ),
          ),
        ),
      ),
    );
  }
}
