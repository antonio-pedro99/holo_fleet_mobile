import 'package:flutter/material.dart';
import 'package:holo_fleet_mobile/constants.dart';

class NaiveSideMenuItem extends StatelessWidget {
  const NaiveSideMenuItem(
      {Key? key,
      required this.title,
      required this.icon,
      this.listen = false,
      this.labelcolor = grey16,
      this.backgroundColor = Colors.transparent,
      this.onPress})
      : super(key: key);

  final String title;
  final IconData icon;
  final Color labelcolor;
  final Color backgroundColor;
  final bool? listen;
  final VoidCallback? onPress;
  //not used here has there wont be any change.
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
                topRight: Radius.circular(50))),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(color: labelcolor, fontFamily: "FS Pro Display"),
          ),
          leading: Icon(
            icon,
            color: labelcolor,
          ),
        ));
  }
}
