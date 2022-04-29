import 'package:flutter/material.dart';
import 'package:holo_fleet_mobile/constants.dart';
import 'package:holo_fleet_mobile/pages/home.dart';
import 'package:holo_fleet_mobile/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Holo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: white24,
        primarySwatch: getItsMaterialColor(mySwatch),
      ),
      home: const MyApp(),
    );
  }
}
