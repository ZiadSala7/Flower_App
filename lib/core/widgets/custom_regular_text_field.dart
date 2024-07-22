import 'package:flower_app/constants.dart';
import 'package:flutter/material.dart';

class CustomRegularTextField extends StatelessWidget {
  final TextInputType? textInputType;
  final String hintText;
  final Icon icon;
  const CustomRegularTextField({
    super.key,
    this.textInputType,
    required this.hintText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      obscureText: false,
      decoration: InputDecoration(
        filled: true,
        contentPadding: const EdgeInsets.all(15),
        hintText: hintText,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: textFieldBorderColor,
            width: 0,
          ),
        ),
        suffixIcon: icon,
      ),
    );
  }
}
