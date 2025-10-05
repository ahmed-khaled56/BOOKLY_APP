import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/Book_detalis_image.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_details_info.dart';
import 'package:flutter/material.dart';

class BookDeatilsSection extends StatelessWidget {
  const BookDeatilsSection({super.key, required this.bookItem});
  final BookModel bookItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookDetalisImage(urlImage: bookItem.volumeInfo!.imageLinks!.thumbnail!),
        SizedBox(height: 20),
        BookDetailsInfo(bookItem: bookItem),
      ],
    );
  }
}
