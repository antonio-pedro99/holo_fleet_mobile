import 'package:flutter/material.dart';
import 'package:holo_fleet_mobile/constants.dart';

class NaiveNavigationBarItem extends StatelessWidget {
  const NaiveNavigationBarItem(
      {Key? key,
      this.color = Colors.white,
      required this.title,
      required this.icon,
      this.listen = false,
      this.onPress})
      : super(key: key);

  final Color? color;
  final String title;
  final IconData icon;
  final bool? listen;
  final VoidCallback? onPress; //not used here has there wont be any change.
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        children: [
          IconButton(
              onPressed: () => {},
              icon: Icon(
                icon,
                color: color,
                size: 24,
              )),
          listen ?? true
              ? const Positioned(
                  right: 12,
                  top: 12,
                  child: Icon(
                    Icons.circle,
                    size: 10,
                    color: red,
                  ))
              : Container()
        ],
      ),
      Text(title,
          style: TextStyle(
              color: color, fontFamily: "FS Pro Display", fontSize: 10))
    ]);
  }
}
