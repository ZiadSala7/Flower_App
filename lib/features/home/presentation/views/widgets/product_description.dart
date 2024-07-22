import 'package:flower_app/constants.dart';
import 'package:flower_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ProductDescriptionWidget extends StatefulWidget {
  const ProductDescriptionWidget({
    super.key,
  });

  @override
  State<ProductDescriptionWidget> createState() =>
      _ProductDescriptionWidgetState();
}

class _ProductDescriptionWidgetState extends State<ProductDescriptionWidget> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            productDescription,
            maxLines: isClicked ? 100 : 5,
            overflow: TextOverflow.fade,
            style: TextStyles.textStyle20Reg,
          ),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              isClicked = !isClicked;
            });
          },
          child: Text(
            isClicked ? "Show less" : "Show more",
          ),
        ),
      ],
    );
  }
}
