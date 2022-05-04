import 'package:flutter/material.dart';
import 'package:holo_fleet_mobile/pages/home.dart';
import 'package:holo_fleet_mobile/pages/responsive/mobile.dart';
import 'package:holo_fleet_mobile/pages/responsive/tablet.dart';
import 'package:holo_fleet_mobile/responsive.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

List<Widget> pages = [const MyHomePage()];
int currentPage = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: MobileLayout(body: pages[currentPage]),
        tablet: TabletLayout(
          body: pages[currentPage],
        ));
  }
}
