import 'package:bookly_app/core/widgets/errors_widget/text_error.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_cubit_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_item_listView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListview extends StatelessWidget {
  const BooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedCubitCubit, FeaturedState>(
      builder: (context, state) {
        if (state is FeaturedFailurState) {
          TextError(errorText: state.erMessage);
        }
        if (state is FeaturedSucessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, indx) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomItemListview(bookModel: state.books[indx]),
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
