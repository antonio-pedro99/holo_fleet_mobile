import 'package:flutter/material.dart';
import 'package:holo_fleet_mobile/custom/my_naive_sidemenu.dart';
import 'package:holo_fleet_mobile/custom/naive_sidem_menu_item.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({Key? key, required this.body}) : super(key: key);

  final Widget body;
  @override
  Widget build(BuildContext context) {
    Color _activatedColor = Theme.of(context).primaryColor;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
      child: Row(
        children: [
          MyNaiveSideMenu(items: [
            Padding(
              child: Image.asset("assets/logo.png",
                  height: 100, fit: BoxFit.fitWidth),
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
          ], activeColor: Theme.of(context).primaryColor),
          Expanded(
            child: Column(
              children: [Expanded(child: body)],
            ),
          ),
        ],
      ),
    ));
  }
}
