import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/Book_deatils_section.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/Custom_appbar_details.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/also_like_listview.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
    required this.books,
    required this.bookItem,
  });
  final List<BookModel> books;
  final BookModel bookItem;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomAppbarDetails(),

                BookDeatilsSection(bookItem: bookItem),

                SizedBox(height: 50),
                AlsoLikeListview(books: books),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
