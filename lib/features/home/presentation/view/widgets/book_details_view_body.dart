import 'package:bookly_app/core/utlis/assets.dart';
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/Custom_appbar_details.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomAppbarDetails(),

        Container(
          height: 155,
          width: 110,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(13),

            image: DecorationImage(
              fit: BoxFit.fill,

              image: AssetImage(AssetsData.test_iamge),
            ),
          ),
        ),
        SizedBox(height: 20),

        Text(
          overflow: TextOverflow.ellipsis,
          maxLines: 2,

          'The Jungle Book',
          style: Styles.TextStyle30.copyWith(fontSize: 22),
        ),
        SizedBox(height: 2),

        Text(
          'Rudyard Kipling',
          style: Styles.TextStyle12.copyWith(fontSize: 14),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.solidStar,
              size: 12,
              color: Colors.amberAccent,
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
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 130,
              height: 35,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  "19.99€",
                  style: Styles.TextStyle12.copyWith(color: Colors.black),
                ),
              ),
            ),
            Container(
              width: 130,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.red.shade300,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  "Free povider",
                  style: Styles.TextStyle11.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
