import 'package:flutter/material.dart';
import 'package:it_legend_task/core/constants/AppColor.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.texttheme,
    required this.text,
    this.icon,
  });

  final TextTheme? texttheme;
  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 328,
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.only(top: 8, bottom: 8, right: 12, left: 12),
      decoration: BoxDecoration(
        color: Appcolor.bluecolor,
        borderRadius: BorderRadius.circular(32),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Appcolor.transparentcolor,
          elevation: 0,
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 8),
            Text(
              text,
              style: texttheme?.titleLarge?.copyWith(
                color: Appcolor.whitecolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
