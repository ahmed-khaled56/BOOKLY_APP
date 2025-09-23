import 'package:flutter/material.dart';
import 'package:bookly_app/core/utlis/assets.dart';

class CustomAppbarDetails extends StatelessWidget {
  const CustomAppbarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.close)),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
