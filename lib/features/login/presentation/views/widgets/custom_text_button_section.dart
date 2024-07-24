import 'package:flower_app/constants.dart';
import 'package:flower_app/core/utils/app_router.dart';
import 'package:flower_app/core/utils/styles.dart';
import 'package:flower_app/core/widgets/custom_sign_in_or_log_in_text_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomTextButtonSection extends StatelessWidget {
  const CustomTextButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.forgetPasswordView);
          },
          child: Text(
            "Forget Password",
            style: TextStyles.textStyle18Med.copyWith(
              color: customColor,
            ),
          ),
        ),
        CustomSignInOrLogInTextButton(
          desc: "Don't you have an account ?",
          buttonName: 'Sign in',
          onPressed: () {
            GoRouter.of(context).push(AppRouter.signUp);
          },
        ),
      ],
    );
  }
}
