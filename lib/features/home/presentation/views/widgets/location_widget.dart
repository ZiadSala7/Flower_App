import 'package:flower_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.share_location_outlined,
            size: 30,
          ),
        ),
        const Text(
          "Location  ",
          style: TextStyles.textStyle20Med,
        ),
      ],
    );
  }
}
