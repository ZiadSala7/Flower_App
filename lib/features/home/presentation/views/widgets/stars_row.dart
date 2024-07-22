import 'package:flutter/material.dart';

class StarsRow extends StatelessWidget {
  const StarsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 25,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 25,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 25,
        ),
        Icon(
          Icons.star_half,
          color: Colors.amber,
          size: 25,
        ),
      ],
    );
  }
}
