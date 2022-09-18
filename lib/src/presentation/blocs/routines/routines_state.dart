part of 'routines_bloc.dart';

abstract class RoutinesState extends Equatable {
  final Routines? routines;

  final DioError? error;

  const RoutinesState({this.routines, this.error});

  @override
  List<Object> get props => [routines ?? Object(), error ?? Object()];
}

class RoutinesLoading extends RoutinesState {
  const RoutinesLoading();
}

class PrepareListOfDevicesAndServicesState extends RoutinesState {
  const PrepareListOfDevicesAndServicesState();
}

class LoadPropertiesState extends RoutinesState {
  final List<Properties> listOfProperties;
  const LoadPropertiesState(this.listOfProperties);
  List<Object> get props => [listOfProperties];

}

class RoutinesDone extends RoutinesState {
  const RoutinesDone(Routines routines) : super(routines: routines);
}

class RoutinesShowNothing extends RoutinesState {
  const RoutinesShowNothing();
}

class RoutinesError extends RoutinesState {
  const RoutinesError(DioError? error) : super(error: error);
}
