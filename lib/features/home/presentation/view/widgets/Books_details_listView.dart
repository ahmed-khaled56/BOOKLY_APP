import 'package:bookly_app/core/widgets/errors_widget/text_error.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/books_details_view.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_item_listView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class BooksDetailsListview extends StatelessWidget {
  const BooksDetailsListview({super.key, required this.books});
  final List<BookModel> books;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.Books.length,
                itemBuilder: (context, indx) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),

                    child: GestureDetector(
                      onTap: () {
                        Get.to(
                          arguments: books[indx],
                          () => BooksDetailsView(bookslist: state.Books),
                        );
                      },
                      child: CustomItemListview(
                        urlImage:
                            state
                                .Books[indx]
                                .volumeInfo
                                ?.imageLinks
                                ?.thumbnail ??
                            '',
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is SimilarBooksFailur) {
          return TextError(errorText: state.errormessage);
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
