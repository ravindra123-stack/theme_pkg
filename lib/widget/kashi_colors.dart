import 'package:flutter/material.dart';

class KashiColors {
  static const _orangeColor = <int, Color>{
    50: Color(0xFFE8F5E9),
    100: Color(0xFFC8E6C9),
    200: Color(0xFFe8f6f4),
    300: Color(0xFFB8E0D9),
    400: primary2,
    500: Color(0xFFFF7700),
    600: Color(0xFF146657),
    700: Color(0xFF388E3C),
    800: Color(0xFF2E7D32),
    900: Color(0xFF1B5E20),
  };
  static const MaterialColor primaryColor = MaterialColor(0xFF532D19, _orangeColor);
  static const Color primary2 = Color(0xFFFF7700);
  static const Color primary02 = Color(0xFF1C314A); //0xFF532D19
  static const Color primary4 = Color(0xFFB8E0D9);
  static const Color primary04 = Color(0xFFB75010);
  static const Color primary5 = Color(0xFFE9F7F4);
  static const Color primary6 = Color(0xFFFFD6AD);
  static const Color primary06 = Color(0xFF4A3BF7);
  static const Color primary07 = Color(0xFF17181B);
  static const Color primary08 = Color(0xFF0E0E0F);
  static const Color bg1 = Color(0xFF292929);
  static const Color bg2 = Color(0xFF151618);
  static const Color grey1 = Color(0xFF111213);
  static const Color grey01 = Color(0xFF232426);
  static const Color grey2 = Color(0xFF1D1F20);
  static const Color grey3 = Color(0xFF2C2F30);
  static const Color grey4 = Color(0xFF494E50);
  static const Color grey5 = Color(0xFF959A9D);
  static const Color grey6 = Color(0xFFCACDCE);
  static const Color grey7 = Color(0xFFFFFFFF);
  static const Color shadowColor = Color(0xFF1E1E1E);
  static const Color green2 = Color(0xFF11973B);
  static const Color secondary02 = Color(0xFF1C314A);
  static Color white05 = Color(0xFFFAFAFA).withOpacity(0.5);
  static Color whiteFA = Color(0xFFFAFAFA);
  static const Color secondary1 = Color(0xFF00143D);
  static const Color secondary03 = Color(0xFF073C17);
  static const Color secondary2 = Color(0xFF213763);
  static const Color secondary3 = Color(0xFF5C74A3);
  static const Color secondary4 = Color(0xFFA5B5D6);
  static const Color secondary5 = Color(0xFFDADEE7);
  static const Color secondary05 = Color(0xff86A3C6);
  static const Color secondary06 = Color((0xFF1E3264));
  static const Color secondary07 = Color((0xff0057A8));
  static const Color secondary08 = Color((0xFF1D1F20));
  static const Color secondary09 = Color((0xFFCACDCE));
  static const Color secondary10 = Color((0xFF86A3C6));
  static const Color secondary11 = Color((0xFF073C17));
  static const Color secondary12 = Color((0xFF00BB48));
  static const Color errorColor = Color(0xffFF0000);
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
  static const List<Color> pollsOrange = [Color(0xffED9B0D), Color(0xff870836)];
  static const List<Color> ratingOrange = [Color(0xff2B1C), Color(0xff0057A8)];
  static const List<Color> pollsGrey = [Color(0xff2C2F30), Color(0xff494E50)];
  static const List<Color> pollsGreen = [
    Color(0xff0DED76),
    Color(0xff087087),
    Color(0xff088747),
  ];
}
