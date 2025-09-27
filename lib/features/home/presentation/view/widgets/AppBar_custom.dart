import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/search/presentation/view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/core/utlis/assets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AppbarCustom extends StatelessWidget {
  const AppbarCustom({super.key, required this.icon});
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            Image.asset(width: 60, height: 60, AssetsData.logo),
            Spacer(),
            IconButton(
              onPressed: () {
                Get.to(
                  () => SearchView(),
                  transition: Transition.rightToLeft,
                  duration: kTransitionDuraion,
                );
              },
              icon: Icon(icon),
            ),
          ],
        ),
      ),
    );
  }
}
