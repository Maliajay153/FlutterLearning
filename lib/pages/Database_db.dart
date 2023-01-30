import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io' as io;

import '../Models/UserModel.dart';

class Database_db{
  static Database? _db;
  static const String DB_Name = 'flutterdb.db';
  static const String u_table = 'u_table';
  static const String u_fname = 'fname';
  static const String u_lname = 'lname';
  static const String u_email = 'email';
  static const String u_pass =  'pass';
  static int version = 1;

  Future<Database?> get db async{
    if(_db != null){
      return _db;
    }
    _db = await initDb();
    return _db;
}
  initDb() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path,DB_Name);
    var db = await openDatabase(path,version: version,onCreate: onCreate(version,_db!));
    return _db;
  }
  onCreate (int version,Database db) async{
    await db.execute("create table $u_table("
        "$u_fname Text,"
        "$u_lname Text,"
        "$u_email Text Primary key,"
        "$u_pass Text");

  }
  Future<UserModel?> saveData(UserModel user) async{
      var dbClient = await db;
      user.fname = (await dbClient?.insert(u_table, user.toMap())) as String;
      return user;
  }
}



