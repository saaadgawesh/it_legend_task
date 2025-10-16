import 'package:it_legend_task/features/Data/models/Product_Model.dart';

abstract class ProductState {}

class ProductInitial extends ProductState {}

class productSuccess extends ProductState {
  final List<ProductModel> products;
  productSuccess(this.products);
}
