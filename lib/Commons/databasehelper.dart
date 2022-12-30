import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart' as dbPath;
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:staple_food_fortification/Model/coursercorePojo.dart';
import 'package:staple_food_fortification/Model/courseselectionPojo.dart';


class DatabaseHelper {
  final String _dbName = "Sff.db";
  final int _dbVersion = 1;

  DatabaseHelper.internal();
  static final DatabaseHelper _instance = DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;

  static Database? _db;

  Future<Database?> get database async {
    if (_db != null) return _db;
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = dbPath.join(documentDirectory.path, _dbName);
    return _db = await openDatabase(path, version: _dbVersion, onCreate: _onDatabaseCreate);
  }

  FutureOr<void> _onDatabaseCreate(Database db, int version) async {
    await db.execute(CourseSelectionPojo.createTable);
    await db.execute(CourseCorePojo.createTable);
  }

  Future<int> truncateTable(String tableName) async {
    var dbClient = await database;
    // int result  = await dbClient!.delete(tableName);
    //if ( result > 0) print('$tableName is Truncated');
    return await dbClient!.delete(tableName);
  }

  Future<void> deleteOptionTable(String wreArgs) async {
    final db = await database;
    var status = db!.rawDelete(
        "delete from service_providers where local_id  = ${wreArgs}");
  }

  Future<int> saveMasterTable(var mapList, String table) async {
    var db = await database;
    int result = 0;
    for (var value in mapList) {
      result = await db!.insert(table, value);
    }
    return result;
  }

  Future<int> saveReg(Map<String, dynamic> mapList, String table) async {
    Database? db = await database;
    return await db!.insert(table, mapList);
  }

  Future<List<CourseSelectionPojo>> getClientList() async {
    var db = await database;
    List<Map<String, dynamic>> resultMap = await db!.query("Course_Selection", columns: []);
    return resultMap.map((f) => CourseSelectionPojo.fromMap(f)).toList();
  }
  //
  // Future<Map<String, String>> getData(
  //     String table, String id, String name) async {
  //   Map<String, String> dataval = <String, String>{};
  //   var db = await database;
  //   List<Map<String, dynamic>> resultMap =
  //       await db!.query(table, columns: [id, name], orderBy: name);
  //   for (var value in resultMap) {
  //     dataval[value[id]] = value[name];
  //   }
  //   print(resultMap);
  //   return dataval;
  // }
}
