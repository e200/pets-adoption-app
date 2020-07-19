import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pets_adoption_app/data/models/location.dart';
import 'package:pets_adoption_app/screens/home/widgets/app_bar.dart';
import 'package:pets_adoption_app/screens/home/widgets/search_input.dart';
import 'package:pets_adoption_app/widgets/pet_categories/widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  UserLocation userLocation;

  @override
  void initState() {
    userLocation = UserLocation(
      city: 'Kyiv',
      country: 'Ukraine',
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            PetsAppBar(
              userLocation: userLocation,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 30,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFFF2F2F2),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: SearchInput(),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    height: 114,
                    child: PetCategoriesListView(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
