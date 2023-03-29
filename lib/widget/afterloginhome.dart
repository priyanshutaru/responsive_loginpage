// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AfterloginPage extends StatefulWidget {
  const AfterloginPage({super.key});

  @override
  State<AfterloginPage> createState() => _AfterloginPageState();
}

class _AfterloginPageState extends State<AfterloginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("After Login Text"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              "You have succesfully done this process",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
