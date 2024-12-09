import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension TextStyleFontExt on TextStyle {
  TextStyle toInterFontsFamily() {
    return GoogleFonts.inter(textStyle: this);
  }

  TextStyle toDMSanFontsFamily() {
    return GoogleFonts.dmSans(textStyle: this);
  }
}
