import 'package:it_legend_task/features/Data/models/Category_Model.dart';

abstract class CategoryState {}

class CategoryInitial extends CategoryState {}

class categorySuccess extends CategoryState {
  final List<categoryModel> categorys;
  categorySuccess(this.categorys);
}
