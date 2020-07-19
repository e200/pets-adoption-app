import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pets_adoption_app/widgets/network_image.dart';

class PetCategoryItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final Function onTap;
  final EdgeInsets margin;
  final double width;

  PetCategoryItem({
    Key key,
    this.name,
    this.imageUrl,
    this.onTap,
    this.margin,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: margin,
      child: Column(
        children: <Widget>[
          if (imageUrl != null)
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(0, 5),
                    color: Theme.of(context).primaryColor.withOpacity(.3),
                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: AppNetworkImage(imageUrl),
              ),
            ),
          SizedBox(height: 10),
          Text(name),
        ],
      ),
    );
  }
}
