import 'package:flutter/material.dart';
import 'package:holo_fleet_mobile/pages/responsive/login_mobile.dart';
import 'package:holo_fleet_mobile/responsive.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Responsive(
            mobile: const LoginMobile(),
            tablet: Stack(
              children: [Image.asset("assets/bg.png")],
            )));
  }
}
