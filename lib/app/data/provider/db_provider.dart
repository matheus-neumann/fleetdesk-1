import 'dart:io';
import 'package:fleetdesk/app/data/model/position.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBProvider {
  static Database _database;
  static final DBProvider db = DBProvider._();

  DBProvider._();

  Future<Database> get database async {
    // If database exists, return database
    if (_database != null) return _database;

    // If database don't exists, create one
    _database = await initDB();

    return _database;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'offline_data.db');

    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute('CREATE TABLE Position('
          'vehicle_id INTEGER PRIMARY KEY,'
          'longitude DOUBLE,'
          'latitude DOUBLE,'
          'speed DOUBLE,'
          'heading DOUBLE,'
          'datetime_write TEXT,'
          'datetime_send TEXT,'
          'geofence TEXT,'
          'accuracy DOUBLE,'
          'is_moving INTEGER,'
          'battery_is_charging INTEGER,'
          'odometer DOUBLE,'
          'battery_level INTEGER'
          ')');
    });
  }

  // Insert employee on database
  createPosition(Position position) async {
    //await deleteAllEmployees();
    final db = await database;
    final res = await db.insert('Position', position.toJson());

    return res;
  }

  // Delete all employees
  Future<int> deleteAllEmployees() async {
    final db = await database;
    final res = await db.rawDelete('DELETE FROM Position');

    return res;
  }

  Future<List<Position>> getAllEmployees() async {
    final db = await database;
    final res = await db.rawQuery("SELECT * FROM Position");

    List<Position> list =
        res.isNotEmpty ? res.map((c) => Position.fromJson(c)).toList() : [];

    return list;
  }
}
