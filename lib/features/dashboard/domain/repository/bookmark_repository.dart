import '../entities/bookmarks_entity.dart';



abstract class IBookmarkRepository {
  Future<List<Bookmarks>> getBookMarks();
}
