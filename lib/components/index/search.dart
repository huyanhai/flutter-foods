import 'package:flutter/material.dart';
import 'package:flutterapp/components/cus_images.dart';
import 'package:flutterapp/components/cus_text.dart';
import 'package:flutterapp/config/colors.dart';
import 'package:flutterapp/utils/adaptive.dart';

enum SearchTypes { enable, disable }

class Search extends StatefulWidget {
  Search({this.types = SearchTypes.disable});

  final SearchTypes types;

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController _controller = new TextEditingController();
  FocusNode _focusNode = new FocusNode();

  Widget searchDisable() {
    return Container(
      height: Adaptive.setWidth(32.0),
      alignment: Alignment.centerLeft,
      decoration: new BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(
          Radius.circular(32.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CusImages(
            url: "assets/images/search.png",
            types: ImagesTypes.asset,
            width: Adaptive.setWidth(20.0),
            height: Adaptive.setWidth(20.0),
          ),
          CusText(
            content: "麻辣龙虾",
            fontSize: Adaptive.setSp(12.0),
            color: ConfigColors.oc1C1C1E,
          )
        ],
      ),
    );
  }

  Widget searchEnable() {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: Adaptive.setWidth(32.0),
              alignment: Alignment.centerLeft,
              decoration: new BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(
                  Radius.circular(32.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15.0, right: 8.0),
                    child: CusImages(
                      url: "assets/images/search.png",
                      types: ImagesTypes.asset,
                      width: Adaptive.setWidth(20.0),
                      height: Adaptive.setWidth(20.0),
                    ),
                  ),
                  Expanded(
                    child: EditableText(
                      controller: _controller,
                      focusNode: _focusNode,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      cursorColor: Colors.black,
                      backgroundCursorColor: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(left: 15.0, right: 8.0),
                      child: CusImages(
                        url: "assets/images/cleanup.png",
                        types: ImagesTypes.asset,
                        width: 16.0,
                        height: 16.0,
                      ),
                    ),
                    onTap: () {
                      print("onTap");
                    },
                  ),
                ],
              ),
            ),
            flex: 1,
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(left: 13.0),
              child: CusText(
                content: "取消",
                fontSize: Adaptive.setSp(13.0),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.types == SearchTypes.enable) {
      return searchEnable();
    }
    return searchDisable();
  }
}
