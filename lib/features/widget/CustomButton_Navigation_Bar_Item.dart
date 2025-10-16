import 'package:flutter/cupertino.dart';

BottomNavigationBarItem customButtonNavigationBarItem({
  required String label,
  required String imagepath,
}) {
  return BottomNavigationBarItem(
    icon: ImageIcon(AssetImage(imagepath)),
    label: label,
  );
}
