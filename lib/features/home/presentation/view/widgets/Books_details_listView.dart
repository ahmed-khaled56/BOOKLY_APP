import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_item_listView.dart';
import 'package:flutter/material.dart';

class BooksDetailsListview extends StatelessWidget {
  const BooksDetailsListview({super.key, required this.books});
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .2,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: books.length,
          itemBuilder: (context, indx) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),

              child: CustomItemListview(
                urlImage: books[indx].volumeInfo?.imageLinks?.thumbnail ?? '',
              ),
            );
          },
        ),
      ),
    );
  }
}
