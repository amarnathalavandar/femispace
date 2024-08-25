import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/datasources/sample_servings_datasource.dart';
import '../../data/repository/servings_repository.dart';
import '../../domain/entities/servings_entity.dart';

final dataSourceProvider = Provider<SampleServingsDataSource>((ref) {
  return SampleServingsDataSource();
});

final servingsProvider=Provider<ServingsRepository>((ref)
{
  final localDataSource = ref.read(dataSourceProvider);
  return ServingsRepository(localDataSource);
});

final servingsDataProvider = FutureProvider<List<ServingsEntity>>((ref) async {
  return ref.watch(servingsProvider).getServingsStats();
});