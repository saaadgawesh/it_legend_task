import 'package:flutter/material.dart';
import 'package:it_legend_task/core/constants/AppColor.dart';
import 'package:it_legend_task/features/view/Tabbar_Pageview.dart/all_offers.dart';
import 'package:it_legend_task/features/view/fliteration_page.dart';
import 'package:it_legend_task/features/widget/TabItemCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final texttheme = Theme.of(context).textTheme;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(top: 60, left: 16, right: 16),
          margin: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Appcolor.bgunselectedicon,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FliterationPage(),
                              ),
                            );
                          },
                          child: Text('الكل', style: texttheme.titleLarge),
                        ),
                      ],
                    ),
                  ),
                  Text('أستكشف العروض', style: texttheme.titleLarge),
                ],
              ),

              const SizedBox(height: 16),

              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Appcolor.transparentcolor),
                ),
                child: TabBar(
                  dividerColor: Appcolor.transparentcolor,
                  tabAlignment: TabAlignment.start,
                  isScrollable: true,
                  labelStyle: texttheme.titleMedium,
                  labelColor: Appcolor.orangecolor,
                  unselectedLabelColor: Appcolor.bgunselectedicon,
                  indicatorColor: Appcolor.transparentcolor,
                  tabs: const [
                    TabItemCard(text: 'كل العروض'),
                    TabItemCard(text: 'ملابس'),
                    TabItemCard(text: 'أكسسوارات'),
                    TabItemCard(text: 'الكترونيات'),
                  ],
                ),
              ),

              Expanded(
                child: TabBarView(
                  children: [
                    AllOffers(),
                    Center(child: Text('ملابس')),
                    Center(child: Text('أكسسوارات')),
                    Center(child: Text('الكترونيات')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
