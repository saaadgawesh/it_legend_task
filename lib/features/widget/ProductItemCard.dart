import 'package:flutter/material.dart';
import 'package:it_legend_task/features/Data/models/Product_Model.dart';

class ProductItemCard extends StatelessWidget {
  const ProductItemCard({
    super.key,
    required this.index,
    required this.product,
  });
  final ProductModel product;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.grey.withOpacity(0.5)),
      ),
      child: Column(
        children: [
          SizedBox(
            width: 180,
            height: 215,

            child: Image.asset(product.image, fit: BoxFit.cover, width: 185),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset((product.icontitle)),
              Text(
                product.title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset((product.iconprice)),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: (product.offerprice),
                      style: TextStyle(decoration: TextDecoration.lineThrough),
                    ),
                    TextSpan(text: '/جم'),

                    TextSpan(
                      text: (product.price),
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(product.text, overflow: TextOverflow.ellipsis),

              Image.asset((product.icontext)),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Image.asset((product.talatmostafaicon)),
              SizedBox(width: 10),
              Image.asset((product.carticon)),
              Spacer(),
              Image.asset((product.companybadgeicon)),
            ],
          ),
        ],
      ),
    );
  }
}
