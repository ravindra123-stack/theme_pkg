import 'package:flutter/material.dart';
import 'package:theme_pkg/ui/themes/zen_colors.dart';

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
      color: ZenColors.schemeColor.backgroundColor,
      style: IconButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: borderColor ?? ZenColors.grey5),
        ),
        backgroundColor: bgColor ?? ZenColors.schemeColor.backgroundColor,
        foregroundColor: ZenColors.schemeColor.backgroundColor,
      ),
    );
  }
}
