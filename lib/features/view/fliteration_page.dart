import 'package:flutter/material.dart';
import 'package:it_legend_task/core/constants/AppColor.dart';
import 'package:it_legend_task/core/constants/Asset.dart';
import 'package:it_legend_task/core/widget/CustomElevatedButton.dart';
import 'package:it_legend_task/features/widget/CustomRealStateDescription.dart';
import 'package:it_legend_task/features/widget/Customformfield.dart';
import 'package:it_legend_task/features/widget/RoomCountItem.dart';
import 'package:it_legend_task/features/widget/TitleCardItem.dart';
import 'package:it_legend_task/features/widget/TypeItemCard.dart';

class FliterationPage extends StatelessWidget {
  const FliterationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textthem = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Text('فلترة', style: textthem.titleLarge?.copyWith(fontSize: 24)),
              Icon(Icons.cancel_outlined),
            ],
          ),
        ],
        title: Text(
          'رجوع للأفتراضى',
          style: textthem.titleLarge?.copyWith(color: Appcolor.bluecolor),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TitleCardItem(textthem: textthem, text: 'الفئة'),
              SizedBox(height: 10),
              Customrealstatedescription(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'تغيير',
                      style: textthem.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Appcolor.bluecolor,
                      ),
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('عقارات', style: textthem.titleMedium),
                        Text(
                          'فلل البيع',
                          style: textthem.titleSmall?.copyWith(
                            color: Appcolor.bgunselectedicon.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Image.asset(images.realstate),
                  ],
                ),
              ),

              Customrealstatedescription(
                child: Row(
                  children: [
                    Icon(Icons.arrow_back),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('الموقع', style: textthem.titleMedium),
                        Text(
                          'مصر',
                          style: textthem.titleSmall?.copyWith(
                            color: Appcolor.bgunselectedicon.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.location_on_outlined),
                  ],
                ),
              ),
              TitleCardItem(textthem: textthem, text: 'الأقساط الشهرية'),
              Row(children: [Customformfield(), Customformfield()]),
              SizedBox(height: 10),
              TitleCardItem(textthem: textthem, text: 'النوع'),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TypeItemCard(text: 'فيلا منفصلة'),
                  TypeItemCard(text: 'توين هاوس'),
                  TypeItemCard(
                    bgcontainer: Appcolor.bluecolor.withOpacity(0.1),
                    borderwidth: 2,
                    color: Appcolor.bluecolor,
                    width: 42,
                    text: 'الكل',
                  ),
                ],
              ),
              TypeItemCard(text: 'تاون هاوس'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TitleCardItem(textthem: textthem, text: 'عدد الغرف'),
                  Row(
                    children: [
                      RoomCountItem(text: '3 غرف'),
                      RoomCountItem(text: 'غرفتين'),
                      RoomCountItem(width: 42, text: 'الكل'),
                      RoomCountItem(
                        bgcontainer: Appcolor.bluecolor.withOpacity(0.1),
                        borderwidth: 2,
                        color: Appcolor.bluecolor,
                        text: '5غرف+',
                      ),
                      RoomCountItem(text: '4 غرف'),
                    ],
                  ),
                ],
              ),
              TitleCardItem(textthem: textthem, text: 'السعر'),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Customformfield(text: 'أقصى سعر'),
                  Customformfield(text: 'أقل سعر'),
                ],
              ),
              TitleCardItem(textthem: textthem, text: 'طريقة الدفع'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RoomCountItem(
                    borderwidth: 2,
                    bgcontainer: Appcolor.bluecolor.withOpacity(0.1),
                    color: Appcolor.bluecolor,
                    text: 'كاش',
                  ),
                  RoomCountItem(text: 'تقسيط'),
                  RoomCountItem(text: 'أى'),
                ],
              ),
              TitleCardItem(textthem: textthem, text: 'حالة العقار'),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RoomCountItem(width: 83, text: 'قيد الأنشاء'),
                  RoomCountItem(
                    bgcontainer: Appcolor.bluecolor.withOpacity(0.1),
                    borderwidth: 2,
                    color: Appcolor.bluecolor,
                    text: 'جاهز',
                  ),
                  RoomCountItem(text: 'أى'),
                ],
              ),
              Center(
                child: CustomElevatedButton(
                  texttheme: textthem,
                  text: '  شاهد 10,000+ نتائج',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
