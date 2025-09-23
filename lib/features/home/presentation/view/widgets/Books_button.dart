import 'package:bookly_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class BooksButton extends StatelessWidget {
  const BooksButton({
    super.key,
    required this.backgrounColor,
    required this.borderRadius,
    required this.textColor,
    required this.text,
  });
  final Color backgrounColor;
  final BorderRadiusGeometry borderRadius;
  final Color textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      height: 35,
      child: TextButton(
        onPressed: () {},

        style: TextButton.styleFrom(
          backgroundColor: backgrounColor,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),

        child: Center(
          child: Text(
            text,
            style: Styles.TextStyle12.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
