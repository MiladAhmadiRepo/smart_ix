import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:smart_ix/src/domain/entities/routines/routines.dart';
import 'package:smart_ix/src/presentation/blocs/devices/devices_bloc.dart';
import '../../../core/utils/constants.dart';
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

  ///----------------------------------------------------------------------------------------------

  RoutinesBloc(
    this._getRoutinesUseCase,
    this._removeRoutinesUseCase,
    this._insertRoutinesUseCase,
    this._updateRoutinesUseCase,
    this._devicesBloc,
  ) : super(const RoutinesLoadingState()) {
    on<SetRoutineName>(_setRoutineNameEventToState);
    on<LoadPropertiesEvent>(_getPropertiesOfDevicesAndServicesEventToState);
    on<SelectPropertyEvent>(_getSelectPropertyEventToState);
    on<GetRoutines>(_getRoutinesEventToState);
    on<RemoveRoutines>(_removeRoutinesEventToState);
    on<UpdateRoutines>(_updateRoutinesEventToState);
    on<InsertRoutines>(_insertRoutinesEventToState);
  }

  ///----------------------------------------------------------------------------------------------

  String _username = '', _password = '', _routineName = '';
  List<Devices> _allDevicesAndServicesList = [];
  List<Properties> _allPropertiesList = [];

  //------------------------------------------------------
  Devices? _selectedWhenDevice;
  Properties? _selectedWhenProperty;
  String? _selectedWhenValue = null;
  String? _selectedWhenOption = null;
  int? _selectedWhenToggleButton = null;

  //------------------------------------------------------
  Devices? _selectedThenDevice;
  Properties? _selectedThenProperty;
  String? _selectedThenValue = null;
  String? _selectedThenOption = null;
  int? _selectedThenToggleButton = null;

  ///----------------------------------------------------------------------------------------------

  //set a name for a routine
  void _setRoutineNameEventToState(SetRoutineName event, Emitter<RoutinesState> emit) async {
    _routineName = event.routineName;
    emit(ShowRoutineNameState(_routineName));
  }

  //get properties and set the selected device or service
  void _getPropertiesOfDevicesAndServicesEventToState(
      LoadPropertiesEvent event, Emitter<RoutinesState> emit) {
    _selectedWhenProperty = null;
    _selectedWhenDevice = event.selectedDevicesAndServices;
    Properties onOrOffProperties = Properties(
        "onOff_${_selectedWhenDevice!.id!}", "On or Off", "bool", "false", [], "off", "on");
    _allPropertiesList.clear();
    _allPropertiesList = List.from(_selectedWhenDevice!.properties!);
    _allPropertiesList.addAll([onOrOffProperties]);
    emit(LoadPropertiesState(_allPropertiesList));
  }

  //get selected property and show a related view
  void _getSelectPropertyEventToState(SelectPropertyEvent event, Emitter<RoutinesState> emit) {
    _selectedWhenProperty = event.selectedProperty;
    if (_selectedWhenProperty!.typeOfValue!.contains("String") &&
        _selectedWhenProperty!.rang!.isNotEmpty) {
      emit(LoadToggleSelectedItemState(_selectedWhenProperty!));
    } else if (_selectedWhenProperty!.typeOfValue!.contains("String")) {
      emit(const LoadTextFieldSelectedItemState());
    } else if (_selectedWhenProperty!.typeOfValue!.contains("bool")) {
      emit(const LoadOptionSelectedItemState());
    } else {
      emit(LoadOptionAndTextItemState(_selectedWhenProperty!));
    }
  }

  //load all routines in listview
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

  ///-------------------------------------------------------------------------------------

  void clearRoutineData() {
    _selectedWhenDevice = null;
    _selectedWhenProperty = null;
    _selectedWhenOption = null;
    _selectedWhenValue = null;
    _selectedWhenToggleButton = null;
    //------------------------------------------
    _selectedThenDevice = null;
    _selectedThenProperty = null;
    _selectedThenOption = null;
    _selectedThenValue = null;
    _selectedThenToggleButton = null;
    //------------------------------------------
    _allDevicesAndServicesList = [];
    _allPropertiesList = [];
  }

  //set the username and password
  void setUsernameAndPassword(String username, String password) {
    _username = username;
    _password = password;
  }

  //load the routine Name
  String getRoutineName() {
    if (_routineName.isEmpty) {
      return enterRoutineNameString;
    } else {
      return _routineName;
    }
  }

  //load the devices and services
  List<Devices> getAllDevicesAndServices() {
    _allDevicesAndServicesList = [];
    _allDevicesAndServicesList =
        addServicesAsAMemberOfList(List.from(_devicesBloc.devicesInstance));
    return _allDevicesAndServicesList;
  }

  //load the properties
  List<Properties> getAllProperties() {
    return _allPropertiesList;
  }

  //selected the device base on loaded data or new routine state
  Devices getWhenSelectedDevicesOrServices() {
    return _selectedWhenDevice == null ? _allDevicesAndServicesList[0] : _selectedWhenDevice!;
  }

  //selected the Property base on loaded data or new routine state
  Properties getWhenSelectedProperty() {
    return _selectedWhenProperty == null ? _allPropertiesList[0] : _selectedWhenProperty!;
  }

  //selected the OnOff value base on loaded data or new routine state
  String getWhenOptionValue(String defaultValue) {
    return _selectedWhenOption == null ? defaultValue : _selectedWhenOption!;
  }

  //selected the whenValue base on loaded data or new routine state
  String getWhenValue() {
    return _selectedWhenValue == null ? "" : _selectedWhenValue!;
  }

  //selected the toggleButton base on loaded data or new routine state
  int getWhenToggleButton() {
    return _selectedWhenToggleButton == null ? 0 : _selectedWhenToggleButton!;
  }

  ///-------------------------------------------------------------------------------------
  //todo remove below lines and get services from webservices
  List<Devices> addServicesAsAMemberOfList(List<Devices> _listOfDevices) {
    List<Devices> listOfDevices = List.from(_listOfDevices);
    Devices newsMember = Devices('service27cd88786tyus02', 'News', "self", "1", true, []);
    listOfDevices.add(newsMember);
    Devices weatherMember = Devices('service27cd88786tyus01', 'Weather', "self", "1", false, []);
    listOfDevices.add(weatherMember);
    return listOfDevices;
  }
  ///----------------------------------------------------------------------------------------------

}
