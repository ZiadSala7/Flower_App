import 'package:flower_app/constants.dart';
import 'package:flower_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSignInOrLogInTextButton extends StatelessWidget {
  final String desc;
  final String buttonName;
  final Function() onPressed;
  const CustomSignInOrLogInTextButton({
    super.key,
    required this.desc,
    required this.buttonName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          desc,
          style: TextStyles.textStyle18Med,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonName,
            style: TextStyles.textStyle18Med.copyWith(
              color: customColor,
            ),
          ),
        ),
        const SizedBox(
          height: 17,
        ),
      ],
    );
  }
}
