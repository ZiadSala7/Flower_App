import 'package:flower_app/constants.dart';
import 'package:flower_app/core/utils/app_router.dart';
import 'package:flower_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

AppBar customHomeViewAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: customColor,
    centerTitle: true,
    title: Text(
      'My Products',
      style: TextStyles.textStyle25Med.copyWith(
        color: Colors.white,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {
          GoRouter.of(context).push(AppRouter.myCartView);
        },
        icon: const Icon(Icons.add_shopping_cart),
      ),
    ],
  );
}
