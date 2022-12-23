import 'package:flutter/material.dart';
import 'package:ucode_mobile/core/utils/app_utils.dart';
import 'colors/app_colors.dart';

final appTheme = ThemeData(
  useMaterial3: true,
  applyElevationOverlayColor: true,
  errorColor: ThemeColors.errorColor,
  disabledColor: ThemeColors.disabledColor,
  splashColor: ThemeColors.primaryColor.withOpacity(0.01),
  focusColor: ThemeColors.primaryColor,
  primaryColor: ThemeColors.primaryColor,
  visualDensity: VisualDensity.standard,
  materialTapTargetSize: MaterialTapTargetSize.padded,
  // fontFamily: 'SF-Pro-Display',
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        EdgeInsets.zero,
      ),
    ),
  ),
  dividerTheme: const DividerThemeData(
    thickness: 1,
  ),
);

final lightTheme = appTheme.copyWith(
  backgroundColor: ThemeColors.backgroundColor,
  scaffoldBackgroundColor: ThemeColors.scaffoldBackgroundColor,
  brightness: Brightness.light,
  dividerTheme: appTheme.dividerTheme.copyWith(
    color: ThemeColors.dividerColor,
  ),
  colorScheme: const ColorScheme.light(
    primary: ThemeColors.primaryColor,
    secondary: Colors.black,
  ),
  listTileTheme: const ListTileThemeData(
    minVerticalPadding: 14,
    minLeadingWidth: 16,
    horizontalTitleGap: 12,
    tileColor: ThemeColors.backgroundColor,
    selectedColor: ThemeColors.backgroundColor,
    selectedTileColor: ThemeColors.backgroundColor,
    shape: RoundedRectangleBorder(
      borderRadius: AppUtils.kBorderRadius,
    ),
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: ThemeColors.primaryColor,
    unselectedLabelColor: ThemeColors.unselectedItemColor,
    labelPadding: EdgeInsets.zero,
    labelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
    unselectedLabelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(color: ThemeColors.primaryColor, width: 2.0),
    ),
  ),
  primaryTextTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.37,
      color: Colors.black,
    ),
    headline2: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.41,
      color: Colors.black,
    ),
    headline3: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.01,
      color: Colors.black,
    ),
    headline4: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.38,
      color: Colors.black,
    ),
    bodyText1: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    bodyText2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 1,
    foregroundColor: ThemeColors.scaffoldBackgroundColor,
    backgroundColor: ThemeColors.backgroundColor,
    surfaceTintColor: ThemeColors.scaffoldBackgroundColor,
    shadowColor: Colors.black,
    titleTextStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.01,
      color: Colors.black,
    ),
    toolbarHeight: 56,
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.35,
      color: Colors.black,
    ),
    headline2: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.38,
      color: Colors.black,
    ),
    headline3: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.38,
      color: Colors.black,
    ),
    headline4: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.01,
      color: Colors.black,
    ),
    headline5: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.41,
      color: Colors.black,
    ),
    bodyText1: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    bodyText2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    subtitle1: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      letterSpacing: -0.24,
    ),
    subtitle2: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Colors.black,
      letterSpacing: -0.24,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    alignLabelWithHint: true,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ThemeColors.primaryColor, width: 1),
      borderRadius: AppUtils.kBorderRadius10,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFFFFFFF), width: 1),
      borderRadius: AppUtils.kBorderRadius10,
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ThemeColors.red, width: 1),
      borderRadius: AppUtils.kBorderRadius10,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ThemeColors.red, width: 1),
      borderRadius: AppUtils.kBorderRadius10,
    ),
    border: OutlineInputBorder(borderRadius: AppUtils.kBorderRadius10),
    disabledBorder: OutlineInputBorder(borderRadius: AppUtils.kBorderRadius10),
    filled: true,
    isDense: true,
    fillColor: ThemeColors.textFieldColor,
    floatingLabelAlignment: FloatingLabelAlignment.start,
    floatingLabelBehavior: FloatingLabelBehavior.always,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all<double>(2),
      backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return ThemeColors.disabledColor;
        } else {
          return ThemeColors.primaryColor;
        }
      }),
      maximumSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, 56),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: ThemeColors.backgroundColor,
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: true,
    selectedLabelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
    unselectedLabelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
    unselectedItemColor: ThemeColors.unselectedItemColor,
    selectedItemColor: ThemeColors.selectedItemColor,
    selectedIconTheme: IconThemeData(size: 25),
    unselectedIconTheme: IconThemeData(size: 25),
    elevation: 2,
  ),
);

final darkTheme = appTheme.copyWith(
  backgroundColor: ThemeColors.backgroundColor,
  scaffoldBackgroundColor: ThemeColors.scaffoldBackgroundColor,
  brightness: Brightness.dark,
  dividerTheme: appTheme.dividerTheme.copyWith(
    color: ThemeColors.dividerColor,
  ),
  appBarTheme: const AppBarTheme(
    foregroundColor: ThemeColors.scaffoldBackgroundColor,
    backgroundColor: ThemeColors.backgroundColor,
    surfaceTintColor: ThemeColors.scaffoldBackgroundColor,
    elevation: 1,
    titleTextStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.01,
      color: Colors.white,
    ),
    toolbarHeight: 56,
    scrolledUnderElevation: 1,
  ),
  colorScheme: const ColorScheme.dark(
    secondary: Colors.white,
  ),
  primaryTextTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 36,
      height: 46,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.37,
      color: Colors.white,
    ),
    headline2: TextStyle(
      fontSize: 28,
      height: 34,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.41,
      color: Colors.white,
    ),
    headline3: TextStyle(
      fontSize: 24,
      height: 32,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.01,
      color: Colors.white,
    ),
    headline4: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.38,
      color: Colors.white,
    ),
    bodyText1: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    bodyText2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.35,
      color: Colors.white,
    ),
    headline2: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.38,
      color: Colors.white,
    ),
    headline3: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.38,
      color: Colors.white,
    ),
    headline4: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.01,
      color: Colors.white,
    ),
    headline5: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.41,
      color: Colors.white,
    ),
    bodyText1: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    bodyText2: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    subtitle1: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      letterSpacing: -0.24,
    ),
    subtitle2: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Colors.white,
      letterSpacing: -0.24,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    alignLabelWithHint: true,
    isDense: true,
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
      borderSide: BorderSide(color: ThemeColors.errorColor),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
      borderSide: BorderSide(color: ThemeColors.errorColor),
    ),
    filled: true,
    fillColor: ThemeColors.textFieldColor,
    floatingLabelAlignment: FloatingLabelAlignment.start,
    floatingLabelBehavior: FloatingLabelBehavior.always,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all<double>(2),
      backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return ThemeColors.disabledColor;
        } else {
          return ThemeColors.primaryColor;
        }
      }),
      maximumSize: MaterialStateProperty.all<Size>(
        const Size(double.infinity, 56),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: ThemeColors.primaryColor,
    unselectedItemColor: Colors.white,
    selectedLabelStyle: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    unselectedLabelStyle: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    selectedIconTheme: IconThemeData(
      color: ThemeColors.primaryColor,
    ),
    unselectedIconTheme: IconThemeData(
      color: ThemeColors.disabledColor,
    ),
  ),
);
