part of 'routines_bloc.dart';

abstract class RoutinesEvent extends Equatable {
  // final Routines routines;
  // const RoutinesEvent({required this.routines});
  const RoutinesEvent();

  @override
  List<Object> get props => [];
}

class SetRoutineName extends RoutinesEvent {
  final String routineName;
  const SetRoutineName({required this.routineName});
  @override
  List<Object> get props => [routineName];
}

class LoadPropertiesEvent extends RoutinesEvent {
  final Devices selectedDevicesAndServices;
  final String whenThen;
  const LoadPropertiesEvent( this.selectedDevicesAndServices,this.whenThen);
  @override
  List<Object> get props => [selectedDevicesAndServices,whenThen];
}

class SelectPropertyEvent extends RoutinesEvent {
  final Properties selectedProperty;
  final String whenThen;
  const SelectPropertyEvent( this.selectedProperty,this.whenThen);
  @override
  List<Object> get props => [selectedProperty,whenThen];
}

class GetRoutines extends RoutinesEvent {
  const GetRoutines();
}

class RemoveRoutines extends RoutinesEvent {
  final Routines routines;
  const RemoveRoutines({required this.routines});
  @override
  List<Object> get props => [routines];
}

class UpdateRoutines extends RoutinesEvent {
  final Routines routines;
  const UpdateRoutines({required this.routines});
  @override
  List<Object> get props => [routines];
}

class InsertRoutines extends RoutinesEvent {
  final Routines routines;
  const InsertRoutines({required this.routines});
  @override
  List<Object> get props => [routines];
}