import 'package:flutter/material.dart';

class ScreenUtil {
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double rem(BuildContext context, double value) =>
      screenWidth(context) / 375 * value;
}
