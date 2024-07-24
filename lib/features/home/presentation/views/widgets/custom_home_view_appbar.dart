import 'package:flower_app/constants.dart';
import 'package:flower_app/core/utils/app_router.dart';
import 'package:flower_app/core/utils/styles.dart';
import 'package:flower_app/features/home/presentation/view%20models/products_manager_cubit/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      Stack(
        children: [
          CircleAvatar(
            radius: 10,
            backgroundColor: Colors.amber,
            child: Text(
              BlocProvider.of<ProductsCubit>(context)
                  .products
                  .length
                  .toString(),
              style: const TextStyle(fontSize: 12),
            ),
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.myCartView);
            },
            icon: const Icon(Icons.add_shopping_cart),
          ),
        ],
      ),
    ],
  );
}
