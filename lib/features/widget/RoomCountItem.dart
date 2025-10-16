import 'package:flutter/material.dart';
import 'package:it_legend_task/core/constants/AppColor.dart';
import 'package:it_legend_task/features/widget/Filteration_Item_Card.dart';

class RoomCountItem extends StatelessWidget {
  const RoomCountItem({
    super.key,
    required this.text,
    this.borderwidth,
    this.color,
    this.width, this.bgcontainer,
  });
  final String text;
  final Color? color;
  final Color? bgcontainer;
  final double? borderwidth;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return FilterationItemCard(
      bgcontainer: bgcontainer,
      borderwidth: borderwidth ?? 1,
      text: text,
      width: width ?? 53,
      height: 40,
      radius: 30,
      padding: 6,
      margin: 12,
      color: color ?? Appcolor.greycolor,
    );
  }
}
