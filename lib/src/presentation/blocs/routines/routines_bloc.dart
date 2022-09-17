// import 'package:bloc/bloc.dart';
// import 'package:dio/dio.dart';
// import 'package:equatable/equatable.dart';
// import 'package:smart_ix/src/domain/entities/routines.dart';
//
// import '../../../core/params/routines_request.dart';
// import '../../../core/resources/data_state.dart';
// import '../../../domain/usecases/get_routines_usecase.dart';
//
// part 'routines_event.dart';
//
// part 'routines_state.dart';
//
// class RoutinesBloc extends Bloc<RoutinesEvent, RoutinesState> {
//   final GetRoutinesUseCase _getRoutinesUseCase;
//
//   RoutinesBloc(this._getRoutinesUseCase) : super(RoutinesLoading()) {
//     on<RoutinesEvent>(_getRoutinesEventToState);
//   }
//
//   late Routines _routines;
//
//   void _getRoutinesEventToState(RoutinesEvent event, Emitter<RoutinesState> emit) async {
//     final dataState = await _getRoutinesUseCase(params: RoutinesRequestParams());
//
//     if (dataState is DataSuccess && dataState.data != null) {
//       final Routines routines = dataState.data as Routines;
//       _routines = routines;
//       // emit(RoutinesDone(_routines, noMoreData: noMoreData));
//     }
//     if (dataState is DataFailed) {
//       // emit(RoutinesError(dataState.error));
//     }
//   }
// }
