import 'package:flutter/material.dart';
import 'package:it_legend_task/core/constants/AppColor.dart';
import 'package:it_legend_task/features/widget/Filteration_Item_Card.dart';

class Customformfield extends StatelessWidget {
  const Customformfield({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return FilterationItemCard(
      text: text,
      width: 158,
      height: 48,
      radius: 8,
      padding: 12,
      margin: 10,
      color: Appcolor.greycolor.withOpacity(0.5),
    );
  }
}
