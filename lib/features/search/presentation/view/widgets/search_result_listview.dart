import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/widgets/errors_widget/text_error.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_cubit_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/books_details_view.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/best_seller_listview_item.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class SearchResultListview extends StatelessWidget {
  const SearchResultListview({super.key, @required this.booksObj});
  final BookDetailsViewBody? booksObj;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedCubitCubit, FeaturedState>(
      builder: (context, state) {
        if (state is FeaturedSucessState) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,

            scrollDirection: Axis.vertical,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 20),
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
        if (state is FeaturedFailurState) {
          return TextError(errorText: state.erMessage);
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
