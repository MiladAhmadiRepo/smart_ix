
import '../../core/params/devices_request.dart';
import '../../core/resources/data_state.dart';
import '../entities/devices/devices.dart';
import '../entities/devices/owner.dart';
import '../entities/routines/routines.dart';

abstract class RoutinesRepository {
  Future<List<Routines>> getRoutines( );
  Future<void> saveRoutines(Routines routines);
  Future<void> removeRoutines(Routines routines);
  Future<void> insertRoutines(Routines routines);
  Future<void> updateRoutines(Routines routines);
}
