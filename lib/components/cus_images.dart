import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

enum ImagesTypes { asset, file, network, memory }

class CusImages extends StatelessWidget {
  CusImages(
      {Key key,
      @required this.url,
      this.types = ImagesTypes.asset,
      this.width = 1.0,
      this.height = 1.0})
      : super(key: key);

  final ImagesTypes types;
  final String url;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    switch (types) {
      case ImagesTypes.asset:
        return Image.asset(
          url,
          width: width,
          height: height,
        );
        break;
      case ImagesTypes.network:
        return Image.network(
          url,
          width: width,
          height: height,
        );
        break;
      default:
        return Image.asset(
          url,
          width: width,
          height: height,
        );
        break;
    }
  }
}
