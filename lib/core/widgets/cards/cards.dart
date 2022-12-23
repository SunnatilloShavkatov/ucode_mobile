import 'package:ucode_mobile/core/theme/colors/app_colors.dart';
import 'package:ucode_mobile/core/utils/app_utils.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final Color? color;
  final Widget child;

  const Cards({Key? key, required this.child, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      color: color ?? Theme.of(context).cardColor,
      surfaceTintColor: ThemeColors.white,
      shadowColor: const Color.fromRGBO(0, 0, 0, 0.05),
      type: MaterialType.card,
      borderRadius: AppUtils.kBorderRadius8,
      child: child,
    );
  }
}
