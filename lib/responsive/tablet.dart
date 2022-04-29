import 'package:flutter/material.dart';
import 'package:holo_fleet_mobile/constants.dart';
import 'package:holo_fleet_mobile/custom/rectangle.dart';
import 'package:holo_fleet_mobile/custom/ship.dart';
import 'package:holo_fleet_mobile/custom/title_tile.dart';
import 'package:holo_fleet_mobile/responsive.dart';
import 'package:holo_fleet_mobile/responsive/jumk_data.dart';

class Tablet extends StatelessWidget {
  const Tablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width / 2.5;
    return Padding(
        padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
        child: Scrollbar(
            isAlwaysShown: Responsive.isTable(context),
            child: GridView.custom(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                childrenDelegate: SliverChildListDelegate.fixed([
                  TitleTile(
                      title: "Assets",
                      action: Ship(
                        text: "View All Vehicles",
                        onPressed: () => {},
                      )),
                  fixedSpace,
                  Rectangle(
                    children: assets.map((e) => e).toList(),
                  ),
                ]))));
  }
}
/* Row(
              mainAxisAlignment: MainAxisAlignment.end,
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
                const SizedBox(width: 25),
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
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
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
                const SizedBox(width: 25),
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
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
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
                const SizedBox(width: 25),
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
 */