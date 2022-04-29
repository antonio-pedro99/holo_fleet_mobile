import 'package:flutter/material.dart';

class Rectangle extends StatelessWidget {
  const Rectangle({Key? key, required this.children})
      : super(key: key);

  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Card(
      borderOnForeground: false,
      elevation: 0.1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
      child: IntrinsicHeight(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          height: double.infinity,
          width: media.width,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(13)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: children),
        ),
      ),
    );
  }
}
