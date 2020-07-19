import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:pets_adoption_app/data/models/location.dart';
import 'package:pets_adoption_app/widgets/user_avatar.dart';

class PetsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final UserLocation userLocation;

  const PetsAppBar({Key key, this.userLocation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 90,
      child: SafeArea(
        child: Row(
          children: <Widget>[
            InkWell(
              child: Icon(FeatherIcons.grid),
            ),
            if (userLocation != null)
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Location',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.room,
                          size: 18,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(width: 10),
                        Wrap(
                          children: <Widget>[
                            Text(
                              '${userLocation.city},',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            Text(
                              ' ${userLocation.country}',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            else
              Spacer(),
            UserAvatar(
              'https://i.imgur.com/a2awzVm.jpg',
              width: 40,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 90);
}
