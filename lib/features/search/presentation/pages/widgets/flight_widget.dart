import 'package:ucode_mobile/core/utils/app_utils.dart';
import 'package:ucode_mobile/core/widgets/button/custom_button.dart';
import 'package:ucode_mobile/features/search/presentation/pages/widgets/bottomsheet/bottom_sheet_filter_search_page.dart';
import 'package:ucode_mobile/features/search/presentation/pages/widgets/flight_preferences_item_widget.dart';
import 'package:ucode_mobile/features/search/presentation/pages/widgets/new_suggetions_item_widget.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:gap/gap.dart';

import 'flight_item_widget.dart';
import 'popular_destinations_item_widget.dart';

class FlightWidget extends StatelessWidget {
  const FlightWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      slivers: [
        SliverPadding(
          padding: AppUtils.kPaddingLTRB8,
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, index) {
                if (index.isEven) {
                  return FlightItemWidget(
                    index: index,
                    isTop: index == 0,
                    isBottom: math.max(0, 2 * 2 - 1) == index + 1,
                  );
                }
                return AppUtils.kDivider;
              },
              childCount: math.max(0, 2 * 2 - 1),
            ),
          ),
        ),
        const SliverGap(8),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            padding: AppUtils.kPaddingHorizontal16,
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                FlightPreferencesItemWidget(
                    icon: Icons.calendar_month,
                    text: 'Выберите дату',
                    onTap: () {}),
                AppUtils.kBoxWidth8,
                FlightPreferencesItemWidget(
                    icon: Icons.person, text: 'Эконом,1', onTap: () {}),
                AppUtils.kBoxWidth8,
                FlightPreferencesItemWidget(
                    icon: Icons.filter,
                    text: 'Фильтр',
                    onTap: () {
                      showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                            //the rounded corner is created here
                            borderRadius: AppUtils.kBorderRadiusTopLeftTopRight10
                          ),
                          isDismissible: true,
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return BottomSheetFilterSearchPage();
                          });
                    }),
              ],
            ),
          ),
        ),
        const SliverGap(16),
        SliverPadding(
          padding: AppUtils.kPaddingHor16,
          sliver: SliverToBoxAdapter(
            child: CustomButton(
              text: 'Найти билеты',
              onTap: () {},
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.fromLTRB(16, 24, 16, 12),
          sliver: SliverToBoxAdapter(
            child: Text(
              "Популярные направления",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 210,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: AppUtils.kPaddingHor16,
              itemBuilder: (_, index) {
                return PopulatDestinationsItemWidget(
                  onTap: () {},
                  destintation: "Лондон",
                  priceFrom: "1899999",
                );
              },
              separatorBuilder: (_, __) => AppUtils.kBoxWith8,
              itemCount: 4,
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.fromLTRB(16, 24, 16, 12),
          sliver: SliverToBoxAdapter(
            child: Text(
              "Новые предложение",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 80,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: AppUtils.kPaddingHor16,
              itemBuilder: (_, index) {
                return NewSuggestionsItemWidget(
                  onTap: () {},
                );
              },
              separatorBuilder: (_, __) => AppUtils.kBoxWith8,
              itemCount: 4,
            ),
          ),
        ),
      ],
    );
  }
}
