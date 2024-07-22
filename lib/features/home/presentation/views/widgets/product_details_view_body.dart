import 'package:flower_app/core/utils/styles.dart';
import 'package:flower_app/features/home/presentation/views/widgets/location_widget.dart';
import 'package:flower_app/features/home/presentation/views/widgets/new_text_widget.dart';
import 'package:flower_app/features/home/presentation/views/widgets/product_description.dart';
import 'package:flower_app/features/home/presentation/views/widgets/product_image.dart';
import 'package:flower_app/features/home/presentation/views/widgets/stars_row.dart';
import 'package:flutter/material.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ProductImage(),
          const SizedBox(
            height: 15,
          ),
          const Text(
            r"$12.99",
            style: TextStyles.textStyle20Med,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  NewTextWidget(),
                  StarsRow(),
                ],
              ),
              LocationWidget(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            width: double.infinity,
            child: const Text(
              "Details :",
              textAlign: TextAlign.start,
              style: TextStyles.textStyle25Med,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const ProductDescriptionWidget(),
        ],
      ),
    );
  }
}
