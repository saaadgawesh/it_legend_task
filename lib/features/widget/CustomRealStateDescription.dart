import 'package:flutter/material.dart';
import 'package:it_legend_task/core/constants/AppColor.dart';

class Customrealstatedescription extends StatelessWidget {
  const Customrealstatedescription({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 79,
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Appcolor.greycolor.withOpacity(0.5),
        ),
      ),
      child: child,
    );
  }
}
