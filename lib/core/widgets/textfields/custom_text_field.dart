import 'package:ucode_mobile/core/theme/app_text_styles.dart';
import 'package:ucode_mobile/core/theme/colors/app_colors.dart';
import 'package:ucode_mobile/core/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final String? labelText;
  final bool? showError;
  final TextEditingController? controller;
  final bool? autoFocus;
  final Function(String value)? onChanged;
  final TextInputType? keyboardType;
  final String? prefixText;
  final String? errorText;
  final TextInputAction? inputAction;
  final FocusNode? currentFocus;
  final FocusNode? nextFocus;
  final String? hintText;
  final BuildContext? context;
  final Color fillColor;
  final Color? textColor;
  final Color hintColor;
  final Color? labelColor;
  final TextStyle? hintStyle;
  final List<TextInputFormatter>? inputFormatters;
  final Function()? onTap;
  final bool? readOnly;
  final double? labelPadding;
  final int? maxLength;
  final bool? isResizable;
  final TextStyle? labelStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? icon;
  final EdgeInsetsGeometry? contentPadding;
  final double? height;
  final double? topMargin;

  const CustomTextField({
    Key? key,
    this.labelText,
    this.showError,
    this.controller,
    this.autoFocus,
    this.onChanged,
    this.keyboardType,
    this.prefixText,
    this.fillColor = ThemeColors.textFieldBackgroundColor,
    this.isResizable,
    this.errorText,
    this.inputAction,
    this.currentFocus,
    this.nextFocus,
    this.hintText,
    this.context,
    this.onTap,
    this.labelPadding = 6,
    this.labelStyle,
    this.readOnly = false,
    this.textColor = ThemeColors.black,
    this.hintColor = ThemeColors.textFieldHintColor,
    this.labelColor = ThemeColors.black,
    this.hintStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.height,
    this.topMargin = 0,
    this.icon,
    this.maxLength,
    this.inputFormatters,
    this.contentPadding = const EdgeInsets.symmetric(
      vertical: 14,
      horizontal: 12,
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: topMargin),
        if (labelText != null)
          RichText(
            text: TextSpan(
              text: labelText,
              style: labelStyle ??
                  TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: labelColor,
                  ),
            ),
          ),
        SizedBox(height: labelPadding),
        SizedBox(
          height: height,
          child: TextFormField(
            style: TextStyle(color: textColor),
            maxLength: maxLength,
            inputFormatters: inputFormatters,
            readOnly: readOnly ?? false,
            controller: controller,
            focusNode: currentFocus,
            onTap: onTap,
            maxLines: (isResizable ?? false) ? null : 1,
            autofocus: autoFocus ?? false,
            textCapitalization: TextCapitalization.sentences,
            onChanged: onChanged,
            onFieldSubmitted: (term) {},
            textInputAction: inputAction,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              suffixIconColor: ThemeColors.primaryColor,
              contentPadding: contentPadding,
              filled: true,
              icon: icon,
              prefixText: prefixText,
              hintText: hintText,
              fillColor: fillColor,
              hintStyle: hintStyle ??
                  TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: hintColor,
                  ),
              errorText: showError ?? false ? errorText : null,
            ),
            cursorColor: ThemeColors.primaryColor,
            keyboardType: keyboardType,
          ),
        ),
      ],
    );
  }
}
