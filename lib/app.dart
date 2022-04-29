import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:holo_fleet_mobile/constants.dart';
import 'package:holo_fleet_mobile/custom/naiveSideMenuItem.dart';
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

  return Container(
    width: 250,
    child: ListView(
      children: [
        Padding(
          child:
              Image.asset("assets/logo.png", height: 100, fit: BoxFit.fitWidth),
          padding: const EdgeInsets.all(20),
        ),
        NaiveSideMenuItem(
          title: "Dashboard",
          icon: Icons.apps,
          labelcolor: _activatedColor,
          backgroundColor: _activatedColor.withOpacity(0.23),
        ),
        const NaiveSideMenuItem(
          title: "Devices",
          icon: Icons.bolt,
        ),
        const NaiveSideMenuItem(title: "Assets", icon: Icons.send),
        const NaiveSideMenuItem(
          title: "Alerts",
          icon: Icons.notifications,
          listen: true, //listen if the alerts has some changes, if yes
        ),
        const NaiveSideMenuItem(
          title: "More",
          icon: Icons.more_horiz,
        )
      ],
    ),
  );
}

Widget homeMobile(
  BuildContext context,
) {
  return Scaffold(
    body: pages[currentPage],
    bottomNavigationBar: myNaiveNavigationBar(context),
  );
}

Widget homeTablet(
  BuildContext context,
) {
  return Scaffold(
      body: Padding(
    padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
    child: Row(
      children: [
        myNaiveSideBar(context),
        Expanded(
          child: Column(
            children: [Expanded(child: pages[currentPage])],
          ),
        ),
      ],
    ),
  ));
}
