import 'package:flutter/material.dart';
import 'package:holo_fleet_mobile/custom/custom_buttom.dart';
import 'package:holo_fleet_mobile/models/user_login.dart';
import 'package:holo_fleet_mobile/pages/login.dart';
import 'package:holo_fleet_mobile/services/auth.dart';
import 'package:holo_fleet_mobile/services/auth_response.dart';

import '../../constants.dart';

class RegisterMobileLoyout extends StatelessWidget {
  const RegisterMobileLoyout({Key? key}) : super(key: key);

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
                            validator: (str) {
                              if (str!.isEmpty) {
                                return "This might not be empty";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
                                hintText: "Full Name",
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "SF Pro Display",
                                    fontSize: 14)),
                          ),
                          const SizedBox(height: 35),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            validator: (str) {
                              if (str!.isEmpty) {
                                return "This might not be empty";
                              }
                              return null;
                            },
                            controller: emailController,
                            decoration: const InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "SF Pro Display",
                                    fontSize: 14)),
                          ),
                          const SizedBox(height: 35),
                          TextFormField(
                            obscureText: true,
                            validator: (str) {
                              if (str!.isEmpty) {
                                return "This might not be empty";
                              }
                              return null;
                            },
                            controller: passwordController,
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
                            label: "Register Now",
                            onPress: () async {
                              if (key.currentState!.validate()) {
                                AuthResponse res = await Auth.registerWithEmail(
                                    UserAuth(
                                        email: emailController.text,
                                        password: passwordController.text));
                                if (!res.hasError && res.hasData) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                          backgroundColor: Colors.green,
                                          content: Padding(
                                            padding: EdgeInsets.all(8),
                                            child: Text(
                                                "Registered Successfully",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          )));
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                          backgroundColor: red,
                                          content: Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Text((res.error as Map<
                                                String, dynamic>)["error"]),
                                          )));
                                }
                              }
                            },
                          ),
                          const SizedBox(height: 50),
                          const Divider(
                            color: grey22,
                          ),
                          InkWell(
                              child: const Text(
                                  "Alreay have an account? Login now.",
                                  style: TextStyle(
                                    fontSize: 12,
                                  )),
                              onTap: () => Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return const LoginPage();
                                  }))),
                        ]))))
          ],
        ));
  }
}
