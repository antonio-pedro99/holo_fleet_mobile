import 'package:flutter/material.dart';
import 'package:holo_fleet_mobile/constants.dart';
import 'package:holo_fleet_mobile/pages/home.dart';
import 'package:holo_fleet_mobile/pages/register.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return loginMobile(context);
        } else {
          return loginTablet(context);
        }
      }),
    );
  }
}

Widget loginMobile(BuildContext context) {
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

Widget loginTablet(BuildContext context) {
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
              decoration: InputDecoration(
                  hintText: "Username or Email",
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
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) {
                    return const MyHomePage();
                  }), (route) => false);
                },
                child: const Text(
                  "Log In",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                )),
            const SizedBox(height: 10),
            const Text("Can't remember your password? Recover it",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                )),
            const SizedBox(height: 50),
            const Divider(
              color: grey22,
            ),
            InkWell(
                child: const Text("Don't have an account? Register now.",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    )),
                onTap: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const RegisterPage();
                    }))),
          ])));
}
