import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppUtils {
  AppUtils._();

  /// sliver box
  static const SliverGap kSliverBox16 = SliverGap(16);

  /// box
  static const kGap = Gap(0);
  static const kGap2 = Gap(2);
  static const kGap4 = Gap(4);
  static const kGap6 = Gap(6);
  static const kGap8 = Gap(8);
  static const kGap12 = Gap(12);
  static const kGap16 = Gap(16);
  static const kGap24 = Gap(24);
  static const kBoxWith4 = SizedBox(width: 4);
  static const kBoxWith8 = SizedBox(width: 8);
  static const kBoxWith12 = SizedBox(width: 12);

  /// divider
  static const kDivider = Divider(height: 1, thickness: 1);
  static const kPad16Divider = Padding(
    padding: EdgeInsets.only(left: 16),
    child: Divider(height: 1, thickness: 1),
  );
  static const kPadHor16Divider = Padding(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Divider(height: 1, thickness: 1),
  );
  static const kPad60Divider = Padding(
    padding: EdgeInsets.only(left: 60),
    child: Divider(height: 1, thickness: 1),
  );

  /// spacer
  static const kSpacer = Spacer();

  /// Sizedbox
  static const kBox = SizedBox.shrink();
  static const kBoxHeight2 = SizedBox(height: 2);
  static const kBoxHeight4 = SizedBox(height: 4);
  static const kBoxHeight6 = SizedBox(height: 6);
  static const kBoxHeight8 = SizedBox(height: 8);
  static const kBoxHeight10 = SizedBox(height: 10);
  static const kBoxHeight12 = SizedBox(height: 12);
  static const kBoxHeight14 = SizedBox(height: 14);
  static const kBoxHeight16 = SizedBox(height: 16);
  static const kBoxHeight18 = SizedBox(height: 18);
  static const kBoxHeight20 = SizedBox(height: 20);
  static const kBoxHeight24 = SizedBox(height: 24);
  static const kBoxHeight45 = SizedBox(height: 45);
  static const kBoxHeight48 = SizedBox(height: 48);
  static const kBoxHeight58 = SizedBox(height: 58);

  static const kBoxHeight30 = SizedBox(height: 30);
  static const kBoxHeight32 = SizedBox(height: 32);
  static const kBoxHeight64 = SizedBox(height: 64);
  static const kBoxWidth2 = SizedBox(width: 2);
  static const kBoxWidth8 = SizedBox(width: 8);
  static const kBoxWidth6 = SizedBox(width: 6);
  static const kBoxWidth4 = SizedBox(width: 4);
  static const kBoxWidth10 = SizedBox(width: 10);
  static const kBoxWidth12 = SizedBox(width: 12);
  static const kBoxWidth20 = SizedBox(width: 20);
  static const kBoxWidth16 = SizedBox(width: 16);
  static const kBoxWidth24 = SizedBox(width: 24);
  static const kBoxWidth30 = SizedBox(width: 30);

  /// padding
  static const kPaddingAll4 = EdgeInsets.all(4);
  static const kPaddingAll3 = EdgeInsets.all(3);
  static const kPaddingAll1 = EdgeInsets.all(1);
  static const kPaddingHorizontal12Vertical8 =
      EdgeInsets.symmetric(horizontal: 12.0, vertical: 8);
  static const kPaddingAll6 = EdgeInsets.all(6);
  static const kPaddingHorizontal16Vertical8 =
      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8);
  static const kPaddingAll8 = EdgeInsets.all(8);
  static const kPaddingAll12 = EdgeInsets.all(12);
  static const kPaddingAll16 = EdgeInsets.all(16);
  static const kPaddingAllB16 = EdgeInsets.fromLTRB(16, 16, 16, 0);
  static const kPaddingAll24 = EdgeInsets.all(24);
  static const kPaddingHorizontal16 = EdgeInsets.symmetric(horizontal: 16);
  static const kPaddingLTRB8 = EdgeInsets.only(
    left: 16,
    right: 16,
    top: 16,
    bottom: 8,
  );
  static const kPaddingLT8RB = EdgeInsets.only(
    left: 16,
    right: 16,
    top: 8,
    bottom: 16,
  );

  static const kPaddingHor32Ver20 =
      EdgeInsets.symmetric(horizontal: 32, vertical: 20);
  static const kPaddingHor16 = EdgeInsets.symmetric(horizontal: 16);
  static const kPaddingHor16Ver12 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 12);
  static const kPaddingHor16Ver8 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 8);
  static const kPaddingHor8Ver4 =
      EdgeInsets.symmetric(horizontal: 8, vertical: 4);
  static const kPaddingVer10Hor16 =
      EdgeInsets.symmetric(vertical: 10, horizontal: 16);

  /// border radius
  static const kRadius = Radius.zero;
  static const kRadius8 = Radius.circular(8);
  static const kRadius12 = Radius.circular(12);
  static const kBorderRadius = BorderRadius.all(Radius.circular(0));
  static const kBorderRadius2 = BorderRadius.all(Radius.circular(2));
  static const kBorderRadius4 = BorderRadius.all(Radius.circular(4));
  static const kBorderRadius6 = BorderRadius.all(Radius.circular(6));
  static const kBorderRadius8 = BorderRadius.all(Radius.circular(8));
  static const kBorderRadius10 = BorderRadius.all(Radius.circular(10));
  static const kBorderRadiusTopLeftTopRight10 = BorderRadius.only(
      topLeft: Radius.circular(10), topRight: Radius.circular(10));
  static const kBorderRadiusTop8 = BorderRadius.only(
    topLeft: Radius.circular(8),
    topRight: Radius.circular(8),
  );
  static const kBorderRadiusBottom8 = BorderRadius.only(
    bottomLeft: Radius.circular(8),
    bottomRight: Radius.circular(8),
  );
  static const kBorderRadius12 = BorderRadius.all(Radius.circular(12));
  static const kBorderRadius16 = BorderRadius.all(Radius.circular(16));
  static const kBorderRadius48 = BorderRadius.all(Radius.circular(48));
  static const kBorderRadius64 = BorderRadius.all(Radius.circular(64));

  // static const kTabBarBoxDecoration = BoxDecoration(
  //   color: AppColors.bgGrey2,
  //   borderRadius: kBorderRadius8,
  // );
  // static const kTabBarBoxDecorationDark = BoxDecoration(
  //   color: ThemeColors.backgroundDark,
  //   borderRadius: kBorderRadius8,
  // );
  // static const kTabBoxDecoration = BoxDecoration(
  //   color: AppColors.white,
  //   borderRadius: kBorderRadius8,
  // );
  static Size? _currentSize;

  static setCurrentSize(Size u) {
    _currentSize = u;
  }

  static Size get currentSize => _currentSize ?? const Size(375, 812);

  static void showSnackBar(BuildContext context, String text) {
    final snackBar = SnackBar(
      content: Text(text, style: const TextStyle(fontSize: 24)),
    );

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
