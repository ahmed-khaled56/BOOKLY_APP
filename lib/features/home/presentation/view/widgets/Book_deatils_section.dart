import 'package:bookly_app/features/home/presentation/view/widgets/Book_detalis_image.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_details_info.dart';
import 'package:flutter/material.dart';

class BookDeatilsSection extends StatelessWidget {
  const BookDeatilsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [BookDetalisImage(), SizedBox(height: 20), BookDetailsInfo()],
    );
  }
}
