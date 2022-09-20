import 'package:floor/floor.dart';
import 'package:smart_ix/src/domain/entities/routines/routines.dart';

import '../../../../core/constants.dart';

@dao
abstract class RoutinesDao {
  @Query('SELECT * FROM $kArticlesTableName')
  Future<List<Routines>> getAllRoutines();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertRoutines(Routines routines);

  @delete
  Future<void> deleteRoutines(Routines routines);

  @update
  Future<void> updateRoutines(Routines routines);
}
