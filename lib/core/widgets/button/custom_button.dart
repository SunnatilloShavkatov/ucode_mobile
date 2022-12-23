import 'package:ucode_mobile/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final Color disabledColor;
  final Color fontColor;
  final String text;
  final Function()? onTap;
  final EdgeInsets padding;
  final double width;
  final double textSize;
  final double height;
  final double radius;
  final BorderSide side;

  const CustomButton({
    Key? key,
    this.text = '',
    this.onTap,
    this.backgroundColor = ThemeColors.primaryColor,
    this.disabledColor = ThemeColors.disabledColor,
    this.fontColor = Colors.white,
    this.width = double.infinity,
    this.textSize = 15,
    this.height = 48,
    this.padding = EdgeInsets.zero,
    this.side = BorderSide.none,
    this.radius = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        alignment: Alignment.center,
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return disabledColor;
            }
            return backgroundColor;
          },
        ),
        // overlayColor: MaterialStateProperty.all<Color>(ThemeColors.primaryColor.withOpacity(0.5)),
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return disabledColor;
            }
            return fontColor;
          },
        ),
        elevation: MaterialStateProperty.all<double>(0),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(fontSize: textSize, color: fontColor),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(radius)),
          ),
        ),
        padding: MaterialStateProperty.all(padding),
        fixedSize: MaterialStateProperty.all(Size(width, height)),
      ),
      onPressed: onTap,
      child: Text(
        text,
        style: TextStyle(
          fontSize: textSize,
          fontWeight: FontWeight.w600,
          height: 20 / 15,
        ),
      ),
    );
  }
}
