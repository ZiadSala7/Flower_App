import 'package:flower_app/constants.dart';
import 'package:flower_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

AppBar customAppBar(String title, {Widget? widget, bool centered = false}) {
  return AppBar(
    leading: widget,
    backgroundColor: customColor,
    centerTitle: centered,
    title: Text(
      title,
      style: TextStyles.textStyle25Med.copyWith(
        color: Colors.white,
      ),
    ),
  );
}
