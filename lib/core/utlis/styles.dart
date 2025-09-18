import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const mediumTitel = TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );
  static const Bookname = TextStyle(
    fontFamily: kGtSectraFine,
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const AutherName = TextStyle(
    fontFamily: kGtSectraFine,
    color: Colors.white,
    fontSize: 12,

    fontWeight: FontWeight.w100,
  );

  static const priceStyle = TextStyle(
    fontFamily: kGtSectraFine,
    color: Colors.white,
    fontSize: 20,

    fontWeight: FontWeight.bold,
  );

  static const downloadNumber = TextStyle(
    fontFamily: kGtSectraFine,
    color: Colors.white,
    fontSize: 15,
  );

  static const rate = TextStyle(
    fontFamily: kGtSectraFine,
    color: Colors.white,
    fontSize: 15,

    fontWeight: FontWeight.bold,
  );
}
