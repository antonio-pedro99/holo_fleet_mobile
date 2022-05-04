import 'package:flutter/material.dart';
import 'package:holo_fleet_mobile/custom/my_naive_navigation_bar.dart';
import 'package:holo_fleet_mobile/custom/naive_buttom_item.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({Key? key, required this.body}) : super(key: key);

  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      //bottomNavigationBar: myNaiveNavigationBar(context),
      bottomNavigationBar: MyNaiveNavigationBar(items: [
        NaiveNavigationBarItem(
          title: "Dashboard",
          icon: Icons.dashboard,
          color: Theme.of(context).primaryColor,
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
        )
      ], activeColor: Theme.of(context).primaryColor),
    );
  }
}
