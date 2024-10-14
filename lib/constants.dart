import 'package:flutter/material.dart';

class GlobalConstants {
  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(0, 0, 0, 0.5),
      Color.fromRGBO(29, 147, 135, 0.5),
    ],
    stops: [0.0, 0.89],
  );
  static const LinearGradient appbarGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF000000),
      Color.fromRGBO(198, 189, 194, 0.9),
    ],
    stops: [0.1, 1.0],
  );
}
