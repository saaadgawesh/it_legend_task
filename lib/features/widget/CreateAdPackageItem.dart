import 'package:flutter/material.dart';
import 'package:it_legend_task/core/constants/AppColor.dart';
import 'package:it_legend_task/core/constants/Asset.dart';
import 'package:it_legend_task/features/Data/models/Creat_Ad_Model.dart';

class PriceTagBanner extends StatelessWidget {
  final String text;
  const PriceTagBanner({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: ClipPath(
        clipper: RibbonClipper(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          color: const Color(0xFFFFE4E0),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}

class RibbonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width - 10, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 10, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CreateAdPackageItem extends StatelessWidget {
  final CreatAdItemModel item;
  final TextTheme textTheme;

  const CreateAdPackageItem({
    super.key,
    required this.item,
    required this.textTheme,
  });

  String getStackNumber() {
    if (item.stacktext == '7') {
      return '7';
    } else if (item.stacktext == '18') {
      return '18';
    } else if (item.stacktext == '24') {
      return '24';
    }
    return '18';
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          child: Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(width: 1, color: Appcolor.greycolor),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.labeltext,
                      style: textTheme.titleLarge?.copyWith(
                        color: Appcolor.orangecolor,
                      ),
                    ),
                    const Spacer(),
                    Text(item.title, style: textTheme.titleLarge),
                    Image.asset(item.titleImage),
                  ],
                ),
                const Divider(),

                _buildTextWithIcon(
                  item.salahiatAlelan,
                  item.salahiatAlelanImage,
                ),

                _buildContentRow(),
              ],
            ),
          ),
        ),

        if (item.title.toLowerCase() == 'بلس')
          const Positioned(
            right: 0,
            top: -5,
            child: PriceTagBanner(text: 'أفضل قيمة مقابل سعر'),
          ),
        if (item.title.toLowerCase() == 'سوبر')
          const Positioned(
            right: 0,
            top: -5,
            child: PriceTagBanner(text: 'أعلى مشاهدات'),
          ),
      ],
    );
  }

  Widget _buildContentRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (item.title.toLowerCase() == 'بلس' ||
            item.title.toLowerCase() == 'سوبر' ||
            item.title.toLowerCase() == 'اكسترا')
          _buildStackSection()
        else
          Container(),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [..._buildTopContent(), ..._buildBottomContent()],
          ),
        ),
      ],
    );
  }

  List<Widget> _buildTopContent() {
    List<Widget> widgets = [];

    if (item.title.toLowerCase() == 'اكسترا') {
      if (item.rafelealaa != null) {
        widgets.add(
          _buildTextWithIcon(
            item.rafelealaa!,
            item.rafelealaaImage ?? images.createadrocket,
          ),
        );
      }
      if (item.tathbeet1 != null) {
        widgets.add(_buildTextWithIcon(item.tathbeet1!, item.tathbeetImage));
      }
      if (item.tathbeet2 != null) {
        widgets.add(_buildTextWithIcon(item.tathbeet2!, item.tathbeetImage));
      }
      return widgets;
    }

    if (item.title.toLowerCase() == 'بلس' ||
        item.title.toLowerCase() == 'سوبر') {
      if (item.rafelealaa != null) {
        widgets.add(
          _buildTextWithIcon(
            item.rafelealaa!,
            item.rafelealaaImage ?? images.createadrocket,
          ),
        );
      }
      if (item.tathbeet1 != null) {
        widgets.add(_buildTextWithIcon(item.tathbeet1!, item.tathbeetImage));
      }
      if (item.zohoorfemohafazat != null) {
        widgets.add(
          _buildTextWithIcon(
            item.zohoorfemohafazat!,
            item.zohoorfemohafazatImage,
          ),
        );
      }
      return widgets;
    }

    return widgets;
  }

  List<Widget> _buildBottomContent() {
    List<Widget> widgets = [];

    if (item.title.toLowerCase() == 'بلس' ||
        item.title.toLowerCase() == 'سوبر') {
      if (item.tathbeet2 != null) {
        widgets.add(
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              item.tathbeet2!,
              style: textTheme.bodyMedium?.copyWith(
                color: Appcolor.orangecolor,
              ),
            ),
          ),
        );
      }
      if (item.tathbeet2 != null) {
        widgets.add(
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(item.tathbeet2!, style: textTheme.bodyMedium),
          ),
        );
      }
      if (item.tathbeet3 != null) {
        widgets.add(
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(item.tathbeet3!, style: textTheme.bodyMedium),
          ),
        );
      }
    }

    return widgets;
  }

  Widget _buildTextWithIcon(String text, String? imagePath) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(text),
          const SizedBox(width: 6),
          if (imagePath != null) Image.asset(imagePath),
        ],
      ),
    );
  }

  Widget _buildStackSection() {
    return Stack(
      alignment: AlignmentDirectional.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 71,
          height: 42,
          decoration: BoxDecoration(
            color: Appcolor.stackgreencolor.withOpacity(0.1),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
            ),
            border: Border.all(width: 1, color: Appcolor.stackgreencolor),
          ),
          child: Center(
            child: Text(
              getStackNumber(),
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -35,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              'ضعف عدد\nالمشاهدات',
              textAlign: TextAlign.center,
              style: textTheme.labelSmall?.copyWith(
                fontSize: 12,
                color: Appcolor.bgunselectedicon,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
