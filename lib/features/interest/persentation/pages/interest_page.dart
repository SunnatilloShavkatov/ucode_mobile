import 'package:ucode_mobile/generated/l10n.dart';
import 'package:flutter/material.dart';

class InterestPage extends StatelessWidget {
  const InterestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalization.of(context).interest),
      ),
    );
  }
}
