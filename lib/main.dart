import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/core/constants/AppTextThem.dart';
import 'package:it_legend_task/core/constants/App_Router.dart/Generate_route.dart';
import 'package:it_legend_task/features/Data/Category/category_cubit.dart';
import 'package:it_legend_task/features/Data/Products/product_cubit.dart';
import 'package:it_legend_task/features/Data/models/Category_Model.dart';
import 'package:it_legend_task/features/Data/models/Product_Model.dart';
import 'package:it_legend_task/features/view/Nav_Bar_Screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final cubitproduct = ProductCubit();
  final cubitcategory = CategoryCubit();

  final productList =
      productitemModels
          .map(
            (p) => ProductModel(
              image: p.image,
              title: p.title,
              icontitle: p.icontitle,
              price: p.price,
              iconprice: p.iconprice,
              offerprice: p.offerprice,
              carticon: p.carticon,
              talatmostafaicon: p.talatmostafaicon,
              companybadgeicon: p.companybadgeicon,
              text: p.text,
              icontext: p.icontext,
            ),
          )
          .toList();
  final categorylist =
      categoryItemModel
          .map((p) => categoryModel(image: p.image, text: p.text))
          .toList();

  await cubitproduct.saveProducts(productList);
  await cubitcategory.saveCategorys(categorylist);

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => cubitproduct..loadProducts()),
        BlocProvider(create: (context) => cubitcategory..loadCategorys()),
      ],
      child: const ItLegendTask(),
    ),
  );
}

class ItLegendTask extends StatelessWidget {
  const ItLegendTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Navbarscreen(),
      theme: Apptextthem.appTextthem,
      onGenerateRoute: GenerateRoute.onGenerateRoute,
    );
  }
}
