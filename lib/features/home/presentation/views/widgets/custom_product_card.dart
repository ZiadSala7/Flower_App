import 'package:flower_app/constants.dart';
import 'package:flower_app/core/utils/app_router.dart';
import 'package:flower_app/core/utils/styles.dart';
import 'package:flower_app/features/home/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomProductCard extends StatelessWidget {
  final Product product;
  const CustomProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(127, 174, 180, 178),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(5),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.productDetailsView);
        },
        child: GridTile(
          footer: GridTileBar(
            backgroundColor: gridTileColor,
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.add, color: customColor),
            ),
            leading: Text(
              product.price.toString(),
              style: TextStyles.textStyle16Med,
            ),
            title: const Text(
              "",
            ),
          ),
          child: Image.asset(product.productName),
        ),
      ),
    );
  }
}
