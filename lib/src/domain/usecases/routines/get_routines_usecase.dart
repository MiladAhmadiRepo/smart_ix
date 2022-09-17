import 'package:smart_ix/src/core/usecases/usecase.dart';

import '../../entities/routines/routines.dart';
import '../../repositories/routines_repository.dart';

class GetRoutinesUseCase implements UseCase<List<Routines>, void> {
  final RoutinesRepository _routinesRepository;

  GetRoutinesUseCase(this._routinesRepository);

  @override
  Future<List<Routines>> call({void params}) {
    return _routinesRepository.getRoutines();
  }
}
