// import 'package:injectable/injectable.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';

// @module
// abstract class DatabaseModule {
//   @lazySingleton
//   Future<Database> get database async {
//     final dbPath = await getDatabasesPath();
//     return openDatabase(join(dbPath, 'tasks.db'), onCreate: (db, version) {
//       return db.execute('''
//           CREATE TABLE tasks (
//             id TEXT PRIMARY KEY,
//             name TEXT,
//             startDate TEXT,
//             endDate TEXT,
//             priority TEXT,
//             category TEXT
//           )
//         ''');
//     }, version: 1);
//   }
// }
