import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ucode_mobile/router/name_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    main().then((value) {
      print("value");
      print(value);
      context.goNamed(Routes.search);

    });
  }

  Future main() async {
    String data = await DefaultAssetBundle.of(context)
        .loadString("assets/json/main.json");
    final jsonResult = jsonDecode(data);
    return jsonResult;
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator.adaptive()),
    );
  }
}
