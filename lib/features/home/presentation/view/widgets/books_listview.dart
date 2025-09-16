import 'package:bookly_app/features/home/presentation/view/widgets/custom_item_listView.dart';
import 'package:flutter/material.dart';

class BooksListview extends StatelessWidget {
  const BooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, indx) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomItemListview(),
          );
        },
      ),
    );
  }
}
