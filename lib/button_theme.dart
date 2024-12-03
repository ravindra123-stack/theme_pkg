library theme_pkg;
import 'package:flutter/material.dart';
class ButtonThemeData {
  final Color primaryColor;
  final Color secondaryColor;
  final Color outlineBorderColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final TextStyle primaryTextStyle;
  final TextStyle secondaryTextStyle;

  const ButtonThemeData({
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

class ButtonTheme extends InheritedWidget {
  final ButtonThemeData data;

   const ButtonTheme({
    super.key,
    required this.data,
    required Widget child,
  }) : super(child: child);

  static ButtonThemeData of(BuildContext context) {
    final ButtonTheme? inheritedTheme = context.dependOnInheritedWidgetOfExactType<ButtonTheme>();
    return inheritedTheme?.data ?? const ButtonThemeData(); 
  }

  @override
  bool updateShouldNotify(ButtonTheme oldWidget) {
    return data != oldWidget.data;
  }
}
