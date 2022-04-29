import 'package:flutter/material.dart';
import 'package:holo_fleet_mobile/custom/ship.dart';
import 'package:holo_fleet_mobile/responsive.dart';
import 'package:holo_fleet_mobile/responsive/mobile.dart';
import 'package:holo_fleet_mobile/responsive/tablet.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Responsive(
        mobile: Mobile(),
        tablet: Tablet(),
      ),
    );
  }
}
