import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/view/books_details_view.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/best_seller_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchResultListview extends StatelessWidget {
  const SearchResultListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,

      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: GestureDetector(
            onTap: () {
              // Get.to(
              //   () =>// const BooksDetailsView(),
              //   transition: Transition.rightToLeft,
              //   duration: kTransitionDuraion,
              // );
            },
            // child: BestSellerListviewItem(bookmodel: ,),
          ),
        );
      },
    );
  }
}
