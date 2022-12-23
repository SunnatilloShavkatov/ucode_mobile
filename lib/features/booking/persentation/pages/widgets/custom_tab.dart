import 'package:ucode_mobile/core/utils/app_utils.dart';
import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final bool isActive;
  final String text;

  const CustomTab({
    Key? key,
    required this.isActive,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 34,
      width: double.infinity,
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeInOut,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? Theme.of(context).primaryColor : Colors.white,
        borderRadius: AppUtils.kBorderRadius48,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isActive ? Theme.of(context).backgroundColor : Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
