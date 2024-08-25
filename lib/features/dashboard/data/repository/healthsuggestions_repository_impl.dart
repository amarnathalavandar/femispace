import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/healthsuggestions_entity.dart';
import '../../domain/repository/healthsuggestions_repository.dart';
import '../datasources/sample_bookmarks_datasource.dart';

class HealthsuggestionsRepository implements IHealthSuggestionsRepository{

  final SampleDataSource sampleDataSource;

  HealthsuggestionsRepository(this.sampleDataSource);

  @override
  Future<List<HealthSuggestions>> getHealthSuggestions() async {
    await Future.delayed(const Duration(seconds: 2));
    final healthSuggestionsModel=sampleDataSource.sampleHealthSuggestions;
    List<HealthSuggestions> healthSuggestions=
        healthSuggestionsModel.map((model)=>model.toEntity()).toList();
    return healthSuggestions;
  }

}
late final SampleDataSource sampleDataSource;

final healthSuggestionsProvider=Provider<HealthsuggestionsRepository>((ref)=>
    HealthsuggestionsRepository(sampleDataSource));



