import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:smart_ix/src/domain/usecases/get_newses_usecase.dart';
import 'package:smart_ix/src/domain/usecases/routines/get_routines_usecase.dart';
import 'package:smart_ix/src/domain/usecases/routines/insert_routines_usecase.dart';
import 'package:smart_ix/src/domain/usecases/routines/remove_routines_usecase.dart';
import 'package:smart_ix/src/domain/usecases/routines/update_routines_usecase.dart';
import 'package:smart_ix/src/presentation/blocs/devices/devices_bloc.dart';
import 'package:smart_ix/src/presentation/blocs/home/home_bloc.dart';
import 'package:smart_ix/src/presentation/blocs/routines/routines_bloc.dart';
import 'core/utils/constants.dart';
import 'data/datasources/local/app_database.dart';
import 'data/datasources/remote/devices_api_service.dart';
import 'data/datasources/remote/newses_api_service.dart';
import 'data/repositories/devices_repository_impl.dart';
import 'data/repositories/newses_repository_impl.dart';
import 'data/repositories/routines_repository_impl.dart';
import 'domain/repositories/devices_repository.dart';
import 'domain/repositories/newses_repository.dart';
import 'domain/repositories/routines_repository.dart';
import 'domain/usecases/get_devices_usecase.dart';
import 'presentation/blocs/newses/news_bloc.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  //database
  final database = await $FloorAppDatabase.databaseBuilder(kDatabaseName).build();
  injector.registerSingleton<AppDatabase>(database);
  // SharedPreferences database = await SharedPreferences.getInstance();
  // injector.registerSingleton<SharedPreferences>(database);
  // injector.registerSingleton<RoutinesDao>(RoutinesDao());

  // Dio client
  injector.registerSingleton<Dio>(Dio());

  // Dependencies
  injector.registerSingleton<NewsApiService>(NewsApiService(injector()));
  injector.registerSingleton<DeviceApiService>(DeviceApiService(injector()));
  injector.registerSingleton<NewsesRepository>(NewsesRepositoryImpl(injector()));
  injector.registerSingleton<DevicesRepository>(DevicesRepositoryImpl(injector()));
  injector.registerSingleton<RoutinesRepository>(RoutinesRepositoryImpl(injector()));

  // UseCases
  injector.registerSingleton<GetNewsesUseCase>(GetNewsesUseCase(injector()));
  injector.registerSingleton<GetDevicesUseCase>(GetDevicesUseCase(injector()));

  // Database UseCases
  injector.registerSingleton<GetRoutinesUseCase>(GetRoutinesUseCase(injector()));
  injector.registerSingleton<RemoveRoutinesUseCase>(RemoveRoutinesUseCase(injector()));
  injector.registerSingleton<InsertRoutinesUseCase>(InsertRoutinesUseCase(injector()));
  injector.registerSingleton<UpdateRoutinesUseCase>(UpdateRoutinesUseCase(injector()));

  // Blocs
  injector.registerFactory<NewsesBloc>(() => NewsesBloc(injector()));
  // injector.registerFactory<DevicesBloc>(() => DevicesBloc(injector()));
  injector.registerSingleton<DevicesBloc>(DevicesBloc(injector()));
  injector.registerFactory<RoutinesBloc>(
      () => RoutinesBloc(injector(), injector(), injector(),   injector()));
  injector.registerFactory<HomeBloc>(() => HomeBloc());
}
