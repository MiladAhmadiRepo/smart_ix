import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:smart_ix/src/domain/entities/routines/routines.dart';
import '../../../core/resources/data_state.dart';
import '../../../domain/usecases/routines/get_routines_usecase.dart';
import '../../../domain/usecases/routines/insert_routines_usecase.dart';
import '../../../domain/usecases/routines/remove_routines_usecase.dart';
import '../../../domain/usecases/routines/update_routines_usecase.dart';

part 'routines_event.dart';

part 'routines_state.dart';

class RoutinesBloc extends Bloc<RoutinesEvent, RoutinesState> {
  final GetRoutinesUseCase _getRoutinesUseCase;
  final RemoveRoutinesUseCase _removeRoutinesUseCase;
  final InsertRoutinesUseCase _insertRoutinesUseCase;
  final UpdateRoutinesUseCase _updateRoutinesUseCase;

  RoutinesBloc(
        this._getRoutinesUseCase,
      this._removeRoutinesUseCase,
      this._insertRoutinesUseCase,
      this._updateRoutinesUseCase,
      ) : super(RoutinesLoading()) {
    on<GetRoutines>(_getRoutinesEventToState);
    on<RemoveRoutines>(_removeRoutinesEventToState);
    on<UpdateRoutines>(_updateRoutinesEventToState);
    on<InsertRoutines>(_insertRoutinesEventToState);
  }

  late Routines _routines;

  void _getRoutinesEventToState(RoutinesEvent event, Emitter<RoutinesState> emit) async {
    final routines = await _getRoutinesUseCase( );
  }

  void _removeRoutinesEventToState(RemoveRoutines event, Emitter<RoutinesState> emit) async {
     await _removeRoutinesUseCase( params: event.routines);
  }

  void _updateRoutinesEventToState(UpdateRoutines event, Emitter<RoutinesState> emit) async {
      await _updateRoutinesUseCase( params: event.routines);
  }

  void _insertRoutinesEventToState(InsertRoutines event, Emitter<RoutinesState> emit) async {
      await _insertRoutinesUseCase( params: event.routines);
  }
}
