import 'package:flutter/widgets.dart';
import 'package:flutter_advanced_networkimage/provider.dart';

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
        child: Image(
          image: AdvancedNetworkImage(
            url,
            useDiskCache: true,
            cacheRule: CacheRule(
              maxAge: const Duration(days: 7),
            ),
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
