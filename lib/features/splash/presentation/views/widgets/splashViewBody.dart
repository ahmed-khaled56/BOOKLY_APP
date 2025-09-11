import 'package:bookly_app/core/utlis/assets.dart';
import 'package:flutter/material.dart';

class Splashviewbody extends StatelessWidget {
  const Splashviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),

        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            "Read       Free       Books",
            style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
