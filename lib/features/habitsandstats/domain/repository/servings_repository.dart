
import '../entities/servings_entity.dart';

abstract class IServingsRepository {
  Future<List<ServingsEntity>> getServingsStats();
}
