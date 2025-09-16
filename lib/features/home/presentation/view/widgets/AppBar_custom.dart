import 'package:flutter/material.dart';
import 'package:bookly_app/core/utlis/assets.dart';

class AppbarCustom extends StatelessWidget {
  const AppbarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            Image.asset(width: 60, height: 60, AssetsData.logo),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ],
        ),
      ),
    );
  }
}
