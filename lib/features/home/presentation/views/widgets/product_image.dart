import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: const EdgeInsets.all(5),
      width: double.infinity,
      child: Image.asset(
        'assets/img/1.webp',
        fit: BoxFit.cover,
      ),
    );
  }
}
