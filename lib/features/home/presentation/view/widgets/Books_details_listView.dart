import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/books_details_view.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_item_listView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class BooksDetailsListview extends StatefulWidget {
  const BooksDetailsListview({super.key, required this.books});
  final List<BookModel> books;

  @override
  State<BooksDetailsListview> createState() => _BooksDetailsListviewState();
}

class _BooksDetailsListviewState extends State<BooksDetailsListview> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .2,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.books.length,
          itemBuilder: (context, indx) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),

              child: GestureDetector(
                onTap: () {
                  Get.to(
                    arguments: widget.books[indx],
                    () => BooksDetailsView(bookslist: widget.books),
                  );
                },
                child: CustomItemListview(
                  urlImage:
                      widget.books[indx].volumeInfo?.imageLinks?.thumbnail ??
                      '',
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
