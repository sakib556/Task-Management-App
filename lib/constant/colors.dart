import 'package:flutter/material.dart';

class MyColors {
  MyColors._();
  static const backgroundColor = Color(0xffF3F3F3);
  static const primaryColor = Color(0xff042E2B);
  static const secondaryColor = Color(0xB2042E2B);
  static const subtitleColor = Color(0x80042E2B);
  static const greenColor = Color(0xff24966D);
  static const whiteColor = Color(0xffFFFFFF);
  static const softGreyColor = Color(0x33FFFFFF);
  static const greyColor = Color(0xB2FFFFFF);
  static const borderGreyColor = Color(0x4DFFFFFF);
  static const ashColor = Color(0xffB4C1C0);
  static const deepGreyColor = Color(0x1AFFFFFF);
}

final primarySwatch = MaterialColor(MyColors.primaryColor.value, _swatch);
final _swatch = {
  50: MyColors.primaryColor.withOpacity(0.1),
  100: MyColors.primaryColor.withOpacity(0.2),
  200: MyColors.primaryColor.withOpacity(0.3),
  300: MyColors.primaryColor.withOpacity(0.4),
  400: MyColors.primaryColor.withOpacity(0.5),
  500: MyColors.primaryColor.withOpacity(0.6),
  600: MyColors.primaryColor.withOpacity(0.7),
  700: MyColors.primaryColor.withOpacity(0.8),
  800: MyColors.primaryColor.withOpacity(0.9),
  900: MyColors.primaryColor.withOpacity(1),
};
