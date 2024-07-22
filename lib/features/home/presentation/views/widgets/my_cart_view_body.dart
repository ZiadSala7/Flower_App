import 'package:flower_app/core/widgets/custom_button.dart';
import 'package:flower_app/features/home/presentation/view%20models/products_manager_cubit/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          child: Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount:
                  BlocProvider.of<ProductsCubit>(context).products.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(''),
                  title: Text('Flower${index + 1}'),
                );
              },
            ),
          ),
        ),
        CustomButton(
          buttonName:
              BlocProvider.of<ProductsCubit>(context).totalPrice.toString(),
          onPressed: () {},
        ),
      ],
    );
  }
}
