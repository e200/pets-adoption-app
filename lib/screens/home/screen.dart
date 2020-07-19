import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pets_adoption_app/screens/home/widgets/app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          PetsAppBar(),
        ],
      ),
    );
  }
}
