import 'package:bookly_app/features/home/presentation/view/widgets/Books_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.price, required this.coinType});
  final String? price;
  final String? coinType;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BooksButton(
          coinType: coinType,
          text: price,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(14),
            topLeft: Radius.circular(14),
          ),
          backgrounColor: Colors.white,
          textColor: Colors.black,
        ),
        BooksButton(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(14),
            topRight: Radius.circular(14),
          ),
          backgrounColor: Color(0xFFEF8262),
          textColor: Colors.white,
          text: "Free preview",
        ),
      ],
    );
  }
}
