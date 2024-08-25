import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/datasources/sample_bookmarks_datasource.dart';
import '../../data/repository/healthsuggestions_repository_impl.dart';
import '../../domain/entities/healthsuggestions_entity.dart';



final dataSourceProvider = Provider<SampleDataSource>((ref) {
  return SampleDataSource();
});

final healthSuggestionsProvider=Provider<HealthsuggestionsRepository>((ref)
{
  final localDataSource = ref.read(dataSourceProvider);
  return HealthsuggestionsRepository(localDataSource);
});

final healthSuggestionsDataProvider = FutureProvider<List<HealthSuggestions>>((ref) async {
  return ref.watch(healthSuggestionsProvider).getHealthSuggestions();
});

