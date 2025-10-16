import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/core/constants/AppColor.dart';
import 'package:it_legend_task/features/Data/Category/category_cubit.dart';
import 'package:it_legend_task/features/Data/Category/category_state.dart';
import 'package:it_legend_task/features/Data/Products/product_cubit.dart';
import 'package:it_legend_task/features/Data/Products/product_state.dart';
import 'package:it_legend_task/features/Data/models/Category_Model.dart';
import 'package:it_legend_task/features/Data/models/Product_Model.dart';
import 'package:it_legend_task/features/widget/ProductItemCard.dart';
import 'package:it_legend_task/features/widget/category_item.dart';

class AllOffers extends StatelessWidget {
  const AllOffers({super.key});

  @override
  Widget build(BuildContext context) {
    final texttheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 12, bottom: 12),
            height: 95,
            child: BlocBuilder<CategoryCubit, CategoryState>(
              builder: (context, state) {
                if (state is categorySuccess) {
                  return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryItemModel.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return Container();
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return CategoryItem(
                        texttheme: texttheme,
                        index: index,
                        categories: state.categorys[index],
                      );
                    },
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
          ),
          Container(
            width: 328,
            height: 32,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.only(right: 8, left: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color(0xffF95B1C0D).withOpacity(0.1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('لأى عرض تطلبه دلوقتى !'),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        'شحن مجانى',
                        style: texttheme.titleSmall?.copyWith(
                          color: const Color.fromARGB(255, 30, 155, 39),
                        ),
                      ),
                      Icon(Icons.check, color: Appcolor.stackgreencolor),
                    ],
                  ),
                ),
              ],
            ),
          ),
          BlocBuilder<ProductCubit, ProductState>(
            builder: (context, state) {
              if (state is productSuccess) {
                return GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 9,
                    crossAxisSpacing: 9,
                    childAspectRatio: 0.5,
                  ),
                  itemCount: productitemModels.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ProductItemCard(
                      index: index,
                      product: state.products[index],
                    );
                  },
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ],
      ),
    );
  }
}
