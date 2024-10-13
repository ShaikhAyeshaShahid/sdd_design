import 'package:flutter/cupertino.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static double? _screenWidth;
  static double? _screenHeight;

  static width(BuildContext context, double m) {
    _mediaQueryData = MediaQuery.of(context);
    _screenWidth = _mediaQueryData.size.width * m;
    // debugPrint('$screenWidth');
    return _screenWidth;
  }

  static height(BuildContext context, double m) {
    _mediaQueryData = MediaQuery.of(context);
    _screenHeight = _mediaQueryData.size.height * m;

    return _screenHeight;
  }
}
