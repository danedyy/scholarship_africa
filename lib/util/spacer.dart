import 'package:flutter/material.dart';

class S {
  static SizedBox h(double h) {
    return SizedBox(height: h);
  }

  static double rh(double h, BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    if (isPortrait) {
      return MediaQuery.of(context).size.height * h;
    } else {
      return MediaQuery.of(context).size.width * h;
    }
  }

  static SizedBox w(double w) {
    return SizedBox(width: w);
  }
}
