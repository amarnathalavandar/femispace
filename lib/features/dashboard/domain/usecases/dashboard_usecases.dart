import 'package:femi_space_dashboard/features/dashboard/domain/entities/bookmarks_entity.dart';

import 'package:femi_space_dashboard/features/dashboard/domain/repository/bookmark_repository.dart';
import 'package:femi_space_dashboard/features/dashboard/domain/repository/healthsuggestions_repository.dart';

import '../entities/healthsuggestions_entity.dart';


class GetBookMarks {
  final IBookmarkRepository bookmarkRepository;

  GetBookMarks(this.bookmarkRepository);

  Future<List<Bookmarks>> call() {
   return bookmarkRepository.getBookMarks();
 }
}

class GetHealthSuggestions {
  final IHealthSuggestionsRepository healthSuggestionsRepository;

  GetHealthSuggestions(this.healthSuggestionsRepository);

  Future<List<HealthSuggestions>> call() {
    return healthSuggestionsRepository.getHealthSuggestions();
  }
}