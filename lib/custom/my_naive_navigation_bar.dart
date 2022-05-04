import 'package:flutter/material.dart';

class MyNaiveNavigationBar extends StatelessWidget {
  const MyNaiveNavigationBar(
      {Key? key, required this.items, required this.activeColor})
      : super(key: key);

  final List<Widget> items;
  final Color activeColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: items));
  }
}
