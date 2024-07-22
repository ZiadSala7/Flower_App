import 'package:flower_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class NewTextWidget extends StatelessWidget {
  const NewTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(120, 168, 9, 70),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(
        "New",
        style: TextStyles.textStyle20Med,
      ),
    );
  }
}
