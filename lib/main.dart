import 'package:flutter/material.dart';
import 'package:responsive_loginform/widget/home.dart';
import 'package:responsive_loginform/widget/mainhome.dart';
import 'package:responsive_loginform/widget/pallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Pallete.backgroundColor,
      ),
      // home: const MyHomePage(),
      home: MyMainHome(),
    );
  }
}

