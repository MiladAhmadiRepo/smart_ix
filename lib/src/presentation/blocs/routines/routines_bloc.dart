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
  final InsertRoutinesUseCase _insertRoutinesUseCase;
  final UpdateRoutinesUseCase _updateRoutinesUseCase;
  final DevicesBloc _devicesBloc;

  ///----------------------------------------------------------------------------------------------

  RoutinesBloc(
    this._getRoutinesUseCase,
    this._insertRoutinesUseCase,
    this._updateRoutinesUseCase,
    this._devicesBloc,
  ) : super(const RoutinesLoadingState()) {
    on<SetRoutineNameEvent>(_setRoutineNameEventToState);
    on<LoadPropertiesEvent>(_fillThePropertiesDropDownEventToState);
    on<SelectPropertyEvent>(_loadTheViewOfTheSelectPropertyEventToState);
    on<GetRoutinesEvent>(_getRoutinesEventToState);
    on<InsertOrUpdateRoutinesEvent>(_insertOrUpdateRoutinesEventToState);
    on<UpdateTheUiOfWhenSectionEvent>(_updateWhenSectionUiEventToState);
    on<UpdateTheUiOfThenSectionEvent>(_updateThenSectionUiEventToState);
  }

  ///----------------------------------------------------------------------------------------------
  String _stateOfRoutine = "Insert";
  String get stateOfRoutine => _stateOfRoutine;
  set stateOfRoutine(String value) {
    _stateOfRoutine = value;
  }
  Routines? _routineInstance ;
  Routines? get routineInstance => _routineInstance;
  set routineInstance(Routines? value) {
    _routineInstance = value;

    _routineName=_routineInstance!.name;

    _selectedWhenDevice=_routineInstance!.owner.when!.devices;
    _selectedWhenProperty=_routineInstance!.owner.when!.properties;
     _selectedWhenTextFieldValue = _routineInstance!.owner.when!.value;
    _selectedWhenOption = _routineInstance!.owner.when!.option;
    _selectedWhenToggleButton = _routineInstance!.owner.when!.toggle;

    _selectedThenDevice=_routineInstance!.owner.then!.devices;
    _selectedThenProperty=_routineInstance!.owner.then!.properties;
    _selectedThenTextFieldValue = _routineInstance!.owner.then!.value;
     _selectedThenOption = _routineInstance!.owner.then!.option;
     _selectedThenToggleButton = _routineInstance!.owner.then!.toggle;
  }
  List<Routines> routinesList = [];
  String _username = '', _password = '', _routineName = '';
  List<Devices> _allDevicesAndServicesList = [];
  List<Properties> _allPropertiesList = [];

  //------------------------------------------------------
  Devices? _selectedWhenDevice;
  Properties? _selectedWhenProperty;
  String? _selectedWhenTextFieldValue  ;
  String? _selectedWhenOption  ;
  int? _selectedWhenToggleButton  ;

  //------------------------------------------------------
  Devices? _selectedThenDevice;
  Properties? _selectedThenProperty;
  String? _selectedThenTextFieldValue  ;
  String? _selectedThenOption  ;
  int? _selectedThenToggleButton  ;

  ///----------------------------------------------------------------------------------------------

  //set a name for a routine
  void _setRoutineNameEventToState(SetRoutineNameEvent event, Emitter<RoutinesState> emit) async {
    _routineName = event.routineName;
    emit(ShowRoutineNameState(_routineName));
  }

  //fill the properties dropdown and set the selected device or service
  void _fillThePropertiesDropDownEventToState(
      LoadPropertiesEvent event, Emitter<RoutinesState> emit) {
    if(event.whenThen.contains("when"))
    {
      clearRoutineWhenData( );
     _selectedWhenDevice = event.selectedDevicesAndServices;
    }else{
      clearRoutineThenData( );
      _selectedThenDevice = event.selectedDevicesAndServices;
    }
    Properties onOrOffProperties = Properties("onOff_${event.selectedDevicesAndServices.id!}",
        "On or Off", "bool", "false", [], "off", "on");
    _allPropertiesList.clear();
    _allPropertiesList = List.from(event.selectedDevicesAndServices.properties!);
    _allPropertiesList.addAll([onOrOffProperties]);
    emit(LoadPropertiesState(_allPropertiesList));
  }

  //load the view of selected property
  void _loadTheViewOfTheSelectPropertyEventToState(SelectPropertyEvent event, Emitter<RoutinesState> emit) {
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

  //load all routines in listview by filter section
  void _getRoutinesEventToState(GetRoutinesEvent event, Emitter<RoutinesState> emit) async {
    emit(RoutinesLoadingState());
    List<Routines> tempRoutinesList = [];
    routinesList = await _getRoutinesUseCase();
    tempRoutinesList=List.from(routinesList);
     if (event.filterName.isNotEmpty) {
      tempRoutinesList = runFilter(event.filterName, tempRoutinesList);
    }
    emit(RoutinesDoneState(tempRoutinesList));
  }

  void _insertOrUpdateRoutinesEventToState(InsertOrUpdateRoutinesEvent event, Emitter<RoutinesState> emit) async {
    When when = When(_selectedWhenDevice, _selectedWhenProperty, _selectedWhenTextFieldValue,
        _selectedWhenOption, _selectedWhenToggleButton);
    Then then = Then(_selectedThenDevice, _selectedThenProperty, _selectedThenTextFieldValue,
        _selectedThenOption, _selectedThenToggleButton);
    OwnerRoutine ownerRoutine = OwnerRoutine(_username, when, then);
    //checking, is it a insert state or update state?
    if(stateOfRoutine.contains("Insert")) {
      Routines routines = Routines(null, _routineName, ownerRoutine);
      await _insertRoutinesUseCase(params: routines);
    }else{
      Routines routines = Routines(_routineInstance!.id, _routineName, ownerRoutine);
      await _updateRoutinesUseCase(params: routines);
    }
  }

  void _updateWhenSectionUiEventToState(UpdateTheUiOfWhenSectionEvent event, Emitter<RoutinesState> emit) {
    When when = When(_selectedWhenDevice, _selectedWhenProperty, _selectedWhenTextFieldValue,
        _selectedWhenOption, _selectedWhenToggleButton);
    emit(UpdateWhenSectionState(_selectedWhenDevice!.name!, _selectedWhenProperty!.name!));
  }

  void _updateThenSectionUiEventToState(UpdateTheUiOfThenSectionEvent event, Emitter<RoutinesState> emit){
    Then then = Then(_selectedThenDevice, _selectedThenProperty, _selectedThenTextFieldValue,
        _selectedThenOption, _selectedThenToggleButton);
    emit(UpdateThenSectionState(_selectedThenDevice!.name!, _selectedThenProperty!.name!));
  }
  ///-------------------------------------------------------------------------------------

  void clearRoutineWhenData() {
      _selectedWhenDevice = null;
      _selectedWhenProperty = null;
      _selectedWhenOption = null;
      _selectedWhenTextFieldValue = null;
      _selectedWhenToggleButton = null;
  }

  void clearRoutineThenData() {
      _selectedThenDevice = null;
      _selectedThenProperty = null;
      _selectedThenOption = null;
      _selectedThenTextFieldValue = null;
      _selectedThenToggleButton = null;

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
            ? _selectedWhenDevice=_allDevicesAndServicesList[0]
            : _selectedWhenDevice!
        : _selectedThenDevice == null
            ? _selectedThenDevice=_allDevicesAndServicesList[0]
            : _selectedThenDevice!;
  }

  //get the selected Property ,based on the loaded data or a new routine state
  Properties getWhenOrThenSelectedProperty(String whenThen) {
    return whenThen == "when"
        ? _selectedWhenProperty == null
            ? _selectedWhenProperty=_allPropertiesList[0]
            : _selectedWhenProperty!
        : _selectedThenProperty == null
            ? _selectedThenProperty=_allPropertiesList[0]
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
            ? _selectedWhenOption=defaultValue
            : _selectedWhenOption!
        : _selectedThenOption == null
            ? _selectedThenOption=defaultValue
            : _selectedThenOption!;
  }

  //get the selected Textfield Value ,based on the loaded data or a new routine state
  String getWhenOrThenTextFieldValue(String whenThen) {
    return whenThen == "when"
        ? _selectedWhenTextFieldValue == null
            ? _selectedWhenTextFieldValue=""
            : _selectedWhenTextFieldValue!
        : _selectedThenTextFieldValue == null
            ? _selectedThenTextFieldValue=""
            : _selectedThenTextFieldValue!;
  }

  //get the selected toggleButton ,based on the loaded data or a new routine state
  int getWhenOrThenToggleButton(String whenThen) {
    return whenThen == "when"
        ? _selectedWhenToggleButton == null
            ? _selectedWhenToggleButton=0
            : _selectedWhenToggleButton!
        : _selectedThenToggleButton == null
            ? _selectedThenToggleButton=0
            : _selectedThenToggleButton!;
  }

  //set the value of options ex/:(on / off)
  String setWhenOrThenOptionValue(String value, String whenThen) {
    return whenThen == "when" ? _selectedWhenOption = value : _selectedThenOption = value;
  }

  //set the value of the Textfield
  String setWhenOrThenValue(String value, String whenThen) {
    return whenThen == "when" ? _selectedWhenTextFieldValue = value : _selectedThenTextFieldValue = value;
  }

  //set the value of the toggle Button
  int setWhenOrThenToggleButton(int value, String whenThen) {
    return whenThen == "when"
        ? _selectedWhenToggleButton = value
        : _selectedThenToggleButton = value;
  }

  String getTheNameOfSelectedDeviceInWhenSection(){
    return _selectedWhenDevice==null?whenThisHappensString:_selectedWhenDevice!.name!;
  }

  String getTheNameOfSelectedDeviceInThenSection(){
    return _selectedThenDevice==null?thenAddActionString:_selectedThenDevice!.name!;
  }

  String getTheNameOfSelectedPropertyInWhenSection(){
    return _selectedWhenProperty==null?whenExampleString:_selectedWhenProperty!.name!;
  }

  String getTheNameOfSelectedPropertyInThenSection(){
    return _selectedThenProperty==null?thenExampleString:_selectedThenProperty!.name!;
  }

  bool accessPermissionCheck()
  {
    return _routineInstance!.owner.userId==_username;
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
