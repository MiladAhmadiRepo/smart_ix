import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:smart_ix/src/domain/entities/routines/routines.dart';
import 'package:smart_ix/src/presentation/blocs/devices/devices_bloc.dart';
import '../../../core/resources/data_state.dart';
import '../../../domain/entities/devices/devices.dart';
import '../../../domain/entities/devices/properties.dart';
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
  final DevicesBloc _devicesBloc;

  RoutinesBloc(
    this._getRoutinesUseCase,
    this._removeRoutinesUseCase,
    this._insertRoutinesUseCase,
    this._updateRoutinesUseCase,
    this._devicesBloc,
  ) : super(RoutinesLoading()) {
    on<SetRoutineName>(_setRoutineNameEventToState);
    on<PrepareListOfDevicesAndServicesEvent>(_prepareListOfDevicesAndServices);
    on<LoadPropertiesEvent>(_getDevicesAndServicesProperties);
    on<GetRoutines>(_getRoutinesEventToState);
    on<RemoveRoutines>(_removeRoutinesEventToState);
    on<UpdateRoutines>(_updateRoutinesEventToState);
    on<InsertRoutines>(_insertRoutinesEventToState);
  }

  late Routines _routines;
  String _routineName = "";
  Map<String, String> _mapIdAndName = {};
  Map<String, List<Properties>> _mapIdAndProperties = {};

  void _setRoutineNameEventToState(SetRoutineName event, Emitter<RoutinesState> emit) async {
    _routineName = event.routineName;
  }

  void _prepareListOfDevicesAndServices(
      PrepareListOfDevicesAndServicesEvent event, Emitter<RoutinesState> emit) async {
    emit(const RoutinesLoading());
    List<String> devicesAndServicesNames = []..clear();
    List<String> devicesAndServicesId = []..clear();
    List<List<Properties>> devicesAndServicesProperties = []..clear();
    for (var element in _devicesBloc.devicesInstance) {
      Properties onOrOffProperties = Properties("onOff_${element.id!}", "On or Off", "bool",
          element.activityState.toString(), [], "off", "on");
      devicesAndServicesNames.add(element.name!);
      devicesAndServicesId.add(element.id!);
      devicesAndServicesProperties.add([onOrOffProperties] + element.properties!);
    }
    //todo remove below lines and get services name from webservices
    //todo -------------------------------------------------------------
    devicesAndServicesNames.add('News');
    devicesAndServicesId.add('service27cd88786tyus02');
    Properties onOrOffNewsProperties =
        Properties("onOff_service27cd88786tyus02", "On or Off", "bool", "true", [], "off", "on");
    devicesAndServicesProperties.add([onOrOffNewsProperties]);
    devicesAndServicesNames.add('Weather');
    devicesAndServicesId.add('service27cd88786tyus01');
    Properties onOrOffWeatherProperties =
        Properties("onOff_service27cd88786tyus01", "On or Off", "bool", "false", [], "off", "on");
    devicesAndServicesProperties.add([onOrOffWeatherProperties]);
    //todo -------------------------------------------------------------
    _mapIdAndName = Map.fromIterables(devicesAndServicesId, devicesAndServicesNames);
    _mapIdAndProperties = Map.fromIterables(devicesAndServicesId, devicesAndServicesProperties);
    emit(const PrepareListOfDevicesAndServicesState());
  }

  List<Devices> getDevicesAndServices() {
    return _devicesBloc.devicesInstance;
  }

  List<String> getDevicesAndServicesNames() {
    return _mapIdAndName.values.toList();
  }

  void _getDevicesAndServicesProperties(LoadPropertiesEvent event, Emitter<RoutinesState> emit){
    if(_mapIdAndProperties[event.devicesAndServicesId]!.isEmpty) {
      emit(const RoutinesShowNothing());
    } else {
      emit(  LoadPropertiesState(_mapIdAndProperties[event.devicesAndServicesId]!));
    }
  }

  void _getRoutinesEventToState(GetRoutines event, Emitter<RoutinesState> emit) async {
    final routines = await _getRoutinesUseCase();
  }

  void _removeRoutinesEventToState(RemoveRoutines event, Emitter<RoutinesState> emit) async {
    await _removeRoutinesUseCase(params: event.routines);
  }

  void _updateRoutinesEventToState(UpdateRoutines event, Emitter<RoutinesState> emit) async {
    await _updateRoutinesUseCase(params: event.routines);
  }

  void _insertRoutinesEventToState(InsertRoutines event, Emitter<RoutinesState> emit) async {
    await _insertRoutinesUseCase(params: event.routines);
  }
}
