import 'package:flutter/material.dart';
import 'package:it_legend_task/core/constants/AppColor.dart';

class TabItemCard extends StatelessWidget {
  const TabItemCard({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Appcolor.greycolor),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Text(
        text,

      ),
    );
  }
}
