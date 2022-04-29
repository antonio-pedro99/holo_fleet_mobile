import 'package:flutter/material.dart';
import 'package:holo_fleet_mobile/constants.dart';
import 'package:holo_fleet_mobile/custom/rectangle.dart';
import 'package:holo_fleet_mobile/custom/rectangle_child.dart';
import 'package:holo_fleet_mobile/custom/ship.dart';
import 'package:holo_fleet_mobile/custom/title_tile.dart';
import 'package:holo_fleet_mobile/responsive/jumk_data.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
        children: [
          TitleTile(
            title: "Assets",
            action: Ship(
              text: "View All Vehicles",
              onPressed: () => {},
            ),
          ),
          fixedSpace,
          Rectangle(
            children: assets.map((e) => e).toList(),
          ),
          fixedSpace,
          TitleTile(
            title: "Invetory",
            action: Ship(
              text: "View All devices",
              onPressed: () => {},
            ),
          ),
          fixedSpace,
          Rectangle(
            children: [
              const FlutterLogo(
                size: 100,
              ),
              Column(
                children: invetory.map((e) => e).toList(),
              )
            ],
          ),
          fixedSpace,
          TitleTile(
            title: "Battery",
            action: Container(),
          ),
          fixedSpace,
          Rectangle(
            children: batteries.map((e) => e).toList(),
          ),
          fixedSpace,
          TitleTile(
            title: "Alerts - Update Icon",
            action: Container(),
          ),
          fixedSpace,
          Rectangle(
            children: alerts.map((e) => e).toList(),
          ),
          fixedSpace,
          TitleTile(
            title: "Maintaince",
            action: Container(),
          ),
          fixedSpace,
          Rectangle(
            children: maintainces.map((e) => e).toList(),
          ),
          fixedSpace,
          TitleTile(
              title: "Quick links",
              action: IconButton(
                  onPressed: () => {},
                  icon: const Icon(Icons.router_outlined))),
          Rectangle(
            children: [
              Column(
                children: [
                  Wrap(
                    children: [
                      Ship(onPressed: () => {}, text: "View All Devices"),
                      const SizedBox(width: 20),
                      Ship(onPressed: () => {}, text: "Support"),
                    ],
                  ),
                  fixedSpace,
                  Wrap(
                    children: [
                      Ship(onPressed: () => {}, text: "View All Devices"),
                      const SizedBox(width: 20),
                      Ship(onPressed: () => {}, text: "My Messages"),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
