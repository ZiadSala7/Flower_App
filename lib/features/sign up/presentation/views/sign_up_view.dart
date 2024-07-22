import 'package:flower_app/core/widgets/custom_app_bar.dart';
import 'package:flower_app/features/sign%20up/presentation/views/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        'Sign in',
        widget: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: const SignUpViewBody(),
    );
  }
}
