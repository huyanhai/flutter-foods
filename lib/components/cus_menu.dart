import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutterapp/components/cus_images.dart';
import 'package:flutterapp/utils/adaptive.dart';

class CusMenu extends StatefulWidget {
  final tabs;
  final int num;
  CusMenu({Key key, @required this.tabs, this.num = 5}) : super(key: key);
  @override
  _CusMenuState createState() => _CusMenuState();
}

class _CusMenuState extends State<CusMenu> {
  addItem(List<Widget> _list, int index) {
    _list.add(
      Container(
        width: Adaptive.setWidth(70.7),
        margin: EdgeInsets.only(top: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CusImages(
              url: widget.tabs[index]["icon"],
              width: Adaptive.setWidth(45.0),
              height: Adaptive.setWidth(45.0),
              types: ImagesTypes.asset,
            ),
            Text(widget.tabs[index]["name"])
          ],
        ),
      ),
    );
  }

  Widget showItemOne() {
    List<Widget> rowOne = [];
    List<Widget> rowTwo = [];
    List<Widget> colume = [];
    for (var i = 0; i < widget.tabs.length; i++) {
      if (i <= widget.num - 1) {
        addItem(rowOne, i);
      } else if (widget.num - 1 < i && i <= widget.num * 2 - 1) {
        addItem(rowTwo, i);
      }
    }
    colume.add(Row(
      children: rowOne,
    ));
    colume.add(Row(
      children: rowTwo,
    ));
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: Column(
        children: colume,
      ),
    );
  }

  Widget showItemTwo() {
    List<Widget> rowOne = [];
    List<Widget> rowTwo = [];
    List<Widget> colume = [];

    for (var i = widget.num * 2; i < widget.tabs.length; i++) {
      if (i <= widget.num * 3 - 1) {
        addItem(rowOne, i);
      } else if (widget.num * 3 - 1 < i && i <= widget.num * 4 - 1) {
        addItem(rowTwo, i);
      }
    }
    colume.add(Row(
      children: rowOne,
    ));
    colume.add(Row(
      children: rowTwo,
    ));
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: Column(
        children: colume,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 50.0),
      child: Container(
        height: widget.tabs.length > widget.num
            ? Adaptive.setHeight(200.0)
            : Adaptive.setHeight(100.0),
        child: new Swiper(
          itemCount: widget.tabs.length ~/ widget.num,
          loop: false,
          itemBuilder: (context, index) {
            if (index == 0) {
              return showItemOne();
            } else {
              return showItemTwo();
            }
          },
        ),
      ),
    );
  }
}
