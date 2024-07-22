import 'package:flower_app/features/home/data/models/product_model.dart';
import 'package:flower_app/features/home/presentation/views/widgets/custom_product_card.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2.5 / 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 20,
      ),
      itemCount: allProducts.length,
      itemBuilder: (BuildContext context, int index) {
        return CustomProductCard(
          product: allProducts[index],
        );
      },
    );
  }
}
