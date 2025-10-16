import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/features/Data/Products/product_state.dart';
import 'package:it_legend_task/features/Data/models/Product_Model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';



class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  Database? _db;

  Future<void> initDb() async {
    if (_db != null) return;
    _db = await openDatabase(
      join(await getDatabasesPath(), 'products.db'),
      version: 1,
      onCreate: (db, version) {
        return db.execute('''
          CREATE TABLE products(
            image TEXT,
            title TEXT,
text TEXT,
            icontext TEXT,
            icontitle TEXT,
            price TEXT,
            iconprice TEXT,
            offerprice TEXT,
            carticon TEXT,
            talatmostafaicon TEXT,
            companybadgeicon TEXT
          )
        ''');
      },
    );
  }

  Future<void> saveProducts(List<ProductModel> products) async {
    await initDb();
    // امسح القديم
    await _db!.delete('products');
    for (var p in products) {
      await _db!.insert('products', p.toMap());
    }
  }

  Future<void> loadProducts() async {
    await initDb();
    final data = await _db!.query('products');
    final products = data.map((e) => ProductModel.fromMap(e)).toList();
    emit(productSuccess(products));
  }
}
