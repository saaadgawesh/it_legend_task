import 'package:flutter/material.dart';
import 'package:it_legend_task/core/constants/AppColor.dart';
import 'package:it_legend_task/features/widget/Filteration_Item_Card.dart';

class TypeItemCard extends StatelessWidget {
  const TypeItemCard({
    super.key,
    required this.text,
    this.width,
    this.color,
    this.bgcontainer,
    this.borderwidth,
  });
  final String text;
  final double? width;
  final Color? color;
  final Color? bgcontainer;
  final double? borderwidth;
  @override
  Widget build(BuildContext context) {
    return FilterationItemCard(
      borderwidth: borderwidth ?? 1,
      text: text,
      width: width ?? 89,
      height: 40,
      radius: 30,
      padding: 8,
      margin: 12,
      bgcontainer: bgcontainer,
      color: color ?? Appcolor.greycolor.withOpacity(0.5),
    );
  }
}
