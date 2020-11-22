import 'package:flutter/material.dart';
import 'package:flutterapp/components/cus_images.dart';
import 'package:flutterapp/components/cus_text.dart';
import 'package:flutterapp/config/colors.dart';

class ChangeCity extends StatefulWidget {
  @override
  _ChangeCityState createState() => _ChangeCityState();
}

class _ChangeCityState extends State<ChangeCity> {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CusImages(
              url: "assets/images/location.png",
              types: ImagesTypes.asset,
              width: 24.0,
              height: 24.0,
            ),
            Container(
              width: 180.0,
              margin: EdgeInsets.only(left: 4.0, right: 4.0),
              child: CusText(
                content:
                    "texttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttext",
                fontSize: 17.0,
                color: ConfigColors.c1C1C1E,
              ),
            ),
            CusImages(
              url: "assets/images/arrow_down.png",
              types: ImagesTypes.asset,
              width: 16.0,
              height: 16.0,
            )
          ],
        ),
        CusImages(
          url: "assets/images/scan.png",
          types: ImagesTypes.asset,
          width: 24.0,
          height: 24.0,
        )
      ],
    );
  }
}
