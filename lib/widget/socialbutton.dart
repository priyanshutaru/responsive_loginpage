import 'package:flutter/material.dart';
import 'package:responsive_loginform/widget/pallet.dart';

class MySocialButton extends StatelessWidget {
  final logo;
  final String text;
  final double horizentalpadding;

  MySocialButton(
      {super.key,
      required this.logo,
      required this.text,
      this.horizentalpadding = 55});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: null,
      icon: Icon(
        logo,
        size: 25,
        color: Pallete.whiteColor,
      ),
      label: Text(
        text,
        style: TextStyle(fontSize: 17, color: Pallete.whiteColor),
      ),
      style: TextButton.styleFrom(
          padding:
              EdgeInsets.symmetric(vertical: 15, horizontal: horizentalpadding),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Pallete.borderColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
