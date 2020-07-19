import 'package:flutter/material.dart';
import 'package:pets_adoption_app/screens/home/screen.dart';
import 'package:pets_adoption_app/theme/theme.dart';

class PetsAdoptionApp extends StatelessWidget {
  static String appName = 'Pets Adoption';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: AppTheme.getTheme(context),
    );
  }
}
