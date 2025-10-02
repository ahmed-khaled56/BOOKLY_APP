import 'package:bookly_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class TextError extends StatelessWidget {
  const TextError({super.key, required this.errorText});
  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errorText, style: Styles.TextStyle15));
  }
}
