import 'package:flutter/material.dart';
import 'package:it_legend_task/core/constants/AppColor.dart';

class FilterationItemCard extends StatelessWidget {
  const FilterationItemCard({
    super.key,
    required this.width,
    this.text,
    this.theme,
    required this.height,
    required this.radius,
    required this.padding,
    required this.margin,
    this.color,
    this.borderwidth,
    this.bgcontainer,
  });
  final double width;
  final double? borderwidth;
  final String? text;
  final TextTheme? theme;
  final double height;
  final double radius;
  final double padding;
  final double margin;
  final Color? color;
  final Color? bgcontainer;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      margin: EdgeInsets.all(margin),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: bgcontainer,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(
          width: borderwidth ?? 1,
          color: color ?? Appcolor.greycolor,
        ),
      ),
      child: Text(text ?? ''),
      alignment: AlignmentDirectional.center,
    );
  }
}
