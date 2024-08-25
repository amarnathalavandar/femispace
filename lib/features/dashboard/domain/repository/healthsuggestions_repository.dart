
import '../entities/healthsuggestions_entity.dart';

abstract class IHealthSuggestionsRepository {
  Future<List<HealthSuggestions>> getHealthSuggestions();
}
