import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;

MaterialColor kPrimaryTheme = const MaterialColor(
  0xff38803E,
  <int, Color>{
    50: Color(0xff38803E), //10%
    100: Color(0xff38803E), //20%
    200: Color(0xff38803E), //30%
    300: Color(0xff38803E), //40%
    400: Color(0xff38803E), //50%
    500: Color(0xff38803E), //60%
    600: Color(0xff38803E), //70%
    700: Color(0xff38803E), //80%
    800: Color(0xff38803E), //90%
    900: Color(0xff38803E), //100%
  },
);
Color kPrimaryColor = const Color(0xff38803E);
Color kBlackColor = const Color(0xff000000);
Color kWhiteColor = const Color(0xffFFFFFF);
Color kGreyColor = const Color(0xff949494);
Color kBackgroundColor = const Color(0xffE5E5E5);
Color kTransparentColor = Colors.transparent;

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kBlackColor,
);
TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhiteColor,
);
TextStyle greyTextStyle = GoogleFonts.poppins(
  color: kGreyColor,
);
TextStyle greenTextStyle = GoogleFonts.poppins(
  color: kPrimaryColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
