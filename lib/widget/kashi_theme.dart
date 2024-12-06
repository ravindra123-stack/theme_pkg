import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theme_pkg/components/text_style_fonts_ext.dart';

import 'package:theme_pkg/widget/kashi_colors.dart';

export 'kashi_colors.dart';
class KashiTheme {
  static final ThemeData _theme = ThemeData(
      primarySwatch: KashiColors.primaryColor,
       primaryColor: KashiColors.primaryColor, 
       brightness: Brightness.dark);

  static ThemeData buildTheme({required MaterialColor buttonColor}) {
    return _theme.copyWith(
      scaffoldBackgroundColor: KashiColors.grey1,
      colorScheme: ColorScheme.fromSeed(seedColor: KashiColors.primaryColor),
      appBarTheme: AppBarTheme(
        scrolledUnderElevation: 0,
        toolbarHeight: 100,
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: KashiColors.grey1,
        titleSpacing: 0,
        titleTextStyle:
            KashiTheme.sh1SemiBold.copyWith(fontWeight: FontWeight.w500, color: Colors.white).toDMSanFontsFamily(),
      ),
      textTheme: GoogleFonts.interTextTheme(_theme.textTheme.copyWith(
        displayLarge: _theme.textTheme.displayLarge?.copyWith(
          color: Colors.white,
        ),
      )),
    // Pass the buttonColor to the theme
    buttonTheme: ButtonThemeData(
      buttonColor: buttonColor,
    ),
    );
  }
  /// we used total 3 fonts family
  /// ClashDisplay | Inter | DMSans
  /// Inter & DMSans are being used from google_fonts package
  /// and used as a extension[TextStyleFontExt] on textStyle which override the ClashDisplay fonts
  /// it is because Inter & DMSans usage is very less & primary fonts are ClashDisplay
  ///
  static const _clashDisplayFamily = "ClashDisplay";
  static TextStyle get h1Bold => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        fontFamily: _clashDisplayFamily,
      );
  static TextStyle get h1SemiBold => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        fontFamily: _clashDisplayFamily,
      );
  static TextStyle get h1Regular => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w400,
        fontFamily: _clashDisplayFamily,
      );
  static TextStyle get h2Bold => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        fontFamily: _clashDisplayFamily,
      );
  static TextStyle get h2SemiBold => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        fontFamily: _clashDisplayFamily,
      );
  static TextStyle get h2Regular => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 28,
        fontWeight: FontWeight.w400,
        fontFamily: _clashDisplayFamily,
      );
  static TextStyle get h3Bold => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        fontFamily: _clashDisplayFamily,
      );
  static TextStyle get h3SemiBold => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        fontFamily: _clashDisplayFamily,
      );
  static TextStyle get h3Regular => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        fontFamily: _clashDisplayFamily,
      );
  static TextStyle get sh1Bold => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        fontFamily: _clashDisplayFamily,
      );
  static TextStyle get sh1SemiBold => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontFamily: _clashDisplayFamily,
      );
  static TextStyle get sh1Regular => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        fontFamily: _clashDisplayFamily,
      );
  static TextStyle get sh2Bold => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        fontFamily: _clashDisplayFamily,
      );
  static TextStyle get sh2SemiBold => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontFamily: _clashDisplayFamily,
      );
  static TextStyle get sh2Regular => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: _clashDisplayFamily,
      );
  static TextStyle get bodySemiBold => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        fontFamily: _clashDisplayFamily,
      );
  static TextStyle get bodyMedium => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: _clashDisplayFamily,
      );
  static TextStyle get smallTextSemiBold => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        fontFamily: _clashDisplayFamily,
      );
  static TextStyle get smallTextMedium => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        fontFamily: _clashDisplayFamily,
      );
    static TextStyle get smallTextSmall => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: _clashDisplayFamily,
      );
  static TextStyle get tinyTextSemiBold => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        fontFamily: _clashDisplayFamily,
      );
  static TextStyle get tinyTextMedium => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        fontFamily: _clashDisplayFamily,
      );
  static TextStyle get tinyTextSmall => _theme.textTheme.displayLarge!.copyWith(
        fontSize: 8,
        fontWeight: FontWeight.w500,
        fontFamily: _clashDisplayFamily,
      );
}