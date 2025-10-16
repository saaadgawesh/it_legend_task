import 'package:flutter/material.dart';
import 'package:it_legend_task/core/constants/AppColor.dart';
import 'package:it_legend_task/core/widget/CustomElevatedButton.dart';
import 'package:it_legend_task/features/Data/models/Creat_Ad_Model.dart';
import 'package:it_legend_task/features/widget/CreateAdPackageItem.dart';

class CreateAd extends StatelessWidget {
  const CreateAd({super.key});

  @override
  Widget build(BuildContext context) {
    final texttheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        actionsPadding: const EdgeInsets.all(10),
        actions: const [Icon(Icons.arrow_forward_ios)],
        title: const Text('أختر الباقات اللى تناسبك'),
        titleTextStyle: texttheme.titleLarge?.copyWith(fontSize: 24),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'أختار من باقات التمييز بل أسفل اللى تناسب أحتياجاتك',
              style: texttheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),

            Card(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: creatAditemmodel.length,
                separatorBuilder: (context, index) => const SizedBox(height: 7),
                itemBuilder: (context, index) {
                  final item = creatAditemmodel[index];
                  return CreateAdPackageItem(item: item, textTheme: texttheme);
                },
              ),
            ),

            // === زر التالي ===
            const SizedBox(height: 20),
            Container(
              margin: EdgeInsets.all(4),
              width: 328,
              height: 76,
              padding: EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Color(0xffF7F7F7)),
                borderRadius: BorderRadius.circular(8),
                color: Color(0xff000000).withOpacity(0.1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,

                children: [
                  Text('باقات مخصصة لك', style: texttheme.titleMedium),
                  Text(
                    'تواصل معنا لأختيار الباقة المناسبة لك',
                    style: texttheme.titleSmall,
                  ),
                  Text(
                    'فريق المبيعات',
                    style: texttheme.labelLarge?.copyWith(
                      color: Appcolor.bluecolor,
                    ),
                  ),
                ],
              ),
            ),
            CustomElevatedButton(texttheme: texttheme, text: 'التالى'),
          ],
        ),
      ),
    );
  }
}
