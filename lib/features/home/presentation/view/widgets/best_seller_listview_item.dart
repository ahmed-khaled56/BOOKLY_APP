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
              Text('The Jungle Book', style: Styles.TextStyle30),

              Text('Rudyard Kipling', style: Styles.TextStyle12),

              Row(
                children: [
                  Text("19.5 ", style: Styles.TextStyle30),

                  FaIcon(FontAwesomeIcons.euroSign, size: 12),

                  Padding(
                    padding: const EdgeInsets.only(left: 42.0),
                    child: FaIcon(
                      FontAwesomeIcons.solidStar,
                      size: 12,
                      color: Colors.amberAccent,
                    ),
                  ),

                  const SizedBox(width: 4),
                  Text("4.5 ", style: Styles.TextStyle15),
                  const SizedBox(width: 1),
                  Text(
                    "(23323) ",
                    style: Styles.TextStyle15.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
