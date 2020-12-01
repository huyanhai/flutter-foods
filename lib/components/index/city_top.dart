import 'package:flutter/material.dart';
import 'package:flutterapp/components/cus_images.dart';
import 'package:flutterapp/components/cus_text.dart';
import 'package:flutterapp/config/colors.dart';
import 'package:flutterapp/utils/adaptive.dart';

class CityTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Adaptive.setHeight(38.0),
      color: ConfigColors.cFFFFFF,
      child: Row(
        children: [
          CusImages(
            url: "assets/images/city_top.png",
            width: Adaptive.setWidth(65.0),
            height: Adaptive.setHeight(15.0),
          ),
          Container(
            margin: EdgeInsets.only(
              left: Adaptive.setWidth(10.0),
              right: Adaptive.setWidth(3.0),
            ),
            width: Adaptive.setWidth(26.0),
            height: Adaptive.setWidth(15.0),
            color: ConfigColors.cFFEEDD,
            alignment: Alignment(0, 0),
            child: CusText(
              content: "优惠",
              color: ConfigColors.cFF8100,
              fontSize: Adaptive.setSp(10.0),
            ),
          ),
          Expanded(
            child: CusText(
              content: "大学城附近商家，下单大学城附近商家，下单大学城附近商家，下单",
              color: ConfigColors.oc1C1C1E,
              fontSize: Adaptive.setSp(12.0),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: Adaptive.setWidth(33.0),
            ),
            child: CusImages(
              url: "assets/images/more.png",
              width: Adaptive.setWidth(7.0),
              height: Adaptive.setWidth(12.0),
            ),
          ),
        ],
      ),
    );
  }
}
