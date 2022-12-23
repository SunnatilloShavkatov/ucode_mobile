import 'package:ucode_mobile/core/theme/colors/app_colors.dart';
import 'package:ucode_mobile/core/utils/app_utils.dart';
import 'package:flutter/material.dart';

class PopulatDestinationsItemWidget extends StatelessWidget {
  final String? destintation;
  final String? priceFrom;
  final Function()? onTap;

  const PopulatDestinationsItemWidget(
      {Key? key, this.destintation, this.priceFrom, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: AppUtils.kBorderRadius8,
      color: ThemeColors.scaffoldBackgroundColor,
      child: InkWell(
        borderRadius: AppUtils.kBorderRadius8 ,
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              height: 150,
              image: AssetImage('assets/png/popular_img.png'),
            ),
            AppUtils.kBoxHeight8,
            Text(destintation ?? ""),
            AppUtils.kBoxHeight2,
            Text('от ${priceFrom ?? ""}'),
          ],
        ),
      ),
    );
  }
}
