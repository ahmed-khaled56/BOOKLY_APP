import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/Book_rating.dart';
import 'package:flutter/material.dart';

class BookDetailsInfo extends StatelessWidget {
  const BookDetailsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          overflow: TextOverflow.ellipsis,
          maxLines: 2,

          'The Jungle Book',
          style: Styles.TextStyle30.copyWith(fontSize: 22),
        ),
        SizedBox(height: 2),

        Text(
          'Rudyard Kipling',
          style: Styles.TextStyle12.copyWith(
            fontSize: 14,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(height: 8),
        BookRating(mainAxisAlignment: MainAxisAlignment.center),
      ],
    );
  }
}
