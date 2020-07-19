import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets_adoption_app/theme/icon.dart';

class AppTheme {
  static ThemeData getTheme(BuildContext context) {
    return ThemeData(
      primaryColor: Colors.green.shade900,
      iconTheme: getIconTheme(context),
      textTheme: GoogleFonts.openSansTextTheme(),
    );
  }
}
