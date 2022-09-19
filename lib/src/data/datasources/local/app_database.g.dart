// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  RoutinesDao? _routinesDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `routines_table` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `owner` TEXT NOT NULL)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  RoutinesDao get routinesDao {
    return _routinesDaoInstance ??= _$RoutinesDao(database, changeListener);
  }
}

class _$RoutinesDao extends RoutinesDao {
  _$RoutinesDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _routinesInsertionAdapter = InsertionAdapter(
            database,
            'routines_table',
            (Routines item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'owner': _ownerTypeConverter.encode(item.owner)
                }),
        _routinesUpdateAdapter = UpdateAdapter(
            database,
            'routines_table',
            ['id'],
            (Routines item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'owner': _ownerTypeConverter.encode(item.owner)
                }),
        _routinesDeletionAdapter = DeletionAdapter(
            database,
            'routines_table',
            ['id'],
            (Routines item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'owner': _ownerTypeConverter.encode(item.owner)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Routines> _routinesInsertionAdapter;

  final UpdateAdapter<Routines> _routinesUpdateAdapter;

  final DeletionAdapter<Routines> _routinesDeletionAdapter;

  @override
  Future<List<Routines>> getAllRoutines() async {
    return _queryAdapter.queryList('SELECT * FROM routines_table',
        mapper: (Map<String, Object?> row) => Routines(
            row['id'] as int,
            row['name'] as String,
            _ownerTypeConverter.decode(row['owner'] as String)));
  }

  @override
  Future<void> insertRoutines(Routines routines) async {
    await _routinesInsertionAdapter.insert(
        routines, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateRoutines(Routines routines) async {
    await _routinesUpdateAdapter.update(routines, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteRoutines(Routines routines) async {
    await _routinesDeletionAdapter.delete(routines);
  }
}

// ignore_for_file: unused_element
final _ownerTypeConverter = OwnerTypeConverter();
