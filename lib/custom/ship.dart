import 'package:flutter/material.dart';
import 'package:holo_fleet_mobile/constants.dart';

class Ship extends StatelessWidget {
  const Ship({Key? key, required this.onPressed, required this.text})
      : super(key: key);

  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onDoubleTap: onPressed,
        child: Container(
          height: 30,
          width: 120,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: white23, borderRadius: BorderRadius.circular(100)),
          child: Text(text,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12)),
        ));
  }
}
