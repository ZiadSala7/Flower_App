import 'package:flower_app/constants.dart';
import 'package:flower_app/core/utils/styles.dart';
import 'package:flower_app/features/home/presentation/views/widgets/stars_row.dart';
import 'package:flutter/material.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        child: Column(
          children: [
            Container(
              height: 400,
              padding: const EdgeInsets.all(5),
              width: double.infinity,
              child: Image.asset(
                'assets/img/1.webp',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              r"$12.99",
              style: TextStyles.textStyle20Med,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
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
                    ),
                    const StarsRow(),
                  ],
                ),
                const LocationWidget(),
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
      ),
    );
  }
}

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
