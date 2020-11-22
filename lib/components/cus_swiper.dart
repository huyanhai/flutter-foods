import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutterapp/config/colors.dart';

class CusSwiper extends StatefulWidget {
  final imgList = [
    "https://y.gtimg.cn/music/common/upload/MUSIC_FOCUS/3263826.jpg?max_age=2592000",
    "https://y.gtimg.cn/music/common/upload/MUSIC_FOCUS/3244487.jpg?max_age=2592000",
    "https://y.gtimg.cn/music/common/upload/MUSIC_FOCUS/3263462.jpg?max_age=2592000",
  ];

  @override
  _CusSwiperState createState() => _CusSwiperState();
}

class _CusSwiperState extends State<CusSwiper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(4.0),
        ),
      ),
      child: new Swiper(
        autoplay: true,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(left: 12.0, right: 12.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  widget.imgList[index],
                ),
                fit: BoxFit.fitWidth,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
          );
        },
        itemCount: 3,
        pagination: SwiperPagination(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
          builder: DotSwiperPaginationBuilder(
            color: ConfigColors.ocFFFFFF,
            activeColor: ConfigColors.cFFFFFF,
            size: 5.0,
            activeSize: 5.0,
          ),
        ),
      ),
    );
  }
}
