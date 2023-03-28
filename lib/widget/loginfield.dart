import 'package:flutter/material.dart';
import 'package:responsive_loginform/widget/pallet.dart';

class MyLoginFields extends StatelessWidget {
  final String hintText;
  const MyLoginFields({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 310,
      ),
      child: TextFormField(
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
          hintText: hintText,
        ),
      ),
    );
  }
}
