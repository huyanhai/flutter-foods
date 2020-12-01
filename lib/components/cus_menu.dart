import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutterapp/components/cus_images.dart';
import 'package:flutterapp/components/cus_text.dart';
import 'package:flutterapp/config/colors.dart';
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
        width: Adaptive.setWidth(70.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CusImages(
              url: widget.tabs[index]["icon"],
              width: Adaptive.setWidth(45.0),
              height: Adaptive.setWidth(45.0),
              types: ImagesTypes.asset,
            ),
            CusText(
              content: widget.tabs[index]["name"],
              fontSize: Adaptive.setSp(11.0),
              color: ConfigColors.oc1C1C1E,
            )
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
      mainAxisAlignment: MainAxisAlignment.start,
      children: rowOne,
    ));
    if (rowTwo.length > 0) {
      colume.add(
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: rowTwo,
          ),
        ),
      );
    }
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
      mainAxisAlignment: MainAxisAlignment.start,
      children: rowOne,
    ));
    if (rowTwo.length > 0) {
      colume.add(
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: rowTwo,
          ),
        ),
      );
    }
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
    return Container(
      height: widget.tabs.length > widget.num
          ? Adaptive.setHeight(113.0)
          : Adaptive.setHeight(52.0),
      child: new Swiper(
        itemCount: (widget.tabs.length < widget.num
            ? widget.num
            : widget.tabs.length ~/ widget.num),
        loop: false,
        itemBuilder: (context, index) {
          if (index == 0) {
            return showItemOne();
          } else {
            return showItemTwo();
          }
        },
      ),
    );
  }
}
