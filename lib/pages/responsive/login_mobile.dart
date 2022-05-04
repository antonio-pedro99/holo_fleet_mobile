import 'package:flutter/material.dart';
import 'package:holo_fleet_mobile/app.dart';
import 'package:holo_fleet_mobile/custom/custom_buttom.dart';
import 'package:holo_fleet_mobile/pages/register.dart';
import 'package:holo_fleet_mobile/services/auth.dart';
import 'package:holo_fleet_mobile/services/auth_response.dart';

import '../../constants.dart';

class LoginMobile extends StatelessWidget {
  const LoginMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    GlobalKey<FormState> key = GlobalKey();

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
            Form(
                key: key,
                child: SingleChildScrollView(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Container(
                        padding: const EdgeInsets.fromLTRB(25, 40, 25, 25),
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Column(children: [
                          Image.asset(
                            "assets/logo.png",
                            height: 16,
                          ),
                          const SizedBox(height: 40),
                          TextFormField(
                            controller: emailController,
                            validator: (str) {
                              if (str!.isEmpty) {
                                return "This might not be empty";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                hintText: "Username or Email",
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "SF Pro Display",
                                    fontSize: 14)),
                          ),
                          const SizedBox(height: 35),
                          TextFormField(
                            controller: passwordController,
                            validator: (str) {
                              if (str!.isEmpty) {
                                return "This might not be empty";
                              }
                              return null;
                            },
                            obscureText: true,
                            decoration: const InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "SF Pro Display",
                                    fontSize: 14)),
                          ),
                          const SizedBox(height: 35),
                          CustomButtomText(
                            label: "Log in",
                            onPress: () async {
                              if (key.currentState!.validate()) {
                                AuthResponse response =
                                    await Auth.loginWithEmailAndPassword(
                                        emailController.text,
                                        passwordController.text);
                                if (response.hasError) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                          content: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text("Something is wrong"),
                                  )));
                                } else {
                                  Navigator.pushAndRemoveUntil(context,
                                      MaterialPageRoute(builder: (context) {
                                    return MyApp(
                                      token: (response.data
                                          as Map<String, dynamic>)["token"],
                                    );
                                  }), (route) => false);
                                }
                              }
                            },
                          ),
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
                              child: const Text(
                                  "Don't have an account? Register now.",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                  )),
                              onTap: () => Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return const RegisterPage();
                                  }))),
                        ]))))
          ],
        ));
  }
}
