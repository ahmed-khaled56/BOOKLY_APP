import 'package:bookly_app/core/widgets/errors_widget/showSnakBar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/Books_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
    required this.price,
    required this.coinType,
    required this.url,
  });
  final String? price;
  final String? coinType;
  final String? url;

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
          onPressed: () async {
            final Uri _url = Uri.parse(url!);

            if (await canLaunchUrl(_url)) {
              await launchUrl(_url);
            } else {
              showSnakBar(text: "Not Avilable", context: context);
            }
          },
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(14),
            topRight: Radius.circular(14),
          ),
          backgrounColor: Color(0xFFEF8262),
          textColor: Colors.white,
          text: url != null ? "Preview" : "NotAvilable",
        ),
      ],
    );
  }
}
