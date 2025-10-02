import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class CustomItemListview extends StatelessWidget {
  const CustomItemListview({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,

      child: AspectRatio(
        aspectRatio: 2.6 / 4.1,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.amber,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(bookModel.volumeInfo!.imageLinks!.thumbnail!),
            ),
          ),
        ),
      ),
    );
  }
}
