import 'package:flutter/material.dart';

class ZenColors {
  static const Color grey01 = Color(0xFF232426);
  static const Color grey2 = Color(0xFF1D1F20);
  static const Color grey3 = Color(0xFF2C2F30);
  static const Color grey4 = Color(0xFF494E50);
  static const Color grey5 = Color(0xFF959A9D);
  static const Color grey6 = Color(0xFFCACDCE);
  static const Color grey7 = Color(0xFFFFFFFF);
  static const Color green2 = Color(0xFF11973B);
  static Color white05 = const Color(0xFFFAFAFA).withOpacity(0.5);
  static Color whiteFA = const Color(0xFFFAFAFA);
  static const Color red1 = Color(0xffF04438);
  static const Color red2 = Color(0xFFB20C00);
  static const Color red3 = Color(0xffFF2B1C);
  static const Color red4 = Color(0xffF23E31);
  static const Color yellow01 = Color(0xffE5A744);
  static const Color yellow03 = Color(0xffF7C23B);
  static const Color orange1 = Color(0xffFFBF3D);
  static const Color orange2 = Color(0xffFF8209);
  static const Color orange3 = Color(0xFFFFCC80);
  static const Color orange4 = Color(0xFFEB971E);
  static const Color borderColor = grey4;
  static const RadialGradient liveMatchGradient = RadialGradient(
    center: Alignment.topLeft,
    radius: 1.5,
    colors: [Color(0xff373737), Colors.black],
  );
  static const LinearGradient playerGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xffFA8F21), Color(0xffD82D7E)],
      tileMode: TileMode.mirror);
  static const LinearGradient playerAttack = LinearGradient(
    colors: [Color(0xff2454FF), Color(0xff061828)],
  );
  static const LinearGradient playerForward = LinearGradient(
    colors: [Color(0xff12c049), Color(0xff0d461F)],
  );
  static const LinearGradient playerGoalKeeper = LinearGradient(
    colors: [Color(0xffE8115B), Color(0xff820A33)],
  );
  static const LinearGradient playerDefault = LinearGradient(
    colors: [Color(0xffF7C23B), Color(0xffA36D00)],
  );

  /// polls gradient
  static const List<Color> pollsOrange = [Color.fromARGB(255, 144, 13, 237), Color(0xff870836)];
  static const List<Color> ratingOrange = [Color(0xff2B1C), Color(0xff0057A8)];
  static const List<Color> pollsGrey = [Color(0xff2C2F30), Color(0xff494E50)];
  static const List<Color> pollsGreen = [
    Color(0xff0DED76),
    Color(0xff087087),
    Color(0xff088747),
  ];

  static SchemeColor _schemeColorInstance = SchemeColor();
  static SchemeColor get schemeColor {
    return _schemeColorInstance;
  }

  static set schemeColor(SchemeColor newSchemeColor) {
    _schemeColorInstance = newSchemeColor;
  }
}

class SchemeColor {
  static const _orangeColor = {
    50: Color(0xFFE8F5E9),
    100: Color(0xFFC8E6C9),
    200: Color(0xFFe8f6f4),
    300: Color(0xFFB8E0D9),
    500: Color(0xFFFF7700),
    600: Color(0xFF146657),
    700: Color(0xFF388E3C),
    800: Color(0xFF2E7D32),
    900: Color(0xFF1B5E20),
  };
  final Color onPrimary;
  final Color backgroundColor;
  final MaterialColor primaryColor;
  final Color primary2;
  final Color primary02;
  final Color primary4;
  final Color primary04;
  final Color primary5;
  final Color primary6;
  final Color primary06;
  final Color primary07;
  final Color primary08;
  final Color bg1;
  final Color bg2;
  final Color shadowColor;
  final Color secondary02;
  final Color secondary1;
  final Color secondary03;
  final Color secondary2;
  final Color secondary3;
  final Color secondary4;
  final Color secondary5;
  final Color secondary05;
  final Color secondary06;
  final Color secondary07;
  final Color secondary08;
  final Color secondary09;
  final Color secondary10;
  final Color secondary11;
  final Color secondary12;
  final Color errorColor;

  // Constructor for SchemeColor
  SchemeColor({
    this.onPrimary= const Color(0xFFFFFFFF),
    this.backgroundColor = const Color(0xFF111213),
    this.primaryColor = const MaterialColor(0xFFFF7700, _orangeColor),
    this.primary2 = const Color(0xFF532D19),
    this.primary02 = const Color(0xFF1C314A),
    this.primary4 = const Color(0xFFB8E0D9),
    this.primary04 = const Color(0xFFB75010),
    this.primary5 = const Color(0xFFE9F7F4),
    this.primary6 = const Color(0xFFFFD6AD),
    this.primary06 = const Color(0xFF4A3BF7),
    this.primary07 = const Color(0xFF17181B),
    this.primary08 = const Color(0xFF0E0E0F),
    this.bg1 = const Color(0xFF292929),
    this.bg2 = const Color(0xFF151618),
    this.shadowColor = const Color(0xFF1E1E1E),
    this.secondary02 = const Color(0xFF1C314A),
    this.secondary1 = const Color(0xFF00143D),
    this.secondary03 = const Color(0xFF073C17),
    this.secondary2 = const Color(0xFF213763),
    this.secondary3 = const Color(0xFF5C74A3),
    this.secondary4 = const Color(0xFFA5B5D6),
    this.secondary5 = const Color(0xFFDADEE7),
    this.secondary05 = const Color(0xff86A3C6),
    this.secondary06 = const Color(0xFF1E3264),
    this.secondary07 = const Color(0xff0057A8),
    this.secondary08 = const Color(0xFF1D1F20),
    this.secondary09 = const Color(0xFFCACDCE),
    this.secondary10 = const Color(0xFF86A3C6),
    this.secondary11 = const Color(0xFF073C17),
    this.secondary12 = const Color(0xFF00BB48),
    this.errorColor = const Color(0xffFF0000),
  });
}
