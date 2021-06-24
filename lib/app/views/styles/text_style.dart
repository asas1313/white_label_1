import 'package:flutter/material.dart';
import 'colors.dart';

const MENU_FONT_SIZE = 16.0;
const TITLE_FONT_SIZE = 40.0;
const SUBTITLE_FONT_SIZE = 30.0;
const NORMAL_FONT_SIZE = 22.0;
const NORMAL_SMALLER_FONT_SIZE = 18.0;

const textStyleTop = TextStyle(
  fontFamily: 'Poppins',
  color: topBarItemColor,
  fontSize: MENU_FONT_SIZE,
  fontWeight: FontWeight.w700,
  letterSpacing: 0,
);

const textStyleMenu = TextStyle(
  fontFamily: 'Poppins',
  color: Colors.white,
  fontSize: MENU_FONT_SIZE,
  fontWeight: FontWeight.w900,
  letterSpacing: 1,
);

const textStyleTitle = TextStyle(
  fontFamily: 'Poppins',
  color: titleColor,
  fontSize: TITLE_FONT_SIZE,
  fontWeight: FontWeight.w600,
  letterSpacing: 1.5,
);

const textStyleTitleBold = TextStyle(
  fontFamily: 'Poppins',
  color: titleColor,
  fontSize: TITLE_FONT_SIZE,
  fontWeight: FontWeight.w900,
  letterSpacing: 1.5,
);

const textStyleSubtitle = TextStyle(
  fontFamily: 'Poppins',
  color: titleColor,
  fontSize: SUBTITLE_FONT_SIZE,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.5,
);

const textStyleNormal = TextStyle(
  fontFamily: 'Poppins',
  color: contentTextColor,
  fontSize: NORMAL_FONT_SIZE,
  fontWeight: FontWeight.w300,
  letterSpacing: 1,
);

const textStyleNormalSmaller = TextStyle(
  fontFamily: 'Poppins',
  color: contentTextColor,
  fontSize: NORMAL_SMALLER_FONT_SIZE,
  fontWeight: FontWeight.w300,
  letterSpacing: 1,
);

const textStyleNormalSmallerBold = TextStyle(
  fontFamily: 'Poppins',
  color: contentTextColor,
  fontSize: NORMAL_SMALLER_FONT_SIZE,
  fontWeight: FontWeight.w900,
  letterSpacing: 1,
);

const textStyleNormalBoldUnderline = TextStyle(
  fontFamily: 'Poppins',
  color: contentTextColor,
  fontSize: 14,
  fontWeight: FontWeight.w900,
  letterSpacing: 1.5,
  decoration: TextDecoration.underline,
);
