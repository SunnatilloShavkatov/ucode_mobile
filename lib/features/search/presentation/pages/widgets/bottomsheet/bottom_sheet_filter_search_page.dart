import 'package:ucode_mobile/app.dart';
import 'package:ucode_mobile/core/theme/colors/app_colors.dart';
import 'package:ucode_mobile/core/utils/app_utils.dart';
import 'package:ucode_mobile/core/widgets/button/custom_button.dart';
import 'package:ucode_mobile/core/widgets/switchers/custom_switcher_item.dart';
import 'package:ucode_mobile/features/search/presentation/pages/widgets/bottomsheet/custom_checkbox_item_widget.dart';
import 'package:flutter/material.dart';

class BottomSheetFilterSearchPage extends StatelessWidget {
  const BottomSheetFilterSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
              child: Container(
            margin: AppUtils.kPaddingAll12,
            width: 40,
            height: 5,
            decoration: const BoxDecoration(
                color: ThemeColors.textFieldHintColor,
                borderRadius: AppUtils.kBorderRadius16),
          )),
          AppUtils.kBoxHeight12,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: const [
              Text(
                "Фильтры",
              ),
              Text(
                "Сбросить",
              ),
            ],
          ),
          Padding(
            padding: AppUtils.kPaddingAll12,
            child: Text(
              "Остановки",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const CustomSwitcherItem(
            label: 'Без ночевки',
          ),
          AppUtils.kDivider,
          const CustomSwitcherItem(
            label: 'Без остановки',
          ),
          AppUtils.kDivider,
          Padding(
            padding: AppUtils.kPaddingAll12,
            child: Text(
              "Багаж",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          CustomCheckboxItem(
            label: "Ручная кладь (до 10 кг)",
          ),
          AppUtils.kDivider,
          CustomCheckboxItem(
            label: "Ручная кладь (до 10 кг)",
          ),
          AppUtils.kDivider,
          Padding(
            padding: AppUtils.kPaddingAll12,
            child: CustomButton(
              radius: 12,
              text: 'Применить',
              onTap: (){

              },
            ),
          ),
        ],
      ),
    );
  }
}
