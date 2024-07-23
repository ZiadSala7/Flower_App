import 'package:flower_app/core/widgets/custom_button.dart';
import 'package:flower_app/core/widgets/custom_sign_in_or_log_in_text_button.dart';
import 'package:flower_app/features/sign%20up/presentation/views/widgets/custom_text_field_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 100,
            ),
            const CustomTextFieldsSection(),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              buttonName: 'Register',
              onPressed: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            CustomSignInOrLogInTextButton(
              desc: 'Do you have an account ?',
              buttonName: 'Login',
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
