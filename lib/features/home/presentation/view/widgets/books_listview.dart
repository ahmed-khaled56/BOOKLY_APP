import 'package:bookly_app/core/widgets/errors_widget/text_error.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_cubit_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/books_details_view.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_item_listView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class BooksListview extends StatelessWidget {
  const BooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedCubitCubit, FeaturedState>(
      builder: (context, state) {
        if (state is FeaturedFailurState) {
          return TextError(errorText: state.erMessage);
        }
        if (state is FeaturedSucessState) {
          return SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .28,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, indx) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(
                        arguments: state.books[indx],
                        () => BooksDetailsView(bookslist: state.books),
                      );
                    },
                    child: CustomItemListview(
                      urlImage:
                          state.books[indx].volumeInfo!.imageLinks!.thumbnail!,
                    ),
                  ),
                );
              },
            ),
          );
        }

        return SizedBox(child: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
