import 'package:flutter/material.dart';
import 'package:it_legend_task/core/constants/AppColor.dart';
import 'package:it_legend_task/core/constants/Asset.dart';
import 'package:it_legend_task/features/view/Tabs/account.dart';
import 'package:it_legend_task/features/view/Tabs/Create_Add.dart';
import 'package:it_legend_task/features/view/Tabs/chat.dart';
import 'package:it_legend_task/features/view/Tabs/homepage.dart';
import 'package:it_legend_task/features/view/Tabs/My_Adds.dart';
import 'package:it_legend_task/features/widget/CustomButton_Navigation_Bar_Item.dart';

class Navbarscreen extends StatefulWidget {
  const Navbarscreen({super.key});

  @override
  State<Navbarscreen> createState() => _NavbarscreenState();
}

class _NavbarscreenState extends State<Navbarscreen> {
  List<Widget> tabs = [HomePage(), Chat(), CreateAd(), MyAdds(), account()];
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: tabs[_currentindex],
      bottomNavigationBar: Container(
        height: 75,
        width: 360,
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.only(top: 8, bottom: 8, left: 12, right: 12),
        decoration: BoxDecoration(),
        child: BottomNavigationBar(
          selectedLabelStyle: textTheme.titleSmall?.copyWith(inherit: true),
          unselectedLabelStyle: textTheme.titleSmall?.copyWith(inherit: true),
          iconSize: 24,
          selectedItemColor: Appcolor.bluecolor,
          unselectedItemColor: Appcolor.bgunselectedicon,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentindex,
          onTap: (value) {
            setState(() => _currentindex = value);
          },
          items: [
            customButtonNavigationBarItem(
              label: 'الرئيسية',
              imagepath: NavIconAssets.home,
            ),
            customButtonNavigationBarItem(
              label: 'محادثة',
              imagepath: NavIconAssets.chat,
            ),
            customButtonNavigationBarItem(
              label: 'أضف أعلان',
              imagepath: NavIconAssets.addbox,
            ),
            customButtonNavigationBarItem(
              label: 'أعلاناتى',
              imagepath: NavIconAssets.dataset,
            ),
            customButtonNavigationBarItem(
              label: 'حسابى',
              imagepath: NavIconAssets.account,
            ),
          ],
        ),
      ),
    );
  }
}
