import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/Books_details_listView.dart';
import 'package:flutter/material.dart';

class AlsoLikeListview extends StatelessWidget {
  const AlsoLikeListview({super.key, required this.books});
  final List<BookModel> books;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(
              'You can also like',
              style: Styles.TextStyle12.copyWith(
                fontSize: 11,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        BooksDetailsListview(books: books),
      ],
    );
  }
}
