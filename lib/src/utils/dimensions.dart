// ignore_for_file: prefer_const_declarations, non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin Dimensions {
  static final TEXT_SIZE_THIRTY = 25.0;
  static final TEXT_SIZE_LARGE_HEADING = 23.0;
  static final TEXT_SIZE_EXTRA_LARGE = 18.0;
  static const TEXT_SIZE_SEMI_LARGE = 15.0;
  static final TEXT_SIZE_NORMAL = 10.0;
  static final TEXT_SIZE_TINY = 7.0;
  static final TEXT_SIZE_MEDIUM_TINY = 7.0;
  static final TEXT_SIZE_EXTRA_TINY = 6.0;
  static final TEXT_SIZE_MSG = 10.0;

  static final DEFAULT_TEXT = 25.0;

  static const TOOLBAR_ICON_SIZE = 28.0;
  static const GENERIC_ICON_SIZE = 18.0;
  static const TOOLBAR_END_ICON_SIZE = 5.0;

  static const TEXT_SIZE_HEADING = 20.0;
  static const TEXT_SIZE_LARGE = 18.0;
  static const TEXT_SIZE_MEDIUM = 13.0;
  static const TEXT_SIZE_SMALL = 11.0;

  static ScreenSize getScreenSize(BuildContext context) {
    var screenSize = context.mediaQuery.size.width;

    if (screenSize <= 600) {
      return ScreenSize.MOBILE_VIEW;
    } else if (screenSize > 600 && screenSize <= 1300) {
      return ScreenSize.MEDIUM_SCREEN;
    } else {
      return ScreenSize.LARGE_SCREEN;
    }
  }

  static double getScreenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
}

enum ScreenSize { MOBILE_VIEW, MEDIUM_SCREEN, LARGE_SCREEN }
