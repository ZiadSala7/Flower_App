import 'package:flower_app/core/widgets/custom_app_bar.dart';
import 'package:flower_app/features/forget%20password/presentation/views/widgets/forget_password_view_body.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Forget Password'),
      body: const ForgetPasswordViewBody(),
    );
  }
}
