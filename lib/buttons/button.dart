import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:theme_pkg/buttons/button_util.dart';
import 'package:theme_pkg/components/text_style_fonts_ext.dart';
import 'package:theme_pkg/widget/kashi_theme.dart';


rectBorderRadiusX(double x, Color? color) => RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(x), side: color == null ? BorderSide.none : BorderSide(color: color));

class Buttons {
  static Widget primary(
      {required String text,
      required dynamic context,
      required VoidCallback? onPressed,
      bool loading = false,
      ButtonSize size = ButtonSize.md,
      Widget? prefixIcon,
      Widget? suffixIcon,
      Color? backgroundColor,
      Color? textColor,
      bool? showShadow,
      MaterialTapTargetSize? tapTargetSize,
      bool stretch = true,
      Color? boarderColor,
      EdgeInsetsGeometry margin = EdgeInsets.zero,
      EdgeInsetsGeometry? padding}) {
    return Padding(
      padding: margin,
      child: TextButton(
          style: TextButton.styleFrom(
              tapTargetSize: tapTargetSize,
              minimumSize: Size(stretch ? double.infinity : 0, 0.0),
              padding: padding ?? size.titlePadding,
              shape: rectBorderRadiusX(40, boarderColor),
              backgroundColor: backgroundColor ?? KashiColors.primaryColor),
          onPressed: !loading
              ? () {
                  HapticFeedback.lightImpact();
                  onPressed?.call();
                }
              : null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: stretch ? MainAxisSize.max : MainAxisSize.min,
            children: [
              loading
                  ? Container(
                      margin: const EdgeInsets.only(right: 12),
                      width: 12,
                      height: 12,
                      child: const CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                  : const SizedBox.shrink(),
              if (prefixIcon != null)
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: prefixIcon,
                ),
              Flexible(
                child: Text(
                  text,
                  style: KashiTheme.sh2SemiBold
                      .copyWith(color: textColor ?? Colors.white)
                      .copyWith(
                        fontWeight: size.fontWeight,
                        fontSize: size.fontSize,
                      )
                      .toDMSanFontsFamily(),
                ),
              ),
              if (suffixIcon != null)
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: suffixIcon,
                ),
            ],
          )),
    );
  }

  static Widget outline(
      {required String text,
      required VoidCallback? onPressed,
      bool loading = false,
      ButtonSize size = ButtonSize.md,
      Widget? prefixIcon,
      Widget? suffixIcon,
      Color? backgroundColor,
      Color? textColor,
      MaterialTapTargetSize? tapTargetSize,
      bool stretch = true,
      Color? boarderColor,
      EdgeInsetsGeometry margin = EdgeInsets.zero,
      EdgeInsetsGeometry? padding, required dynamic context}) {
    return primary(
        text: text,
        context: context?? Colors.white,
        onPressed: onPressed,
        loading: loading,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        size: size,
        backgroundColor: backgroundColor ?? Colors.white,
        textColor: textColor ?? KashiColors.grey1,
        boarderColor: KashiColors.grey4,
        stretch: stretch,
        margin: margin,
        padding: padding);
  }

  static Widget text({
    required String text,
    required VoidCallback? onPressed,
    bool loading = false,
    ButtonSize buttonSize = ButtonSize.md,
    Widget? suffixIcon,
    TextStyle? textStyle,
    Color? textColor = KashiColors.primaryColor,
    EdgeInsetsGeometry margin = EdgeInsets.zero,
    Size size = const Size(0.0, 0.0),
  }) {
    return Padding(
      padding: margin,
      child: TextButton(
          style: TextButton.styleFrom(
            minimumSize: size,
            shape: rectBorderRadiusX(8, null),
          ),
          onPressed: !loading ? onPressed : null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: textStyle ??
                    KashiTheme.smallTextSemiBold
                        .copyWith(color: textColor)
                        .copyWith(
                          fontWeight: buttonSize.fontWeight,
                          fontSize: buttonSize.fontSize,
                        )
                        .toDMSanFontsFamily(),
              ),
              if (suffixIcon != null)
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: suffixIcon,
                ),
            ],
          )),
    );
  }
}
