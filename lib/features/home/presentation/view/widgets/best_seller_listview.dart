import 'package:bookly_app/features/home/presentation/view/widgets/best_seller_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BestSellerListview extends StatelessWidget {
  const BestSellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: BestSellerListviewItem(),
        );
      },
    );
  }
}
