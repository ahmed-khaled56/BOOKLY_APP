import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class BooksDetailsView extends StatelessWidget {
  static const id = "BooksDetailsView";
  const BooksDetailsView({super.key, required this.bookslist});
  final List<BookModel> bookslist;

  @override
  Widget build(BuildContext context) {
    final book = Get.arguments as BookModel;
    return Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(bookItem: book, books: bookslist),
      ),
    );
  }
}
