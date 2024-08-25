import 'package:femi_space_dashboard/features/dashboard/data/datasources/sample_bookmarks_datasource.dart';
import '../../domain/entities/bookmarks_entity.dart';
import '../../domain/repository/bookmark_repository.dart';


class BookmarkRepository implements IBookmarkRepository {
  final SampleDataSource sampleDataSource;


  BookmarkRepository(this.sampleDataSource);

  @override
  Future<List<Bookmarks>> getBookMarks() async {
    final bookMarksModel= sampleDataSource.sampleBookMarks;
    List<Bookmarks> bookMarks = bookMarksModel.map((model)=>model.toEntity()).toList();
    await Future.delayed(const Duration(seconds: 0));
    return bookMarks;
  }
}





