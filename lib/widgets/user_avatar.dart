import 'package:flutter/widgets.dart';
import 'package:pets_adoption_app/widgets/network_image.dart';

class UserAvatar extends StatelessWidget {
  final String url;
  final double width;

  const UserAvatar(
    this.url, {
    Key key,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: AppNetworkImage(url),
      ),
    );
  }
}
