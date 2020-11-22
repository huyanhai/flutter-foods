import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CusSwiper extends StatefulWidget {
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
          return ClipRRect(
            borderRadius: BorderRadius.circular(4.0),
            child: new Image.network(
              "http://via.placeholder.com/350x150",
              fit: BoxFit.fill,
            ),
          );
        },
        itemCount: 3,
        pagination: SwiperPagination(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
          builder: DotSwiperPaginationBuilder(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
