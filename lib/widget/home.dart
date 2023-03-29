// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_loginform/widget/afterloginhome.dart';
import 'package:responsive_loginform/widget/button.dart';
import 'package:responsive_loginform/widget/loginfield.dart';
import 'package:responsive_loginform/widget/pallet.dart';
import 'package:responsive_loginform/widget/socialbutton.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/signin_balls.png"),
              const Text(
                "Sign in.",
                style: TextStyle(
                    fontSize: 25,
                    color: Pallete.whiteColor,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              MySocialButton(
                logo: CupertinoIcons.globe,
                text: 'Continue With Google',
              ),
              const SizedBox(
                height: 20,
              ),
              MySocialButton(
                logo: CupertinoIcons.tag_circle_fill,
                text: 'Continue With Linkedin',
                horizentalpadding: 50,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "or",
                style: TextStyle(color: Pallete.whiteColor),
              ),
              const SizedBox(
                height: 15,
              ),
              const MyLoginFields(hintText: "Enter Your email"),
              const SizedBox(
                height: 15,
              ),
              const MyLoginFields(hintText: "Enter YOur Password"),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Pallete.gradient1,
                      Pallete.gradient2,
                      Pallete.gradient3,
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AfterloginPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(313, 55),
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
