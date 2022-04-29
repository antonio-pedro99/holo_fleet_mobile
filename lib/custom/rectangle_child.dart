import 'package:flutter/material.dart';
import 'package:holo_fleet_mobile/constants.dart';

class RectangleChild extends StatelessWidget {
  const RectangleChild({Key? key, required this.text, required this.leading})
      : super(key: key);

  final String text;
  final Widget leading;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              leading,
              const SizedBox(width: 8),
              Text(
                text,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "SF Pro Display",
                    fontSize: 14),
              )
            ],
          ),
          const Divider(color: grey22)
        ],
      ),
    );
  }
}
