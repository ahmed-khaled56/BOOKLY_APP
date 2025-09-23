import 'package:bookly_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  BookRating({super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        FaIcon(FontAwesomeIcons.solidStar, size: 12, color: Colors.amberAccent),
        const SizedBox(width: 4),
        Text("4.5 ", style: Styles.TextStyle15),
        const SizedBox(width: 1),
        Text(
          "(23323) ",
          style: Styles.TextStyle15.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
