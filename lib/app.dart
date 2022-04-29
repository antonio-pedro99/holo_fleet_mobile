import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:holo_fleet_mobile/custom/naive_buttom_item.dart';
import 'package:holo_fleet_mobile/pages/home.dart';
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
    return Responsive(mobile: homeMobile(context), tablet: homeTablet(context));
  }
}

Widget myNaiveNavigationBar(BuildContext context) {
  Color _activatedColor = Theme.of(context).primaryColor;
  Color _deactivatedColor = Colors.white;

  return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NaiveNavigationBarItem(
            title: "Dashboard",
            icon: Icons.dashboard,
            color: _activatedColor,
          ),
          const NaiveNavigationBarItem(
            title: "Devices",
            icon: Icons.bolt,
          ),
          const NaiveNavigationBarItem(title: "Assets", icon: Icons.send),
          const NaiveNavigationBarItem(
            title: "Alerts",
            icon: Icons.notifications,
            listen: true, //listen if the alerts has some changes, if yes
          ),
          const NaiveNavigationBarItem(
            title: "More",
            icon: Icons.more_horiz,
          ) //the //there is only one page so I am just assuming this to be selected always
        ],
      ));
}

Widget myNaiveSideBar(BuildContext context) {
  Color _activatedColor = Theme.of(context).primaryColor;
  Color _deactivatedColor = Colors.white;

  return SafeArea(child: Container());
}

Widget homeMobile(
  BuildContext context,
) {
  return Scaffold(
    body: pages[currentPage],
    bottomNavigationBar: myNaiveNavigationBar(context),
  );
}

Widget homeTablet(BuildContext context) {
  return Scaffold(
    body: Row(
      children: [myNaiveSideBar(context), Expanded(child: pages[currentPage])],
    ),
  );
}
