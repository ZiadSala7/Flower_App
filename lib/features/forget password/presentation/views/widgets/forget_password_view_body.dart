import 'package:flower_app/core/utils/styles.dart';
import 'package:flower_app/core/widgets/custom_button.dart';
import 'package:flower_app/core/widgets/custom_regular_text_field.dart';
import 'package:flutter/material.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Enter your email to reset your password",
            style: TextStyles.textStyle16Reg,
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomRegularTextField(
            hintText: 'Enter Your Email :',
            icon: Icon(Icons.email),
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            buttonName: 'Reset Password',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
