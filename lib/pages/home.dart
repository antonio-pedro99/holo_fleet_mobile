import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTextStyle(
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "SF Pro Display",
              color: Colors.black),
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
            children: [],
          )),
    );
  }
}
