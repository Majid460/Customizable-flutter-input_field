import 'package:flutter/material.dart';

extension IntCasingExtension on int {
  SizedBox get marginVertical => SizedBox(height: toDouble());

  SizedBox get marginHorizontal => SizedBox(width: toDouble());
}

extension DoubleCasingExtension on double {
  SizedBox get marginVertical => SizedBox(height: this);

  SizedBox get marginHorizontal => SizedBox(width: this);
}
