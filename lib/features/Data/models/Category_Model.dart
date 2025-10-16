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

List<categoryModel> categoryItemModel = [
  categoryModel(image: images.categorymakeup, text: 'منتجات تجميل'),
  categoryModel(image: images.categoryphone, text: 'موبايلات'),
  categoryModel(image: images.categoryhour, text: 'ساعات'),

  categoryModel(image: images.categoryperson, text: 'موضة رجالى'),
];
