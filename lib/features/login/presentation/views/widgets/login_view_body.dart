import 'package:flower_app/core/utils/app_router.dart';
import 'package:flower_app/core/widgets/custom_button.dart';
import 'package:flower_app/core/widgets/custom_password_text_field.dart';
import 'package:flower_app/core/widgets/custom_regular_text_field.dart';
import 'package:flower_app/features/login/presentation/views/widgets/custom_text_button_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomRegularTextField(
            hintText: 'Enter Your Email :',
            icon: Icon(Icons.email),
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomPasswordTextField(),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            buttonName: 'Login',
            onPressed: () {
              GoRouter.of(context).pushReplacement(AppRouter.homeView);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomTextButtonSection(),
        ],
      ),
    );
  }
}
