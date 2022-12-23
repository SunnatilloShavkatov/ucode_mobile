import 'package:ucode_mobile/core/theme/colors/app_colors.dart';
import 'package:ucode_mobile/core/theme/icons/app_icons.dart';
import 'package:ucode_mobile/core/utils/app_utils.dart';
import 'package:flutter/material.dart';

class FlightItemWidget extends StatelessWidget {
  final bool isTop;
  final bool isBottom;
  final int index;

  const FlightItemWidget({
    Key? key,
    required this.isTop,
    required this.isBottom,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      shape: RoundedRectangleBorder(
        borderRadius: isTop
            ? AppUtils.kBorderRadiusTop8
            : isBottom
                ? AppUtils.kBorderRadiusBottom8
                : AppUtils.kBorderRadius,
      ),
      title: const Text("Откуда Куда"),
      leading: index == 0
          ? const Icon(
              AppIcons.flight_land,
              color: ThemeColors.black,
            )
          : const Icon(
              AppIcons.flight_takeoff,
              color: ThemeColors.black,
            ),
      trailing: index == 0
          ? const Icon(
              AppIcons.up,
              color: ThemeColors.grey,
              size: 32,
            )
          : null,
    );
  }
}
