import 'package:ucode_mobile/core/theme/colors/app_colors.dart';
import 'package:ucode_mobile/core/utils/app_utils.dart';
import 'package:flutter/material.dart';

class ProfileItemWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function()? onTap;
  final bool isTop;
  final bool isBottom;

  const ProfileItemWidget({
    Key? key,
    required this.text,
    this.onTap,
    required this.icon,
    this.isTop = false,
    this.isBottom = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: isTop
            ? AppUtils.kBorderRadiusTop8
            : isBottom
                ? AppUtils.kBorderRadiusBottom8
                : AppUtils.kBorderRadius,
      ),
      onTap: onTap,
      leading: Ink(
        padding: AppUtils.kPaddingAll6,
        decoration: BoxDecoration(
          color: ThemeColors.primaryColor.withOpacity(0.1),
          borderRadius: AppUtils.kBorderRadius8,
        ),
        child: Icon(icon, size: 20, color: ThemeColors.primaryColor),
      ),
      title: Text(
        text,
        style: Theme.of(context).textTheme.bodyText2,
      ),
      trailing: const Icon(
        Icons.chevron_right_rounded,
        color: ThemeColors.smallTextColor,
      ),
    );
  }
}
