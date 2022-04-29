import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;

  const Responsive({Key? key, @required this.mobile, @required this.tablet})
      : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTable(BuildContext context) =>
      MediaQuery.of(context).size.width >= 850 &&
      MediaQuery.of(context).size.width < 1100;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    if (_size.width < 850 && mobile != null) {
      return mobile!;
    } else if (_size.width >= 850 && tablet != null) {
      return tablet!;
    } else {
      return Container();
    }
  }
}