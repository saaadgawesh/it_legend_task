import 'package:it_legend_task/core/constants/Asset.dart';

class categoryModel {
  final String image;

  final String text;

  categoryModel({required this.image, required this.text});

  Map<String, dynamic> toMap() {
    return {'image': image, 'text': text};
  }

  factory categoryModel.fromMap(Map<String, dynamic> map) {
    return categoryModel(image: map['image'], text: map['text']);
  }
}

class CategoryItemModel {
  CategoryItemModel({required this.image, required this.text});
  final String image;
  final String text;
}

List<CategoryItemModel> categoryItemModel = [
  CategoryItemModel(image: images.categorymakeup, text: 'منتجات تجميل'),
  CategoryItemModel(image: images.categoryphone, text: 'موبايلات'),
  CategoryItemModel(image: images.categoryhour, text: 'ساعات'),

  CategoryItemModel(image: images.categoryperson, text: 'موضة رجالى'),
];
