import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:smart_ix/src/domain/entities/routines/owner_routine.dart';
import 'package:smart_ix/src/domain/entities/routines/routines.dart';
import 'package:smart_ix/src/domain/entities/routines/when.dart';
import 'package:smart_ix/src/presentation/blocs/devices/devices_bloc.dart';
import '../../../core/utils/constants.dart';
import '../../../core/utils/utils.dart';
import '../../../domain/entities/devices/devices.dart';
import '../../../domain/entities/devices/properties.dart';
import '../../../domain/entities/routines/then.dart';
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
  List<Routines> routinesList = [];
  Routines? routine ;
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
    clearRoutineData(event.whenThen);
    event.whenThen.contains("when")
        ? _selectedWhenDevice = event.selectedDevicesAndServices
        : _selectedThenDevice = event.selectedDevicesAndServices;
    Properties onOrOffProperties = Properties("onOff_${event.selectedDevicesAndServices.id!}",
        "On or Off", "bool", "false", [], "off", "on");
    _allPropertiesList.clear();
    _allPropertiesList = List.from(event.selectedDevicesAndServices.properties!);
    _allPropertiesList.addAll([onOrOffProperties]);
    emit(LoadPropertiesState(_allPropertiesList));
  }

  //get selected property and show a related view
  void _getSelectPropertyEventToState(SelectPropertyEvent event, Emitter<RoutinesState> emit) {
    event.whenThen.contains("when")
        ? _selectedWhenProperty = event.selectedProperty
        : _selectedThenProperty = event.selectedProperty;
    if (event.selectedProperty.typeOfValue!.contains("String") &&
        event.selectedProperty.rang!.isNotEmpty) {
      emit(LoadToggleSelectedItemState(event.selectedProperty));
    } else if (event.selectedProperty.typeOfValue!.contains("String")) {
      emit(const LoadTextFieldSelectedItemState());
    } else if (event.selectedProperty.typeOfValue!.contains("bool")) {
      emit(const LoadOptionSelectedItemState());
    } else {
      emit(LoadOptionAndTextItemState(event.selectedProperty));
    }
  }

  //load all routines in listview
  void _getRoutinesEventToState(GetRoutines event, Emitter<RoutinesState> emit) async {
    emit(RoutinesLoadingState());
    if (routinesList.isNotEmpty) {
      routinesList = runFilter(event.filterName, routinesList);
    } else {
      routinesList = await _getRoutinesUseCase();
    }
    emit(RoutinesDoneState(routinesList));
  }

  void _removeRoutinesEventToState(RemoveRoutines event, Emitter<RoutinesState> emit) async {
    await _removeRoutinesUseCase(params: event.routines);
  }

  void _updateRoutinesEventToState(UpdateRoutines event, Emitter<RoutinesState> emit) async {
    await _updateRoutinesUseCase(params: event.routines);
  }

  void _insertRoutinesEventToState(InsertRoutines event, Emitter<RoutinesState> emit) async {
    When when = When(_selectedWhenDevice, _selectedWhenProperty, _selectedWhenValue,
        _selectedWhenOption, _selectedWhenToggleButton);
    Then then = Then(_selectedThenDevice, _selectedThenProperty, _selectedThenValue,
        _selectedThenOption, _selectedThenToggleButton);
    OwnerRoutine ownerRoutine = OwnerRoutine(_username, when, then);
    Routines routines = Routines(null, _routineName, ownerRoutine);
    await _insertRoutinesUseCase(params: routines);
  }

  ///-------------------------------------------------------------------------------------

  void clearRoutineData(String whenThen) {
    if (whenThen.contains("when")) {
      _selectedWhenDevice = null;
      _selectedWhenProperty = null;
      _selectedWhenOption = null;
      _selectedWhenValue = null;
      _selectedWhenToggleButton = null;
    } else {
      _selectedThenDevice = null;
      _selectedThenProperty = null;
      _selectedThenOption = null;
      _selectedThenValue = null;
      _selectedThenToggleButton = null;
    }
  }

  //set the username and password
  void setUsernameAndPassword(String username, String password) {
    _username = username;
    _password = password;
  }

  //load the routine name
  String getRoutineName() {
    return _routineName.isEmpty ? enterRoutineNameString : _routineName;
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

  //get the selected device ,based on the loaded data or a new routine state
  Devices getWhenOrThenSelectedDevicesOrServices(String whenThen) {
    return whenThen == "when"
        ? _selectedWhenDevice == null
            ? _allDevicesAndServicesList[0]
            : _selectedWhenDevice!
        : _selectedThenDevice == null
            ? _allDevicesAndServicesList[0]
            : _selectedThenDevice!;
  }

  //get the selected Property ,based on the loaded data or a new routine state
  Properties getWhenOrThenSelectedProperty(String whenThen) {
    return whenThen == "when"
        ? _selectedWhenProperty == null
            ? _allPropertiesList[0]
            : _selectedWhenProperty!
        : _selectedThenProperty == null
            ? _allPropertiesList[0]
            : _selectedThenProperty!;
  }

  //get the selected option ex/:(on / off) ,based on the loaded data or a new routine state
  String getWhenOrThenOptionValue(String defaultValue, dynamic enumValues, String whenThen) {
    try {
      enumValues.values.byName(defaultValue);
    } catch (_) {
      return defaultValue;
    }
    return whenThen == "when"
        ? _selectedWhenOption == null
            ? defaultValue
            : _selectedWhenOption!
        : _selectedThenOption == null
            ? defaultValue
            : _selectedThenOption!;
  }

  //get the selected Textfield Value ,based on the loaded data or a new routine state
  String getWhenOrThenValue(String whenThen) {
    return whenThen == "when"
        ? _selectedWhenValue == null
            ? ""
            : _selectedWhenValue!
        : _selectedThenValue == null
            ? ""
            : _selectedThenValue!;
  }

  //get the selected toggleButton ,based on the loaded data or a new routine state
  int getWhenOrThenToggleButton(String whenThen) {
    return whenThen == "when"
        ? _selectedWhenToggleButton == null
            ? 0
            : _selectedWhenToggleButton!
        : _selectedThenToggleButton == null
            ? 0
            : _selectedThenToggleButton!;
  }

  //set the value of options ex/:(on / off)
  String setWhenOrThenOptionValue(String value, String whenThen) {
    return whenThen == "when" ? _selectedWhenOption = value : _selectedThenOption = value;
  }

  //set the value of the Textfield
  String setWhenOrThenValue(String value, String whenThen) {
    return whenThen == "when" ? _selectedWhenValue = value : _selectedThenValue = value;
  }

  //set the value of the toggle Button
  int setWhenOrThenToggleButton(int value, String whenThen) {
    return whenThen == "when"
        ? _selectedWhenToggleButton = value
        : _selectedThenToggleButton = value;
  }

  // check to find out : are they filled items in the whenSection or thenSection?
  // bool checkFillItemInWhenOrThenSection(String whenThen, String typeOfProperty) {
  //   bool stateWhenThen = false;
  //   whenThen == "when"
  //       ? stateWhenThen = _selectedWhenDevice != null && _selectedWhenProperty != null
  //       : stateWhenThen = _selectedThenDevice != null && _selectedThenProperty != null;
  //
  // if(typeOfProperty.contains("OptionAndTextSelectedItem")||typeOfProperty.contains("TextFieldSelectedItem")) {
  //   whenThen == "when"?
  //     stateWhenThen = stateWhenThen && ((_selectedWhenValue?.isNotEmpty) ?? false):
  //     stateWhenThen = stateWhenThen && ((_selectedThenValue?.isNotEmpty) ?? false);
  // }
  //   return stateWhenThen;
  // }

  //number validation for number text

  void submitWhenSection() {
    When when = When(_selectedWhenDevice, _selectedWhenProperty, _selectedWhenValue,
        _selectedWhenOption, _selectedWhenToggleButton);
  }

  void submitThenSection() {
    Then then = Then(_selectedThenDevice, _selectedThenProperty, _selectedThenValue,
        _selectedThenOption, _selectedThenToggleButton);
  }

  Routines? getRoutine() {
    return routine;
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
