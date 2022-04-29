import 'package:flutter/material.dart';

class CustomButtomText extends StatelessWidget {
  const CustomButtomText({Key? key, required this.label, this.onPress})
      : super(key: key);

  final String label;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 50,
        width: 300,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(3)),
        child: Text(
          label,
          style: const TextStyle(
              fontFamily: "FS Pro Display", color: Colors.white, fontSize: 14),
        ),
      ),
      onTap: onPress,
    );
  }
}
