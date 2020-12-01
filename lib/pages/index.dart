import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterapp/components/cus_menu.dart';
import 'package:flutterapp/components/cus_swiper.dart';
import 'package:flutterapp/components/index/change_city.dart';
import 'package:flutterapp/components/index/city_top.dart';
import 'package:flutterapp/components/index/search.dart';
import 'package:flutterapp/config/colors.dart';
import 'package:flutterapp/utils/tools.dart';

class Index extends StatelessWidget {
  final imgList = [
    "https://y.gtimg.cn/music/common/upload/MUSIC_FOCUS/3263826.jpg?max_age=2592000",
    "https://y.gtimg.cn/music/common/upload/MUSIC_FOCUS/3244487.jpg?max_age=2592000",
    "https://y.gtimg.cn/music/common/upload/MUSIC_FOCUS/3263462.jpg?max_age=2592000",
  ];

  final tabs = [
    {"icon": "assets/images/bread.png", "name": "美食外卖"},
    {"icon": "assets/images/drink.png", "name": "快餐简餐"},
    {"icon": "assets/images/bread.png", "name": "元气早餐"},
    {"icon": "assets/images/drink.png", "name": "日本料理"},
    {"icon": "assets/images/bread.png", "name": "快餐简餐"},
    {"icon": "assets/images/bread.png", "name": "快餐简餐"},
    {"icon": "assets/images/bread.png", "name": "快餐简餐"},
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(375, 667), allowFontScaling: false);
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Flex(
            direction: Axis.vertical,
            children: [
              Container(
                color: ConfigColors.cFFFFFF,
                child: ChangeCity(),
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
              ),
              Container(
                color: ConfigColors.cFFFFFF,
                padding: EdgeInsets.only(left: 12.0, right: 12.0, top: 15.0),
                child: Search(),
              ),
              Container(
                color: ConfigColors.cFFFFFF,
                padding: EdgeInsets.only(top: 12.0),
                child: CusSwiper(imgList: imgList),
              ),
              Container(
                color: ConfigColors.cFFFFFF,
                padding: EdgeInsets.only(bottom: 12.0),
                child: CusMenu(tabs: tabs),
              ),
              Container(
                color: ConfigColors.cFFFFFF,
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                margin: EdgeInsets.only(top: 1.0),
                child: CityTop(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
