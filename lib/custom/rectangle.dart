import 'package:flutter/material.dart';

class Rectangle extends StatelessWidget {
  const Rectangle(
      {Key? key, required this.children, this.radius = 13, this.padding = 20})
      : super(key: key);

  final List<Widget> children;
  final double? radius;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Card(
      borderOnForeground: false,
      elevation: 0.1,
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius!)),
      child: Container(
        padding: EdgeInsets.fromLTRB(20, padding!, 20, 10),
        width: media.width,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(radius!)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, children: children),
      ),
    );
  }
}
