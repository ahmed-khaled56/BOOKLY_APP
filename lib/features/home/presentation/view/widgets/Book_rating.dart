import 'package:bookly_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  final String rate;
  final String ratingsCount;

  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rate,
    required this.ratingsCount,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        rate != ""
            ? FaIcon(
                FontAwesomeIcons.solidStar,
                size: 12,
                color: Colors.amberAccent,
              )
            : SizedBox(),
        const SizedBox(width: 4),
        Text(rate, style: Styles.TextStyle15),
        const SizedBox(width: 1),
        ratingsCount != ""
            ? Text(
                "($ratingsCount)",
                style: Styles.TextStyle15.copyWith(color: Colors.grey),
              )
            : SizedBox(),
      ],
    );
  }
}
