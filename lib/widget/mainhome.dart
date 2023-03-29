// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_loginform/widget/button.dart';
import 'package:responsive_loginform/widget/home.dart';

class MyMainHome extends StatefulWidget {
  const MyMainHome({super.key});

  @override
  State<MyMainHome> createState() => _MyMainHomeState();
}

class _MyMainHomeState extends State<MyMainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome Freaks"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            GradientButton(
              butonname: "Register",
              
            ),
            SizedBox(height: 25),
            GradientButton(
              butonname: "Login",
              // rasta: Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => MyHomePage())),
            ),
          ],
        ),
      ),
    );
  }
}
