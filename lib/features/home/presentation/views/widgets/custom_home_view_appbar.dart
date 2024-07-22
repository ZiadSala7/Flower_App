import 'package:flower_app/constants.dart';
import 'package:flower_app/core/utils/styles.dart';
import 'package:flower_app/features/home/presentation/view%20models/products_manager_cubit/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.amber,
                child: Text(
                  BlocProvider.of<ProductsCubit>(context).totalPrice.toString(),
                  style: const TextStyle(fontSize: 12),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_shopping_cart),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Text(
              BlocProvider.of<ProductsCubit>(context).totalPrice.toString(),
            ),
          ),
        ],
      ),
    ],
  );
}
