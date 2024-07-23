import 'package:flower_app/constants.dart';
import 'package:flower_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

AppBar customMyCartAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: customColor,
    centerTitle: true,
    title: Text(
      'My Cart',
      style: TextStyles.textStyle25Med.copyWith(
        color: Colors.white,
      ),
    ),
  );
}
