// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:customized_input_field/src/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum TextWeight { LIGHT, NORMAL, MEDIUM, BOLD, SEMI_BOLD }

enum TextSize {
  EXTRA_TINY,
  MEDIUM_TINY,
  TINY,
  SMALL,
  NORMAL,
  MEDIUM,
  SEMI_LARGE,
  LARGE,
  LARGE_EXTRA,
  HEADING,
  LARGE_HEADING,
  THIRTY,
  MSG,
  DEFAULT
}

class Styles {
  static TextStyle? customStyle({
    bool primary = true,
    bool secondary = false,
    bool inverseSurface = false,
    bool tertiary = false,
    TextWeight textWeight = TextWeight.NORMAL,
    TextSize textSize = TextSize.TINY,
  }) =>
      TextStyle(
        fontFamily: 'Poppins',
        fontWeight: textWeight == TextWeight.LIGHT
            ? FontWeight.w300
            : textWeight == TextWeight.NORMAL
                ? FontWeight.normal
                : textWeight == TextWeight.MEDIUM
                    ? FontWeight.w500
                    : textWeight == TextWeight.SEMI_BOLD
                        ? FontWeight.w600
                        : FontWeight.bold,
        fontSize: textSize == TextSize.EXTRA_TINY
            ? Dimensions.TEXT_SIZE_EXTRA_TINY
            : textSize == TextSize.MEDIUM_TINY
                ? Dimensions.TEXT_SIZE_MEDIUM_TINY
                : textSize == TextSize.TINY
                    ? Dimensions.TEXT_SIZE_TINY
                    : textSize == TextSize.SMALL
                        ? Dimensions.TEXT_SIZE_SMALL
                        : textSize == TextSize.NORMAL
                            ? Dimensions.TEXT_SIZE_NORMAL
                            : textSize == TextSize.MEDIUM
                                ? Dimensions.TEXT_SIZE_MEDIUM
                                : textSize == TextSize.SEMI_LARGE
                                    ? Dimensions.TEXT_SIZE_SEMI_LARGE
                                    : textSize == TextSize.LARGE
                                        ? Dimensions.TEXT_SIZE_LARGE
                                        : textSize == TextSize.LARGE_HEADING
                                            ? Dimensions.TEXT_SIZE_LARGE_HEADING
                                            : textSize == TextSize.LARGE_EXTRA
                                                ? Dimensions
                                                    .TEXT_SIZE_EXTRA_LARGE
                                                : textSize == TextSize.THIRTY
                                                    ? Dimensions
                                                        .TEXT_SIZE_THIRTY
                                                    : textSize ==
                                                            TextSize.HEADING
                                                        ? Dimensions
                                                            .TEXT_SIZE_HEADING
                                                        : textSize ==
                                                                TextSize.MSG
                                                            ? Dimensions
                                                                .TEXT_SIZE_MSG
                                                            : Dimensions
                                                                .DEFAULT_TEXT,
        color: tertiary
            ? Get.theme.colorScheme.onTertiary
            : secondary
                ? Get.theme.colorScheme.onSecondary
                : inverseSurface
                    ? Get.theme.colorScheme.onSurface
                    : Get.theme.colorScheme.onPrimary,
      );

  static TextStyle textStyle({
    Color color = Colors.black,
    TextDecoration decoration = TextDecoration.none,
    double fontSize = 10,
    double lineSpace = 1.5,
    FontWeight fontWeight = FontWeight.w600,
  }) =>
      TextStyle(
        fontSize: fontSize,
        color: color,
        decoration: decoration,
        decorationThickness: 1,
        decorationColor: color,
        height: lineSpace,
        fontFamily: Get.locale?.languageCode == 'en' ? 'Poppins' : 'Cairo',
        fontWeight: fontWeight,
      );

  static getLogbookHeadingStyle() => TextStyle(
        color: Get.context!.theme.colorScheme.onInverseSurface,
        fontWeight: FontWeight.w600,
        fontSize: Dimensions.TEXT_SIZE_NORMAL,
      );

  static getStaticBoxShadow() => [
        BoxShadow(
          color: Get.context!.theme.colorScheme.brightness == Brightness.dark
              ? Colors.transparent
              : Colors.grey.withOpacity(0.5),
          spreadRadius: -0.5,
          blurRadius: 0.8,
          offset: const Offset(0.5, 1.5),
        ),
      ];
}
