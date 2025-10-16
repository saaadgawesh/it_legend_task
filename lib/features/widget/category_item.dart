import 'package:flutter/material.dart';
import 'package:it_legend_task/core/constants/AppColor.dart';
import 'package:it_legend_task/features/Data/models/Category_Model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.texttheme,
    required int this.index,
    required this.categories,
  });
  final int index;
  final TextTheme texttheme;
  final categoryModel categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Appcolor.transparentcolor),
      ),

      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
            child: Image(image: AssetImage(categories.image)),
          ),
          Text(categories.text, style: texttheme.titleSmall),
        ],
      ),
    );
  }
}
