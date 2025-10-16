import 'package:it_legend_task/core/constants/Asset.dart';

class ProductModel {
  final String image;
  final String title;
  final String text;
  final String icontext;
  final String icontitle;
  final String price;
  final String iconprice;
  final String offerprice;
  final String carticon;
  final String talatmostafaicon;
  final String companybadgeicon;

  ProductModel({
    required this.image,
    required this.title,
    required this.text,
    required this.icontext,
    required this.icontitle,
    required this.price,
    required this.iconprice,
    required this.offerprice,
    required this.carticon,
    required this.talatmostafaicon,
    required this.companybadgeicon,
  });

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'title': title,
      'text': text,
      'icontext': icontext,
      'icontitle': icontitle,
      'price': price,
      'iconprice': iconprice,
      'offerprice': offerprice,
      'carticon': carticon,
      'talatmostafaicon': talatmostafaicon,
      'companybadgeicon': companybadgeicon,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      image: map['image'],
      title: map['title'],
      text: map['text'],
      icontext: map['icontext'],
      icontitle: map['icontitle'],
      price: map['price'],
      iconprice: map['iconprice'],
      offerprice: map['offerprice'],
      carticon: map['carticon'],
      talatmostafaicon: map['talatmostafaicon'],
      companybadgeicon: map['companybadgeicon'],
    );
  }
}

List<ProductModel> productitemModels = [
  ProductModel(
    image: Products.tshirt,
    title: 'جاكيت من الصوف مناسب',
    icontitle: Products.vector,
    price: '32,000',
    iconprice: Products.favorite,
    offerprice: '60',
    carticon: Products.cart,
    talatmostafaicon: Products.talatmostafaicon,
    companybadgeicon: Products.companybage,
    text: 'تم بيع 3.3k+',
    icontext: Products.localfiredepartment,
  ),
  ProductModel(
    image: Products.jaket,
    title: 'جاكيت من الصوف مناسب',
    icontitle: Products.vector,
    price: '32,000',
    iconprice: Products.favorite,
    offerprice: '60',
    carticon: Products.cart,
    talatmostafaicon: Products.talatmostafaicon,
    companybadgeicon: Products.companybage,
    text: 'تم بيع 3.3k+',
    icontext: Products.localfiredepartment,
  ),
  ProductModel(
    image: Products.jaket,
    title: 'جاكيت من الصوف مناسب',
    icontitle: Products.vector,
    price: '32,000',
    iconprice: Products.favorite,
    offerprice: '60',
    carticon: Products.cart,
    talatmostafaicon: Products.talatmostafaicon,
    companybadgeicon: Products.companybage,
    text: 'تم بيع 3.3k+',
    icontext: Products.localfiredepartment,
  ),
  ProductModel(
    image: Products.jaket,
    title: 'جاكيت من الصوف مناسب',
    icontitle: Products.vector,
    price: '32,000',
    iconprice: Products.favorite,
    offerprice: '60',
    carticon: Products.cart,
    talatmostafaicon: Products.talatmostafaicon,
    companybadgeicon: Products.companybage,
    text: 'تم بيع 3.3k+',
    icontext: Products.localfiredepartment,
  ),
  ProductModel(
    image: Products.jaket,
    title: 'جاكيت من الصوف مناسب',
    icontitle: Products.vector,
    price: '32,000',
    iconprice: Products.favorite,
    offerprice: '60',
    carticon: Products.cart,
    talatmostafaicon: Products.talatmostafaicon,
    companybadgeicon: Products.companybage,
    text: 'تم بيع 3.3k+',
    icontext: Products.localfiredepartment,
  ),
  ProductModel(
    image: Products.shoes,
    title: 'جاكيت من الصوف مناسب',
    icontitle: Products.vector,
    price: '32,000',
    iconprice: Products.favorite,
    offerprice: '60',
    carticon: Products.cart,
    talatmostafaicon: Products.talatmostafaicon,
    companybadgeicon: Products.companybage,
    text: 'تم بيع 3.3k+',
    icontext: Products.localfiredepartment,
  ),
  ProductModel(
    image: Products.jaket,
    title: 'جاكيت من الصوف مناسب',
    icontitle: Products.vector,
    price: '32,000',
    iconprice: Products.favorite,
    offerprice: '60',
    carticon: Products.cart,
    talatmostafaicon: Products.talatmostafaicon,
    companybadgeicon: Products.companybage,
    text: 'تم بيع 3.3k+',
    icontext: Products.localfiredepartment,
  ),
  ProductModel(
    image: Products.shoes,
    title: 'جاكيت من الصوف مناسب',
    icontitle: Products.vector,
    price: '32,000',
    iconprice: Products.favorite,
    offerprice: '60',
    carticon: Products.cart,
    talatmostafaicon: Products.talatmostafaicon,
    companybadgeicon: Products.companybage,
    text: 'تم بيع 3.3k+',
    icontext: Products.localfiredepartment,
  ),
];
