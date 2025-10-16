import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/features/Data/Category/category_state.dart';
import 'package:it_legend_task/features/Data/models/Category_Model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryInitial());

  Database? _db;

  Future<void> initDb() async {
    if (_db != null) return;
    _db = await openDatabase(
      join(await getDatabasesPath(), 'categorys.db'),
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE categorys(
            image TEXT,
            text TEXT
          )
        ''');
      },
    );
  }

  Future<void> saveCategorys(List<categoryModel> categorys) async {
    await initDb();
    // امسح القديم
    await _db!.delete('categorys');
    for (var p in categorys) {
      await _db!.insert('categorys', p.toMap());
    }
  }

  Future<void> loadCategorys() async {
    await initDb();
    final data = await _db!.query('categorys');
    final categorys = data.map((e) => categoryModel.fromMap(e)).toList();
    emit(categorySuccess(categorys));
  }
}
