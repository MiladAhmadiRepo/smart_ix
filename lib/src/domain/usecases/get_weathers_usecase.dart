import 'package:smart_ix/src/core/params/news_request.dart';
import 'package:smart_ix/src/core/resources/data_state.dart';
import 'package:smart_ix/src/core/usecases/usecase.dart';
import 'package:smart_ix/src/domain/entities/newses/newses.dart';
import 'package:smart_ix/src/domain/repositories/newses_repository.dart';

import '../../core/params/weather_request.dart';
import '../entities/weathers/weathers.dart';
import '../repositories/weathers_repository.dart';

class GetWeathersUseCase implements UseCase<DataState<Weathers>, WeatherRequestParams> {
  final WeathersRepository _weathersRepository;

  GetWeathersUseCase(this._weathersRepository);

  @override
  Future<DataState<Weathers>> call({required WeatherRequestParams params}) {
    return _weathersRepository.getWeatherWebService(params);
  }
}
