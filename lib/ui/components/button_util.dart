import 'package:flutter/material.dart';

enum ButtonSize {
  sm(
    titlePadding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
    fontSize: 14,
    fontWeight: FontWeight.w600,
  ),
  md(
    titlePadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    fontSize: 14,
    fontWeight: FontWeight.w600,
  ),
  lg(
    titlePadding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
    fontSize: 16,
    fontWeight: FontWeight.w600,
  ),
  xl(
    titlePadding: EdgeInsets.symmetric(horizontal: 46, vertical: 14),
    fontSize: 16,
    fontWeight: FontWeight.w600,
  ),
  xxl(
    titlePadding: EdgeInsets.symmetric(horizontal: 28, vertical: 16),
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  final EdgeInsetsGeometry titlePadding;
  final double fontSize;
  final FontWeight fontWeight;
  const ButtonSize({
    required this.titlePadding,
    required this.fontSize,
    required this.fontWeight,
  });
}
