// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_loginform/widget/afterloginhome.dart';
import 'package:responsive_loginform/widget/button.dart';
import 'package:responsive_loginform/widget/home.dart';
import 'package:responsive_loginform/widget/loginfield.dart';
import 'package:responsive_loginform/widget/pallet.dart';
import 'package:responsive_loginform/widget/socialbutton.dart';

class MyRegisterPage extends StatefulWidget {
  const MyRegisterPage({super.key});

  @override
  State<MyRegisterPage> createState() => _MyRegisterPageState();
}

class _MyRegisterPageState extends State<MyRegisterPage> {
  @override
  Widget build(BuildContext context) {
    String email = '';
    String pass = '';
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/signin_balls.png"),
              const Text(
                "Sign in.",
                style: TextStyle(
                    fontSize: 25,
                    color: Pallete.whiteColor,
                    fontWeight: FontWeight.bold),
              ),
              // const SizedBox(
              //   height: 15,
              // ),
              // MySocialButton(
              //   logo: CupertinoIcons.globe,
              //   text: 'Continue With Google',
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              // MySocialButton(
              //   logo: CupertinoIcons.tag_circle_fill,
              //   text: 'Continue With Linkedin',
              //   horizentalpadding: 50,
              // ),
              // const SizedBox(
              //   height: 15,
              // ),
              // const Text(
              //   "or",
              //   style: TextStyle(color: Pallete.whiteColor),
              // ),
              const SizedBox(
                height: 15,
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 310,
                ),
                child: TextFormField(
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(20),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Pallete.borderColor,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Pallete.gradient2,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Enter Your Email",
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 310,
                ),
                child: TextFormField(
                  onChanged: (value) {
                    pass = value;
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(20),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Pallete.borderColor,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Pallete.gradient2,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Enter Your Password",
                  ),
                ),
              ),
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
                  onPressed: () async {
                    try {
                      final credential = await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                        email: email,
                        password: pass,
                      );
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        print('The password provided is too weak.');
                      } else if (e.code == 'email-already-in-use') {
                        print('The account already exists for that email.');
                      }
                    } catch (e) {
                      print(e);
                    }

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(313, 55),
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child: Text(
                    "Register",
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
