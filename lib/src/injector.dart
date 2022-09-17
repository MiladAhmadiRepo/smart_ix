
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:smart_ix/src/domain/usecases/get_newses_usecase.dart';
import 'package:smart_ix/src/presentation/blocs/devices/devices_bloc.dart';
import 'package:smart_ix/src/presentation/blocs/home/home_bloc.dart';

import 'data/datasources/remote/devices_api_service.dart';
import 'data/datasources/remote/newses_api_service.dart';
import 'data/repositories/devices_repository_impl.dart';
import 'data/repositories/newses_repository_impl.dart';
import 'domain/repositories/devices_repository.dart';
import 'domain/repositories/newses_repository.dart';
import 'domain/usecases/get_devices_usecase.dart';
import 'presentation/blocs/newses/news_bloc.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  // Dio client
  injector.registerSingleton<Dio>(Dio());

  // Dependencies
  injector.registerSingleton<NewsApiService>(NewsApiService(injector()));
  injector.registerSingleton<DeviceApiService>(DeviceApiService(injector()));
  injector.registerSingleton<NewsesRepository>(NewsesRepositoryImpl(injector()));
  injector.registerSingleton<DevicesRepository>(DevicesRepositoryImpl(injector()));

  // UseCases
  injector.registerSingleton<GetNewsesUseCase>(GetNewsesUseCase(injector()));
  injector.registerSingleton<GetDevicesUseCase>(GetDevicesUseCase(injector()));

  // Blocs
  injector.registerFactory<NewsesBloc>(() => NewsesBloc(injector()));
  injector.registerFactory<DevicesBloc>(() => DevicesBloc(injector()));
  injector.registerFactory<HomeBloc>(() => HomeBloc());
}