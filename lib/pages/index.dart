import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterapp/components/cus_menu.dart';
import 'package:flutterapp/components/cus_swiper.dart';
import 'package:flutterapp/components/index/change_city.dart';
import 'package:flutterapp/components/index/city_top.dart';
import 'package:flutterapp/components/index/search.dart';
import 'package:flutterapp/config/colors.dart';
import 'package:flutterapp/utils/adaptive.dart';

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
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(top: 50.0),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: ConfigColors.cFFFFFF,
              child: ChangeCity(),
              padding: EdgeInsets.only(
                left: 12.0,
                right: 12.0,
              ),
            ),
          ),
          SliverAppBar(
            pinned: true,
            flexibleSpace: Container(
              color: ConfigColors.cFFFFFF,
              padding: EdgeInsets.only(
                left: 12.0,
                right: 12.0,
              ),
              child: Search(),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: ConfigColors.cFFFFFF,
              padding: EdgeInsets.only(
                top: 12.0,
              ),
              child: CusSwiper(imgList: imgList),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: ConfigColors.cFFFFFF,
              padding: EdgeInsets.only(
                bottom: 12.0,
              ),
              child: CusMenu(tabs: tabs),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: ConfigColors.cFFFFFF,
              padding: EdgeInsets.only(
                left: 12.0,
                right: 12.0,
              ),
              margin: EdgeInsets.only(top: 1.0),
              child: CityTop(),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 1000.0,
              color: Colors.red,
              child: Text("color"),
            ),
          ),
        ],
      ),
    );
  }
}

class _SliverAppBar extends SliverPersistentHeaderDelegate {
  _SliverAppBar(
      {@required this.minHeight,
      @required this.maxHeight,
      @required this.child});

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(covariant _SliverAppBar oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
