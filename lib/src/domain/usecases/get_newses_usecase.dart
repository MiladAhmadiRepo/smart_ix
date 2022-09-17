import 'package:smart_ix/src/core/params/news_request.dart';
import 'package:smart_ix/src/core/resources/data_state.dart';
import 'package:smart_ix/src/core/usecases/usecase.dart';
import 'package:smart_ix/src/domain/entities/newses/newses.dart';
import 'package:smart_ix/src/domain/repositories/newses_repository.dart';

class GetNewsesUseCase implements UseCase<DataState<Newses>, NewsRequestParams> {
  final NewsesRepository _newsesRepository;

  GetNewsesUseCase(this._newsesRepository);

  @override
  Future<DataState<Newses>> call({required NewsRequestParams params}) {
    return _newsesRepository.getNewsWebService(params);
  }
}
