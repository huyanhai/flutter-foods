import 'package:flutter/material.dart';
import 'package:flutterapp/components/cus_swiper.dart';
import 'package:flutterapp/components/index/change_city.dart';
import 'package:flutterapp/components/index/search.dart';
import 'package:flutterapp/utils/tools.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: Tools.statusBarHeight + 19.0,
        ),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Container(
              child: ChangeCity(),
              margin: EdgeInsets.only(left: 12.0, right: 12.0),
            ),
            Container(
              margin: EdgeInsets.only(left: 12.0, right: 12.0, top: 15.0),
              child: Search(),
            ),
            Container(
              margin: EdgeInsets.only(top: 12.0),
              child: CusSwiper(),
            )
          ],
        ),
      ),
    );
  }
}
