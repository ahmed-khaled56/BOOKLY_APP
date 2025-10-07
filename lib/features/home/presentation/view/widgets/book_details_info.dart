import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/Book_rating.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/Books_action.dart';
import 'package:flutter/material.dart';

class BookDetailsInfo extends StatelessWidget {
  const BookDetailsInfo({super.key, required this.bookItem});
  final BookModel bookItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,

            bookItem.volumeInfo!.title!,
            style: Styles.TextStyle30.copyWith(fontSize: 22),
          ),
        ),
        SizedBox(height: 2),

        Text(
          textAlign: TextAlign.center,
          bookItem.volumeInfo!.authors![0],
          style: Styles.TextStyle12.copyWith(
            fontSize: 14,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(height: 8),

        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rate: bookItem.volumeInfo?.rating ?? "0",
          ratingsCount: bookItem.volumeInfo?.countRating ?? "0",
        ),
        SizedBox(height: 20),
        BooksAction(
          url: bookItem.volumeInfo?.previewLink ?? "",
          price: bookItem.saleInfo?.listPrice?.amount ?? "Free",
          coinType: bookItem.saleInfo?.listPrice?.currencyCode ?? "",
        ),
      ],
    );
  }
}
