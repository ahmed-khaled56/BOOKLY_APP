import 'package:bookly_app/features/home/presentation/view/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BooksDetailsView extends StatelessWidget {
  static const id = "BooksDetailsView";
  const BooksDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: BookDetailsViewBody()));
  }
}
