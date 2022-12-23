import 'package:ucode_mobile/core/utils/app_utils.dart';
import 'package:flutter/material.dart';

class CardsClipRRect extends StatelessWidget {
  final Widget child;

  const CardsClipRRect({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      color: Theme.of(context).cardColor,
      shadowColor: const Color.fromRGBO(0, 0, 0, 0.05),
      type: MaterialType.card,
      borderRadius: AppUtils.kBorderRadius8,
      child: ClipRRect(
        borderRadius: AppUtils.kBorderRadius8,
        child: child,
      ),
    );
  }
}
