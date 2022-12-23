import 'package:flutter/material.dart';
import 'package:ucode_mobile/core/theme/icons/app_icons.dart';

class MainPage extends StatefulWidget {
  final Map<String, dynamic> json;
  final Widget child;

  const MainPage({
    Key? key,
    required this.json,
    required this.child,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  void initState() {
    super.initState();
    print("widget.json");
    print(widget.json);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: widget.child,
      // bottomNavigationBar: BottomNavigationBar(
      //   items: List.generate(
      //     (widget.json["items"] as List).length,
      //     (index) => _buildMenuItem(
      //       icon: (widget.json["items"][index]["icon"]).toString().icon(),
      //       text: widget.json["items"][index]["title"],
      //     ),
      //   ),
      // ),
    );
  }

  BottomNavigationBarItem _buildMenuItem({
    required IconData icon,
    required String text,
  }) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 5, top: 4),
        child: Icon(icon),
      ),
      activeIcon: Padding(
        padding: const EdgeInsets.only(bottom: 5, top: 4),
        child: Icon(icon),
      ),
      label: text,
    );
  }
}
