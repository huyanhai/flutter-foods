import 'package:flutter_screenutil/flutter_screenutil.dart';

class Adaptive {
  ///设置宽度
  static setWidth(value) {
    return ScreenUtil().setWidth(value);
  }

  ///设置高度
  static setHeight(value) {
    return ScreenUtil().setHeight(value);
  }

  ///设置字体大小
  static setSp(value) {
    return ScreenUtil().setSp(value);
  }

  //设备的像素密度
  static double get pixelRatio => ScreenUtil().pixelRatio;

  // ///当前设备宽度 dp
  // static double get screenWidth => ScreenUtil().screenWidthDp;

  // // ///当前设备高度 dp
  // static get screenHeight => ScreenUtil().screenHeightDp;

  // ///底部安全区距离 dp
  static get bottomBarHeight => ScreenUtil().bottomBarHeight;

  // ///状态栏高度 dp 刘海屏会更高
  static get statusBarHeight => ScreenUtil().statusBarHeight;
}
