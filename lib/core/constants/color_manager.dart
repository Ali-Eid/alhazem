import 'package:flutter/material.dart';

class ColorManager {
  //-------main colors------------
  static Color primary = Hex16Color.fromHex("#0093a4");
  static Color primaryDark = Hex16Color.fromHex("#007BB2");
  static Color primaryLight = Hex16Color.fromHex("#67DAFF");
  static Color secondary = Hex16Color.fromHex("#bdc645");
  static Color secondaryDark = Hex16Color.fromHex("#388E3C");
  static Color secondaryLight = Hex16Color.fromHex("#C8E6C9");
  static Color background = Hex16Color.fromHex("#F5F5F5");
  static Color error = Hex16Color.fromHex("#B00020");
  static Color white = Hex16Color.fromHex("#FFFFFF");
  static Color black = Hex16Color.fromHex("#000000");
  static Color shipGrey = Hex16Color.fromHex("#424242");
  static Color smokeyGrey = Hex16Color.fromHex("#757575");
  static Color shadow = primary.withOpacity(.3);
  // static Color shadow = Hex16Color.fromHex("#18638E");

  static Color lightGrey = Hex16Color.fromHex("#d3d3d3 ");
}

extension Hex16Color on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
