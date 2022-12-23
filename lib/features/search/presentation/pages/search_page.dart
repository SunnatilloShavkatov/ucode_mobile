import 'package:ucode_mobile/features/search/presentation/bloc/search_bloc.dart';
import 'package:ucode_mobile/features/search/presentation/pages/widgets/flight_widget.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        bottom: TabBar(
          controller: _tabController,
          padding: const EdgeInsets.only(
            left: 36,
            right: 36,
          ),
          tabs: tabs.entries
              .map(
                (e) => Tab(
                  text: e.value,
                  icon: Icon(
                    tabIcons[e.key]!,
                    size: 20,
                  ),
                ),
              )
              .toList(),
        ),
      ),
      body: const FlightWidget(),
    );
  }
}
