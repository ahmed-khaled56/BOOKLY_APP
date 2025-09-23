import 'package:bookly_app/core/utlis/assets.dart';
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/Book_rating.dart';
import 'package:flutter/material.dart';

class BookDeatilsSection extends StatelessWidget {
  const BookDeatilsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 155,
          width: 110,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(13),

            image: DecorationImage(
              fit: BoxFit.fill,

              image: AssetImage(AssetsData.test_iamge),
            ),
          ),
        ),
        SizedBox(height: 20),

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
