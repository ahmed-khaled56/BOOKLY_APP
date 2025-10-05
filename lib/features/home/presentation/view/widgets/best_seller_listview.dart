import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/widgets/errors_widget/text_error.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/books_details_view.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/best_seller_listview_item.dart';
import 'package:flutter/material.dart';

class BestSellerListview extends StatelessWidget {
  const BestSellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestSucessState) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: GestureDetector(
                  onTap: () {
                    Get.to(
                      () => BooksDetailsView(bookslist: state.books),
                      arguments: state.books[index],
                      duration: kTransitionDuraion,
                    );
                  },
                  child: BestSellerListviewItem(bookmodel: state.books[index]),
                ),
              );
            },
          );
        }
        if (state is NewestFailurState) {
          return TextError(errorText: state.erMessage);
        }
        return SizedBox(child: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
