part of 'routines_bloc.dart';

abstract class RoutinesEvent extends Equatable {
  // final Routines routines;
  // const RoutinesEvent({required this.routines});
  const RoutinesEvent();

  @override
  List<Object> get props => [];
}

class GetRoutines extends RoutinesEvent {
  const GetRoutines();
}

class RemoveRoutines extends RoutinesEvent {
  final Routines routines;
  const RemoveRoutines({required this.routines});
}

class UpdateRoutines extends RoutinesEvent {
  final Routines routines;
  const UpdateRoutines({required this.routines});
}

class InsertRoutines extends RoutinesEvent {
  final Routines routines;
  const InsertRoutines({required this.routines});
}