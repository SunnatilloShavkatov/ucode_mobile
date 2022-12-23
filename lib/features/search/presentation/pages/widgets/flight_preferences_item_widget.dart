import 'package:ucode_mobile/core/theme/app_text_styles.dart';
import 'package:ucode_mobile/core/utils/app_utils.dart';
import 'package:flutter/material.dart';

class FlightPreferencesItemWidget extends StatelessWidget {
  final IconData icon;
  final String? text;
  final Function()? onTap;

  const FlightPreferencesItemWidget(
      {Key? key, required this.icon, this.text, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).backgroundColor,
      borderRadius: AppUtils.kBorderRadius8,
      child: InkWell(
        borderRadius: AppUtils.kBorderRadius8,
        onTap: onTap,
        child: Padding(
          padding: AppUtils.kPaddingHorizontal12Vertical8,
          child: Row(
            children: [
               Icon(
                icon,
                color: Colors.black,
                size: 16.0,
                semanticLabel:
                    'Icon', // Announced in accessibility modes (e.g TalkBack/VoiceOver). This label does not show in the UI.
              ),
              AppUtils.kBoxWidth8,
              Text(
                text ?? "",
                style: AppTextStyles.flightPreferences,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
