import 'package:flower_app/constants.dart';
import 'package:flower_app/core/utils/styles.dart';
import 'package:flower_app/core/widgets/custom_action_app_bar.dart';
import 'package:flutter/material.dart';

AppBar customMyCartAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: customColor,
    centerTitle: true,
    title: Text(
      'My Products',
      style: TextStyles.textStyle25Med.copyWith(
        color: Colors.white,
      ),
    ),
    actions: const [CustomActionAppBar()],
  );
}
