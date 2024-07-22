import 'package:flower_app/features/home/presentation/views/widgets/custom_my_cart_app_bar.dart';
import 'package:flower_app/features/home/presentation/views/widgets/my_cart_view_body.dart';
import 'package:flutter/material.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customMyCartAppBar(context),
      body: const MyCartViewBody(),
    );
  }
}
