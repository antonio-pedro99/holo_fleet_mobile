import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:holo_fleet_mobile/constants.dart';
import 'package:holo_fleet_mobile/custom/rectangle.dart';
import 'package:holo_fleet_mobile/pages/login.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return registerMobile(context);
        } else {
          return registerTablet(context);
        }
      }),
    );
  }
}

Widget registerMobile(BuildContext context) {
  return DefaultTextStyle(
      style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: "SF Pro Display",
          fontSize: 14),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg.png"), fit: BoxFit.cover)),
            constraints: const BoxConstraints.expand(),
          ),
          buildForm(context)
        ],
      ));
}

Widget registerTablet(BuildContext context) {
  return Stack(
    children: [Image.asset("assets/bg.png")],
  );
}

buildForm(BuildContext context) {
  return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
          padding: const EdgeInsets.fromLTRB(25, 40, 25, 25),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(children: [
            Image.asset(
              "assets/logo.png",
              height: 16,
            ),
            const SizedBox(height: 40),
            const TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  hintText: "Full Name",
                  hintStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: "SF Pro Display",
                      fontSize: 14)),
            ),
            const SizedBox(height: 35),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: "SF Pro Display",
                      fontSize: 14)),
            ),
            const SizedBox(height: 35),
            const TextField(
              textAlign: TextAlign.start,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  hintText: "Mobile Number",
                  hintStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: "SF Pro Display",
                      fontSize: 14)),
            ),
            const SizedBox(height: 35),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: "SF Pro Display",
                      fontSize: 14)),
            ),
            const SizedBox(height: 35),
            TextButton(
                style: ButtonStyle(
                    maximumSize: MaterialStateProperty.resolveWith(
                        (states) => const Size(300, 50)),
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.black)),
                onPressed: () {},
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                )),
            const SizedBox(height: 50),
            const Divider(
              color: grey22,
            ),
            InkWell(
                child: const Text("Alreay have an account? Login now.",
                    style: TextStyle(
                      fontSize: 12,
                    )),
                onTap: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const LoginPage();
                    }))),
          ])));
}
