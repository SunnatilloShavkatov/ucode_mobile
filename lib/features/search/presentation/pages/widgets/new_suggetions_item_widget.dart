import 'package:ucode_mobile/core/utils/app_utils.dart';
import 'package:flutter/material.dart';

class NewSuggestionsItemWidget extends StatelessWidget {
  final Function()? onTap;

  const NewSuggestionsItemWidget({Key? key, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: AppUtils.kBorderRadius8,
      child: InkWell(
        borderRadius: AppUtils.kBorderRadius8,
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: AppUtils.kBorderRadius8,
            border: Border.all(
              width: 2,
              color: Colors.blue,
            ),
          ),
          child: Padding(
            padding: AppUtils.kPaddingAll1,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: AppUtils.kBorderRadius8,
              ),
              width: 100,
            ),
          ),
        ),
      ),
    );
  }
}
