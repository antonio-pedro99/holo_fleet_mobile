import 'package:flutter/material.dart';

import 'package:holo_fleet_mobile/pages/responsive/register_mobile.dart';
import 'package:holo_fleet_mobile/responsive.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Responsive(
            mobile: const RegisterMobileLoyout(),
            tablet: Stack(
              children: [Image.asset("assets/bg.png")],
            )));
  }
}
