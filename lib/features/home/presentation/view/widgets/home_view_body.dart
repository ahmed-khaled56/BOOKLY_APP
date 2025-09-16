import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/AppBar_custom.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/books_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppbarCustom(),
          BooksListview(),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text('Best Seller', style: Styles.mediumTitel),
          ),
        ],
      ),
    );
  }
}
