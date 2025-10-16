
import 'package:flutter/material.dart';
import 'package:it_legend_task/core/constants/AppColor.dart';

class TitleCardItem extends StatelessWidget {
  const TitleCardItem({super.key, required this.textthem, required this.text});

  final TextTheme textthem;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 19,
      decoration: BoxDecoration(),
      child: Text(
        text,
        style: textthem.titleLarge?.copyWith(
          color: Appcolor.bgunselectedicon.withOpacity(0.5),
        ),
        textAlign: TextAlign.end,
      ),
    );
  }
}
