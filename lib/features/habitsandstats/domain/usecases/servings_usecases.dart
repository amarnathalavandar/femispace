import '../entities/servings_entity.dart';
import '../repository/servings_repository.dart';

class GetServings {
  final IServingsRepository servingsRepository;

  GetServings(this.servingsRepository);

  Future<List<ServingsEntity>> call() {
    return servingsRepository.getServingsStats();
  }
}