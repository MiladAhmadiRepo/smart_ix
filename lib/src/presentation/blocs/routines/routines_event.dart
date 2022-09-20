part of 'routines_bloc.dart';

abstract class RoutinesEvent extends Equatable {
  // final Routines routines;
  // const RoutinesEvent({required this.routines});
  const RoutinesEvent();

  @override
  List<Object> get props => [];
}

class SetRoutineNameEvent extends RoutinesEvent {
  final String routineName;
  const SetRoutineNameEvent({required this.routineName});
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

class GetRoutinesEvent extends RoutinesEvent {
   final String filterName;
  const GetRoutinesEvent(this.filterName);
  @override
  List<Object> get props => [filterName];
}

class RemoveRoutinesEvent extends RoutinesEvent {
  final Routines routines;
  const RemoveRoutinesEvent({required this.routines});
  @override
  List<Object> get props => [routines];
}

class UpdateRoutinesEvent extends RoutinesEvent {
  final Routines routines;
  const UpdateRoutinesEvent({required this.routines});
  @override
  List<Object> get props => [routines];
}

class InsertOrUpdateRoutinesEvent extends RoutinesEvent {
  const InsertOrUpdateRoutinesEvent();
}

class UpdateTheUiOfWhenSectionEvent extends RoutinesEvent {
  const UpdateTheUiOfWhenSectionEvent();
}

class UpdateTheUiOfThenSectionEvent extends RoutinesEvent {
  const UpdateTheUiOfThenSectionEvent();
}