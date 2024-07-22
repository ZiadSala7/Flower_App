import 'package:flower_app/features/home/presentation/views/widgets/custom_product_details_view_app_bar.dart';
import 'package:flower_app/features/home/presentation/views/widgets/product_details_view_body.dart';
import 'package:flutter/material.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customProductDetailsViewAppBar(),
      body: const ProductDetailsViewBody(),
    );
  }
}
