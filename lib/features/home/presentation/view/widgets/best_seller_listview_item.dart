import 'package:bookly_app/core/utlis/assets.dart';
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListviewItem extends StatelessWidget {
  const BestSellerListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: Container(
            height: 140,
            width: 90,

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
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('The Jungle Book', style: Styles.Bookname),

              Text('Rudyard Kipling', style: Styles.AutherName),

              Row(
                children: [
                  Text("19.5 ", style: Styles.priceStyle),

                  FaIcon(FontAwesomeIcons.euroSign, size: 12),

                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: FaIcon(
                      FontAwesomeIcons.solidStar,
                      size: 12,
                      color: Colors.amberAccent,
                    ),
                  ),

                  const SizedBox(width: 3),
                  Text("4.5 ", style: Styles.rate),
                  const SizedBox(width: 2),
                  Text("(23323) ", style: Styles.downloadNumber),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
