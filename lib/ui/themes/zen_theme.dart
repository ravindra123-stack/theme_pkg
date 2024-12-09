import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theme_pkg/ui/components/text_style_fonts_ext.dart';
import 'package:theme_pkg/ui/themes/zen_colors.dart';
export 'zen_colors.dart';

class ZenTheme {
  static final ThemeData _theme = ThemeData(
      primarySwatch: ZenColors.schemeColor.primaryColor, primaryColor:  ZenColors.schemeColor.primaryColor, brightness: Brightness.dark);

  static ThemeData buildTheme() {
    return _theme.copyWith(
      scaffoldBackgroundColor: ZenColors.schemeColor.backgroundColor,
      colorScheme: ColorScheme.fromSeed(seedColor:  ZenColors.schemeColor.primaryColor),
      appBarTheme: AppBarTheme(
        scrolledUnderElevation: 0,
        toolbarHeight: 100,
        centerTitle: false,
        iconTheme: IconThemeData(color: ZenColors.schemeColor.onPrimary),
        backgroundColor: ZenColors.schemeColor.backgroundColor,
        titleSpacing: 0,
        titleTextStyle:
            ZenTheme.sh1SemiBold.copyWith(fontWeight: FontWeight.w500, color: ZenColors.schemeColor.onPrimary).toDMSanFontsFamily(),
      ),
      textTheme: GoogleFonts.interTextTheme(_theme.textTheme.copyWith(
        displayLarge: _theme.textTheme.displayLarge?.copyWith(
          color: ZenColors.schemeColor.onPrimary,
        ),
      )),
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
