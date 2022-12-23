import 'package:ucode_mobile/core/theme/icons/app_icons.dart';
import 'package:ucode_mobile/core/utils/app_utils.dart';
import 'package:ucode_mobile/core/widgets/cards/cards_cliprect.dart';
import 'package:ucode_mobile/generated/l10n.dart';
import 'package:ucode_mobile/router/name_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/profile_item_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: ListView(
        padding: AppUtils.kPaddingAll16,
        children: [
          const Text(
            "Sunnatillo Shavkatov",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          AppUtils.kGap2,
          const Text(
            "sunnatilloshavkatov@gmail.com",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          AppUtils.kGap16,
          CardsClipRRect(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                ProfileItemWidget(
                  isTop: true,
                  icon: AppIcons.user,
                  text: "Личные данные",
                  onTap: () async {
                    context.pushNamed(Routes.editProfile);
                  },
                ),
                AppUtils.kPad60Divider,
                ProfileItemWidget(
                  icon: AppIcons.wallet,
                  text: "Платежные карты",
                  onTap: () {},
                ),
                AppUtils.kPad60Divider,
                ProfileItemWidget(
                  icon: AppIcons.address_book,
                  text: "Пассажиры",
                  onTap: () {},
                ),
                AppUtils.kPad60Divider,
                ProfileItemWidget(
                  isBottom: true,
                  icon: AppIcons.settings,
                  text: AppLocalization.of(context).settings,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const SafeArea(
        minimum: AppUtils.kPaddingAll16,
        child: Text("Version 1.0.0", textAlign: TextAlign.center),
      ),
    );
  }
}
