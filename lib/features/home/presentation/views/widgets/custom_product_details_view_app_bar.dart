import 'package:flower_app/constants.dart';
import 'package:flower_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

AppBar customProductDetailsViewAppBar() {
  return AppBar(
    backgroundColor: customColor,
    title: Text(
      "Details Screen",
      style: TextStyles.textStyle25Med.copyWith(color: Colors.white),
    ),
    actions: [
      Row(
        children: [
          Stack(
            children: [
              const CircleAvatar(
                radius: 10,
                backgroundColor: Colors.amber,
                child: Text('0'),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_shopping_cart),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 8),
            child: Text('0'),
          ),
        ],
      ),
    ],
  );
}
