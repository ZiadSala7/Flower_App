import 'package:flower_app/core/widgets/custom_password_text_field.dart';
import 'package:flower_app/core/widgets/custom_regular_text_field.dart';
import 'package:flutter/material.dart';

class CustomTextFieldsSection extends StatelessWidget {
  const CustomTextFieldsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomRegularTextField(
          hintText: 'Enter Your Name :',
          icon: Icon(Icons.person),
        ),
        SizedBox(
          height: 20,
        ),
        CustomRegularTextField(
          hintText: 'Enter Your Age :',
          icon: Icon(Icons.art_track_sharp),
        ),
        SizedBox(
          height: 20,
        ),
        CustomRegularTextField(
          hintText: 'Enter Your Address :',
          icon: Icon(Icons.location_on_outlined),
        ),
        SizedBox(
          height: 20,
        ),
        CustomRegularTextField(
          hintText: 'Enter Your Email :',
          icon: Icon(Icons.email),
        ),
        SizedBox(
          height: 20,
        ),
        CustomPasswordTextField(),
      ],
    );
  }
}
