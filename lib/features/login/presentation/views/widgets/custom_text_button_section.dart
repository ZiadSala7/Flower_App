import 'package:flower_app/constants.dart';
import 'package:flower_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextButtonSection extends StatelessWidget {
  const CustomTextButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            "Forget Password",
            style: TextStyles.textStyle18Med.copyWith(
              color: customColor,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Don't you have an account ?",
              style: TextStyles.textStyle18Med,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Sign in",
                style: TextStyles.textStyle18Med.copyWith(
                  color: customColor,
                ),
              ),
            ),
            const SizedBox(
              height: 17,
            ),
          ],
        ),
      ],
    );
  }
}
