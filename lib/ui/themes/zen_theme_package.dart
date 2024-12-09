library theme_pkg;
import 'package:flutter/material.dart';
class ZenThemeData {
  final Color primaryColor;
  final Color secondaryColor;
  final Color outlineBorderColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final TextStyle primaryTextStyle;
  final TextStyle secondaryTextStyle;

  const ZenThemeData({
    this.primaryColor = Colors.blue,
    this.secondaryColor = Colors.white,
    this.outlineBorderColor = Colors.grey,
    this.borderRadius = 8.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    this.primaryTextStyle = const TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    this.secondaryTextStyle = const TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  });
}

class ZenThemePackage extends InheritedWidget {
  final ZenThemeData data;

   const ZenThemePackage({
    super.key,
    required this.data,
    required Widget child,
  }) : super(child: child);

  static ZenThemeData of(BuildContext context) {
    final ZenThemePackage? inheritedTheme = context.dependOnInheritedWidgetOfExactType<ZenThemePackage>();
    return inheritedTheme?.data ?? const ZenThemeData(); 
  }

  @override
  bool updateShouldNotify(ZenThemePackage oldWidget) {
    return data != oldWidget.data;
  }
}
