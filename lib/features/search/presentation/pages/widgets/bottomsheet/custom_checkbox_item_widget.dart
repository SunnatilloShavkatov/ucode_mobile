import 'package:ucode_mobile/core/utils/app_utils.dart';
import 'package:flutter/material.dart';

class CustomCheckboxItem extends StatelessWidget {
  final String? label;
  final IconData? icon;

  const CustomCheckboxItem({Key? key, this.label, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: AppUtils.kPaddingAll12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(Icons.backpack_outlined),
            Expanded(
              child: Text(
                label ?? "",
              ),
            ),
            Checkbox(value: true, onChanged: (c) {})
          ],
        ),
      ),
    );
  }
}
