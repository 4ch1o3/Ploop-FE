import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextTheme ploopTextTheme() {
  return TextTheme(
    // App title

    // Dashboard/Modal collected trash count
    displayLarge: TextStyle(
      fontSize: 60.sp,
      fontFamily: 'FugazOne',
      // default fontweight
      height: 0.82,
      letterSpacing: Platform.isIOS ? 0.40 : 0.26,
    ),
    displayMedium: TextStyle(
      fontSize: 34.sp,
      fontFamily: 'Pretendard',
      fontWeight: FontWeight.w700,
      height: 41 / 34,
      letterSpacing: Platform.isIOS ? 0.40 : 0.26,
    ),
    displaySmall: TextStyle(
      fontSize: 22.sp,
      fontFamily: 'Pretendard',
      fontWeight: FontWeight.w700,
      height: 28 / 22,
      letterSpacing: Platform.isIOS ? -0.26 : -0.04,
    ),

    headlineLarge: TextStyle(
      fontSize: 20.sp,
      fontFamily: 'Pretendard',
      fontWeight: FontWeight.w500,
      height: 1.25,
      letterSpacing: Platform.isIOS ? -0.45 : -0.1,
    ),

    headlineMedium: TextStyle(
      fontSize: 17.sp,
      fontFamily: 'Pretendard',
      fontWeight: FontWeight.w500,
      height: 22 / 17,
      letterSpacing: Platform.isIOS ? -0.43 : 0.08,
    ),

    headlineSmall: TextStyle(
      fontSize: 13.sp,
      fontFamily: 'Pretendard',
      fontWeight: FontWeight.w600,
      height: 18 / 13,
      letterSpacing: Platform.isIOS ? -0.08 : -0.02,
    ),
    titleLarge: TextStyle(
      fontSize: 17.sp,
      fontFamily: 'Pretendard',
      fontWeight: FontWeight.w700,
      height: 22 / 17,
      letterSpacing: Platform.isIOS ? -0.43 : -0.08,
    ),
    titleMedium: TextStyle(
      fontSize: 16.sp,
      fontFamily: 'Pretendard',
      fontWeight: FontWeight.w600,
      height: 1.25,
      letterSpacing: Platform.isIOS ? -0.5 : -0.29,
    ),

    titleSmall: TextStyle(
      fontSize: 14.sp,
      fontFamily: 'Pretendard',
      fontWeight: FontWeight.w600,
      height: 27 / 14,
      letterSpacing: Platform.isIOS ? -0.08 : -0.05,
    ),

    labelLarge: TextStyle(
      fontSize: 15.sp,
      fontFamily: 'Pretendard',
      fontWeight: FontWeight.w600,
      height: 1.33,
      letterSpacing: Platform.isIOS ? -0.23 : -0.1,
    ),
    labelMedium: TextStyle(
      fontSize: 11.sp,
      fontFamily: 'Pretendard',
      fontWeight: FontWeight.w600,
      height: 13 / 11,
      letterSpacing: Platform.isIOS ? 0.06 : 0.02,
    ),

    bodyLarge: TextStyle(
      fontSize: 11.sp,
      fontFamily: 'Pretendard',
      fontWeight: FontWeight.w500,
      height: 13 / 11,
      letterSpacing: Platform.isIOS ? 0 : -0.20,
    ),

    bodyMedium: TextStyle(
      fontSize: 11.sp,
      fontFamily: 'Pretendard',
      fontWeight: FontWeight.w400,
      height: 13 / 11,
      letterSpacing: Platform.isIOS ? 0.06 : 0.3,
    ),
  );
}

class GrayScale {
  static const Color black = Color(0xFF000000);
  static const Color gray_500 = Color(0xFF7E7D7D);
  static const Color gray_400 = Color(0xFFA6A6A6);
  static const Color gray_300 = Color(0xFFA1A1A1);
  static const Color gray_200 = Color(0xFFC0C0C0);
  static const Color gray_100 = Color(0xFFD2D2D2);
  static const Color white = Color(0xFFFFFFFF);
  static const Color shadowColor = Color.fromARGB(62, 0, 0, 0);
  static const Color transparentBlack = Color(0xCC2F2F2F);
}

abstract class ColorTheme {
  Color get color_600;
  Color get color_500;
  Color get color_400;
  Color get state;
  Color get route;
  Color get recommend;
}

class GreenTheme implements ColorTheme {
  @override
  final Color color_600 = const Color(0xFF7EF18D);

  @override
  final Color color_500 = const Color(0xFF23BC37);

  @override
  final Color color_400 = const Color(0xFFC0FFC8);

  @override
  final Color state = const Color(0xFFFF5F5F);
  @override
  final Color recommend = const Color(0xFF6B9FFF);

  @override
  final Color route = const Color(0xFF10AB37);
}

// test color theme
class BlueTheme implements ColorTheme {
  @override
  final Color color_600 = const Color(0xFF7EBFF1);

  @override
  final Color color_500 = const Color(0xFF2375BC);

  @override
  final Color color_400 = const Color(0xFFC0E2FF);

  @override
  final Color state = const Color(0xFFFF5F5F);

  @override
  final Color route = const Color(0xFF6B9FFF);

  @override
  final Color recommend = const Color(0xFF6B9FFF);
}

// test color theme
class YellowTheme implements ColorTheme {
  @override
  final Color color_600 = const Color(0xFFF1E97E);

  @override
  final Color color_500 = const Color(0xFFBCBC23);

  @override
  final Color color_400 = const Color(0xFFFCFFC0);

  @override
  final Color state = const Color(0xFFFF5F5F);

  @override
  final Color route = const Color(0xFF6B9FFF);

  @override
  final Color recommend = const Color(0xFF6B9FFF);
}

ColorTheme theme() {
  return GreenTheme();
}
