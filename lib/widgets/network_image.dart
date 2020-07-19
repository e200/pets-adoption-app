import 'package:flutter/widgets.dart';
import 'package:flutter_advanced_networkimage/provider.dart';

class AppNetworkImage extends StatelessWidget {
  final String url;

  const AppNetworkImage(this.url, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
