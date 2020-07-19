import 'package:flutter/material.dart';
import 'package:pets_adoption_app/theme/icon.dart';

class AppTheme {
  static ThemeData getTheme(BuildContext context) {
    return ThemeData(
      iconTheme: getIconTheme(context),
    );
  }
}
