import 'package:flutter/material.dart';
import 'package:theme_pkg/widget/kashi_colors.dart';

class FilledTonalIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget icon;
  final Color? borderColor;
  final Color? bgColor;
  const FilledTonalIconButton({super.key, this.onPressed, required this.icon, this.borderColor, this.bgColor});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      color: Colors.white,
      style: IconButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: borderColor ?? KashiColors.grey5),
        ),
        backgroundColor: bgColor ?? Colors.white,
        foregroundColor: KashiColors.grey1,
      ),
    );
  }
}
