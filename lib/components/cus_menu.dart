import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutterapp/components/cus_images.dart';
import 'package:flutterapp/config/colors.dart';

class CusMenu extends StatefulWidget {
  final tabs;
  CusMenu({Key key, @required this.tabs}) : super(key: key);
  @override
  _CusMenuState createState() => _CusMenuState();
}

class _CusMenuState extends State<CusMenu> {
  Widget showItems() {
    List<Widget> tab = [];
    for (var item in widget.tabs) {
      tab.add(
        Expanded(
          child: Container(
            width: 100.0,
            child: Column(
              children: [
                CusImages(
                  url: item["icon"],
                  width: 45.0,
                  height: 45.0,
                  types: ImagesTypes.network,
                ),
                Text(item["name"])
              ],
            ),
          ),
        ),
      );
    }
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: GridView(
        padding: EdgeInsets.zero,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 120.0, childAspectRatio: 2.0 //宽高比为2
            ),
        children: tab,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 50.0),
      child: Container(
        height: 10.0,
        child: new Swiper(
          itemCount: 2,
          loop: false,
          itemBuilder: (context, index) {
            if (index == 0) {
              return showItems();
            } else {
              return Container(
                margin: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Text("index1"),
              );
            }
          },
        ),
      ),
    );
  }
}
