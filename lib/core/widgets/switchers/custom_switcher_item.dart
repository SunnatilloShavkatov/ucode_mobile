import 'package:ucode_mobile/core/theme/colors/app_colors.dart';
import 'package:ucode_mobile/core/utils/app_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSwitcherItem extends StatelessWidget {
  final String? label;
  final Function()? onChanged;

  const CustomSwitcherItem({Key? key, this.label, this.onChanged})
      : super(key: key);

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
            Expanded(
              child: Text(
                label ?? "",
              ),
            ),
            CupertinoSwitch(
                activeColor: ThemeColors.primaryColor,
                value: true,
                onChanged: (c) {}),
          ],
        ),
      ),
    );
  }
}
