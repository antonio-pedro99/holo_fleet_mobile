import 'package:flutter/material.dart';

class TitleTile extends StatelessWidget {
  const TitleTile({Key? key, required this.title, required this.action}) : super(key: key);

  final String title;
  final Widget action;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14)),
        action
      ],
    );
  }
}
