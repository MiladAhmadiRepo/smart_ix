import 'dart:async';

import 'package:floor/floor.dart';
import '../../../domain/entities/routines/routines.dart';
import 'DAOs/routines_dao.dart';
import 'converters/routines_type_converter.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'app_database.g.dart';

@TypeConverters([OwnerTypeConverter])
@Database(version: 1, entities: [Routines])
abstract class AppDatabase extends FloorDatabase {
  RoutinesDao get routinesDao;
}
