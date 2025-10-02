import 'package:flutter/material.dart';

class BooksDetailsListview extends StatelessWidget {
  const BooksDetailsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .15,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, indx) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),

              //CustomItemListview(book: books[indx],),
            );
          },
        ),
      ),
    );
  }
}
