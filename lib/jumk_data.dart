import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:holo_fleet_mobile/constants.dart';
import 'package:holo_fleet_mobile/custom/rectangle_child.dart';

List<Widget> assets = const [
  RectangleChild(
      text: "Online (8)",
      leading: Icon(Icons.circle, size: 8, color: mySwatch)),
  RectangleChild(
      text: "Offline (3)",
      leading: Icon(
        Icons.circle,
        size: 8,
        color: red,
      )),
  RectangleChild(
      text: "GPS Not connected (1)",
      leading: Icon(
        Icons.circle,
        size: 8,
        color: blue,
      )),
  RectangleChild(
      text: "Not Connected (2)",
      leading: Icon(
        Icons.circle,
        size: 8,
        color: grey14,
      )),
  RectangleChild(
      text: "Moving (4)",
      leading: Icon(
        Icons.circle,
        size: 8,
        color: mySwatch,
      )),
  RectangleChild(
      text: "Stopped (2)",
      leading: Icon(
        Icons.change_history_rounded,
        color: red,
      )),
  RectangleChild(
      text: "Idle (2)", leading: Icon(Icons.circle, size: 8, color: red))
];

List<Widget> invetory = const [
  RectangleChild(
      text: "Active (10)",
      leading: Icon(Icons.circle, size: 8, color: mySwatch)),
  RectangleChild(
      text: "Inactive (3)",
      leading: Icon(
        Icons.circle,
        size: 8,
        color: red,
      )),
  RectangleChild(
      text: "Deactivated (2)",
      leading: Icon(
        Icons.circle,
        size: 8,
        color: blue,
      )),
  RectangleChild(
      text: "Retired (8)",
      leading: Icon(
        Icons.circle,
        size: 8,
        color: grey14,
      )),
];

List<Widget> batteries = const [
  RectangleChild(
      text: "Fully Charged (10)",
      leading: Icon(
        Icons.circle,
        size: 8,
        color: red,
      )),
  RectangleChild(
      text: "Low (3)",
      leading: Icon(
        Icons.circle,
        size: 8,
        color: red,
      )),
  RectangleChild(
      text: "Warning (2)",
      leading: Icon(
        Icons.circle,
        size: 8,
        color: blue,
      )),
  RectangleChild(
      text: "Retired (8)",
      leading: Icon(
        Icons.circle,
        size: 8,
        color: grey14,
      )),
];

List<Widget> alerts = const [
  RectangleChild(
      text: "Speed (10)",
      leading: Icon(Icons.circle, size: 8, color: mySwatch)),
  RectangleChild(
      text: "Geofence (5)",
      leading: Icon(
        Icons.circle,
        size: 8,
        color: red,
      )),
  RectangleChild(
      text: "Ignition (8)",
      leading: Icon(
        Icons.circle,
        size: 8,
        color: blue,
      )),
];

List<Widget> maintainces = const [
  RectangleChild(
      text: "Completed (10)",
      leading: FaIcon(FontAwesomeIcons.wrench, size: 8, color: mySwatch)),
  RectangleChild(
      text: "Scheduled (1)",
      leading: FaIcon(FontAwesomeIcons.wrench, size: 8, color: blue)),
  RectangleChild(
      text: "Expired (1)",
      leading: FaIcon(FontAwesomeIcons.wrench, size: 8, color: red)),
  RectangleChild(
      text: "Other (0)",
      leading: FaIcon(FontAwesomeIcons.wrench, size: 8, color: grey14)),
];
