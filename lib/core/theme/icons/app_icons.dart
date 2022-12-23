// Place fonts/AppIcons.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: AppIcons
//      fonts:
//       - asset: fonts/AppIcons.ttf
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class AppIcons {
  AppIcons._();

  static const String _fontFamily = 'AppIcons';

  static const IconData edit = IconData(0xe91c, fontFamily: _fontFamily);
  static const IconData up = IconData(0xe908, fontFamily: _fontFamily);
  static const IconData search = IconData(0xe915, fontFamily: _fontFamily);
  static const IconData search1 = IconData(0xe916, fontFamily: _fontFamily);
  static const IconData change = IconData(0xe905, fontFamily: _fontFamily);
  static const IconData address_book =
      IconData(0xe900, fontFamily: _fontFamily);
  static const IconData bed = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData bed2 = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData calendar = IconData(0xe903, fontFamily: _fontFamily);
  static const IconData car = IconData(0xe904, fontFamily: _fontFamily);
  static const IconData compass = IconData(0xe906, fontFamily: _fontFamily);
  static const IconData coupon = IconData(0xe907, fontFamily: _fontFamily);
  static const IconData equalizer = IconData(0xe909, fontFamily: _fontFamily);
  static const IconData flight_land = IconData(0xe90a, fontFamily: _fontFamily);
  static const IconData flight_takeoff =
      IconData(0xe90b, fontFamily: _fontFamily);
  static const IconData luggage = IconData(0xe90c, fontFamily: _fontFamily);
  static const IconData luggage10 = IconData(0xe90d, fontFamily: _fontFamily);
  static const IconData no_travelling =
      IconData(0xe911, fontFamily: _fontFamily);
  static const IconData passenger = IconData(0xe912, fontFamily: _fontFamily);
  static const IconData plane_alt = IconData(0xe913, fontFamily: _fontFamily);
  static const IconData plane = IconData(0xe914, fontFamily: _fontFamily);
  static const IconData settings = IconData(0xe917, fontFamily: _fontFamily);
  static const IconData trash = IconData(0xe918, fontFamily: _fontFamily);
  static const IconData travel = IconData(0xe919, fontFamily: _fontFamily);
  static const IconData travel10 = IconData(0xe91a, fontFamily: _fontFamily);
  static const IconData user = IconData(0xe91d, fontFamily: _fontFamily);
  static const IconData walk = IconData(0xe91e, fontFamily: _fontFamily);
  static const IconData wallet = IconData(0xe91f, fontFamily: _fontFamily);
  static const IconData world = IconData(0xe920, fontFamily: _fontFamily);
}

extension AppIcon on String {
  IconData icon() {
    switch (this) {
      case "search":
        return AppIcons.search;
      case "interest":
        return AppIcons.world;
      case "basket":
        return AppIcons.coupon;
      case "profile":
        return AppIcons.user;
    }
    return AppIcons.walk;
  }
}
