import 'package:ucode_mobile/core/utils/app_utils.dart';
import 'package:ucode_mobile/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'widgets/custom_tab.dart';

class BookingsPage extends StatefulWidget {
  const BookingsPage({Key? key}) : super(key: key);

  @override
  State<BookingsPage> createState() => _BookingsPageState();
}

class _BookingsPageState extends State<BookingsPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late int _selectedIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_onItemTapped);
  }

  void _onItemTapped() {
    setState(() {
      _selectedIndex = _tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalization.of(context).booking),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: ColoredBox(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: TabBar(
              controller: _tabController,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              padding: AppUtils.kPaddingHor16Ver8,
              labelColor: Theme.of(context).backgroundColor,
              indicator: const BoxDecoration(
                color: Colors.transparent,
                borderRadius: AppUtils.kBorderRadius48,
              ),
              tabs: [
                Tab(
                  height: 34,
                  iconMargin: EdgeInsets.zero,
                  child: CustomTab(
                    isActive: _selectedIndex == 0,
                    text: "Предстоящие",
                  ),
                ),
                Tab(
                  height: 34,
                  iconMargin: EdgeInsets.zero,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: CustomTab(
                      isActive: _selectedIndex == 1,
                      text: "История",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CustomScrollView(
            slivers: [
              SliverPadding(
                padding: AppUtils.kPaddingLT8RB,
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (_, index) {
                      if (index.isEven) {
                        return ColoredBox(
                          color: Theme.of(context).backgroundColor,
                          child: const SizedBox(height: 70),
                        );
                      }
                      return AppUtils.kGap12;
                    },
                    childCount: math.max(0, 2 * 2 - 1),
                  ),
                ),
              ),
            ],
          ),
          const Center(
            child: Text("История"),
          ),
        ],
      ),
    );
  }
}
