import 'package:flutter/material.dart';
import 'package:foodapp/utils/colors.dart';

ThemeData buildThemeData() {
  return ThemeData(
    primaryColor: kAccentColor,
    scaffoldBackgroundColor: kBgColor,
    fontFamily: "SF Pro Text",
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
