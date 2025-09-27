import 'package:bookly_app/core/utlis/assets.dart';
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/Book_rating.dart';
import 'package:flutter/material.dart';

class BestSellerListviewItem extends StatelessWidget {
  const BestSellerListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 90,
          height: MediaQuery.of(context).size.height * .2,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetsData.test_iamge),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .3,
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,

                  'The Jungle Book',
                  style: Styles.TextStyle30,
                ),
              ),

              Text('Rudyard Kipling', style: Styles.TextStyle12),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Text("19.99 €", style: Styles.TextStyle30),
                  ),
                  BookRating(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
