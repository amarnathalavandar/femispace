import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/datasources/sample_bookmarks_datasource.dart';
import '../../data/repository/bookmark_repository_impl.dart';
import '../../domain/entities/bookmarks_entity.dart';

final dataSourceProvider = Provider<SampleDataSource>((ref) {
  return SampleDataSource();
});

final bookMarkProvider=Provider<BookmarkRepository>((ref)
{
  final localDataSource = ref.read(dataSourceProvider);
  return BookmarkRepository(localDataSource);
});

final bookmarkDataProvider = FutureProvider<List<Bookmarks>>((ref) async {
  return ref.watch(bookMarkProvider).getBookMarks();
});