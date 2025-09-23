import 'package:bookly_app/core/utlis/assets.dart';
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/Book_rating.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/Books_action.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/Custom_appbar_details.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomAppbarDetails(),

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
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BooksAction(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
              backgrounColor: Colors.white,
              textColor: Colors.black,
              text: "19.99€",
            ),
            BooksAction(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              backgrounColor: Color(0xFFEF8262),
              textColor: Colors.white,
              text: "Free preview",
            ),
          ],
        ),
      ],
    );
  }
}
