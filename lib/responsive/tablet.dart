import 'package:flutter/material.dart';
import 'package:holo_fleet_mobile/constants.dart';
import 'package:holo_fleet_mobile/custom/rectangle.dart';
import 'package:holo_fleet_mobile/custom/ship.dart';
import 'package:holo_fleet_mobile/custom/title_tile.dart';
import 'package:holo_fleet_mobile/responsive/jumk_data.dart';

class Tablet extends StatelessWidget {
  const Tablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width / 2.2;
    return Padding(
        padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
        child: ListView(
          shrinkWrap: true,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: _width,
                      child: TitleTile(
                        title: "Assets",
                        action: Ship(
                          text: "View All Vehicles",
                          onPressed: () => {},
                        ),
                      ),
                    ),
                    fixedSpace,
                    SizedBox(
                      width: _width,
                      child: Rectangle(
                        children: assets.map((e) => e).toList(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 35),
                Column(
                  children: [
                    SizedBox(
                      width: _width,
                      child: TitleTile(
                        title: "Invetory",
                        action: Ship(
                          text: "View All devices",
                          onPressed: () => {},
                        ),
                      ),
                    ),
                    fixedSpace,
                    SizedBox(
                      width: _width,
                      child: Rectangle(
                        children: [
                          const FlutterLogo(
                            size: 100,
                          ),
                          Column(
                            children: invetory.map((e) => e).toList(),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 45),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: _width,
                      child: TitleTile(
                        title: "Battery",
                        action: Container(),
                      ),
                    ),
                    fixedSpace,
                    SizedBox(
                      width: _width,
                      child: Rectangle(
                        children: batteries.map((e) => e).toList(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 35),
                Column(
                  children: [
                    SizedBox(
                      width: _width,
                      child: TitleTile(
                        title: "Alerts - Update Icon",
                        action: Container(),
                      ),
                    ),
                    fixedSpace,
                    SizedBox(
                      width: _width,
                      child: Rectangle(
                        children: alerts.map((e) => e).toList(),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 45),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: _width,
                      child: TitleTile(
                        title: "Maintaince",
                        action: Container(),
                      ),
                    ),
                    fixedSpace,
                    SizedBox(
                      width: _width,
                      child: Rectangle(
                        children: maintainces.map((e) => e).toList(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 35),
                Column(
                  children: [
                    SizedBox(
                      width: _width,
                      child: TitleTile(
                          title: "Quick links",
                          action: IconButton(
                              onPressed: () => {},
                              icon: const Icon(Icons.router_outlined))),
                    ),
                    fixedSpace,
                    SizedBox(
                      width: _width,
                      child: Rectangle(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Ship(
                                      onPressed: () => {},
                                      text: "View All Devices"),
                                  const SizedBox(width: 20),
                                  Ship(onPressed: () => {}, text: "Support"),
                                ],
                              ),
                              fixedSpace,
                              Row(
                                children: [
                                  Ship(
                                      onPressed: () => {},
                                      text: "View All Devices"),
                                  const SizedBox(width: 20),
                                  Ship(
                                      onPressed: () => {}, text: "My Messages"),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
