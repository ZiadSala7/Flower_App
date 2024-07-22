import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String img;
  const ProductImage({
    super.key,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: const EdgeInsets.all(5),
      width: double.infinity,
      child: Image.asset(
        img,
        fit: BoxFit.cover,
      ),
    );
  }
}
