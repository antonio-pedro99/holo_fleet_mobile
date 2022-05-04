import 'package:flutter/material.dart';

class MyNaiveSideMenu extends StatelessWidget {
  const MyNaiveSideMenu(
      {Key? key, required this.items, required this.activeColor})
      : super(key: key);

  final Color activeColor;
  final List<Widget> items;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: ListView(
          physics: const NeverScrollableScrollPhysics(), children: items),
    );
  }
}
