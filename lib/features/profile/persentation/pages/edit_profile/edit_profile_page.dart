import 'package:ucode_mobile/core/theme/colors/app_colors.dart';
import 'package:ucode_mobile/core/utils/app_utils.dart';
import 'package:ucode_mobile/core/widgets/button/custom_button.dart';
import 'package:ucode_mobile/core/widgets/textfields/custom_text_field.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController tController = TextEditingController();
    tController.text = "Аббосбек";
    TextEditingController t1Controller = TextEditingController();
    t1Controller.text = "Дата Рождения";
    TextEditingController t2Controller = TextEditingController();
    t2Controller.text = "Мужской";
    TextEditingController t3Controller = TextEditingController();
    t3Controller.text = "+998991234567";
    return Scaffold(
      appBar: AppBar(
        title: const Text('Редактировать профиль'),
      ),
      body: ListView(
        padding: AppUtils.kPaddingAll16,
        children: [
          Material(
            borderRadius: AppUtils.kBorderRadius10,
            color: ThemeColors.white,
            child: Padding(
              padding: AppUtils.kPaddingAll12,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomTextField(
                    controller: tController,
                    labelText: 'Фио',
                  ),
                  AppUtils.kBoxHeight16,
                  CustomTextField(
                      controller: t1Controller,
                      readOnly: true,
                      labelText: 'Дата Рождения'),
                  AppUtils.kBoxHeight16,
                  CustomTextField(
                    controller: t2Controller,
                    readOnly: true,
                    labelText: 'Пол',
                    suffixIcon: const Icon(
                      Icons.expand_more_outlined,
                      size: 30,
                    ),
                  ),
                  AppUtils.kBoxHeight16,
                  CustomTextField(
                      labelColor: ThemeColors.textFieldHintColor,
                      controller: t3Controller,
                      keyboardType: TextInputType.number,
                      labelText: 'Номер телефона'),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: SafeArea(
        minimum: AppUtils.kPaddingAll16,
        child: CustomButton(
          text: 'Сохранить',
          onTap: () {},
        ),
      ),
    );
  }
}
