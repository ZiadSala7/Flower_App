import 'package:bloc/bloc.dart';
import 'package:flower_app/features/home/data/models/product_model.dart';
import 'package:flower_app/features/home/presentation/view%20models/products_manager_cubit/products_cubit_states.dart';

class ProductsCubit extends Cubit<ProductsCubitStates> {
  ProductsCubit() : super(InitialState());
  List<Product> products = [];
  double totalPrice = 0;
  void manageTotalPRice(String procces, double price, Product product) {
    if (procces == 'del') {
      totalPrice == 0 ? totalPrice = 0 : totalPrice -= price;
      products.remove(product);
      emit(DeleteProductFromCart());
    } else {
      totalPrice += price;
      products.add(product);
      emit(AddProductToCart());
    }
  }
}
