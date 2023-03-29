// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:responsive_loginform/widget/pallet.dart';

class GradientButton extends StatelessWidget {
  final butonname;
  final page;
  

  GradientButton({super.key, required this.butonname, required this.page});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        onPressed: (){
          Navigator.push(context,
                  MaterialPageRoute(builder: (context) => page));
        },
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(313, 55),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          butonname,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
