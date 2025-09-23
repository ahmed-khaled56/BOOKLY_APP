import 'package:bookly_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 130,
          height: 35,

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
          ),
          child: Center(
            child: Text(
              "19.99€",
              style: Styles.TextStyle12.copyWith(color: Colors.black),
            ),
          ),
        ),
        Container(
          width: 130,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.red.shade300,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Center(
            child: Text(
              "Free povider",
              style: Styles.TextStyle11.copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
