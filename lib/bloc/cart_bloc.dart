import 'package:biblioteca/models/product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartBloc extends Cubit<List<Product>> {
  CartBloc() : super([]);

  addProduct(Product product) {
    state.add(product);
    emit(List.from(state));
  }

  removeProduct(Product product) {
    state.remove(product);
    emit(List.from(state));
  }

  List<Product> getAll() {
    return state;
  }
}
