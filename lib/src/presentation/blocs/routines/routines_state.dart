part of 'routines_bloc.dart';

abstract class RoutinesState extends Equatable {
  final Routines? routines;
  final DioError? error;
  const RoutinesState({this.routines, this.error});

  @override
  List<Object> get props => [routines ?? Object(), error ?? Object()];
}

class RoutinesLoadingState extends RoutinesState {
  const RoutinesLoadingState();
}

class ShowRoutineNameState extends RoutinesState {
  final String routineName;
  const ShowRoutineNameState(this.routineName);
  List<Object> get props => [routineName];
}

class LoadPropertiesState extends RoutinesState {
  final List<Properties> property;
  const LoadPropertiesState( this.property );
  List<Object> get props => [property];

}

class LoadOptionAndTextItemState extends RoutinesState {
  final Properties property;
  const LoadOptionAndTextItemState(this.property);
  List<Object> get props => [property];

}

class LoadOptionSelectedItemState extends RoutinesState {
  const LoadOptionSelectedItemState();
}

class LoadToggleSelectedItemState extends RoutinesState {
  final Properties property;
  const LoadToggleSelectedItemState(this.property);
  List<Object> get props => [property];
}

class LoadTextFieldSelectedItemState extends RoutinesState {
  const LoadTextFieldSelectedItemState( );
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
