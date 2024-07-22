import 'package:flower_app/core/widgets/custom_app_bar.dart';
import 'package:flower_app/features/login/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Login'),
      body: const LoginViewBody(),
    );
  }
}
