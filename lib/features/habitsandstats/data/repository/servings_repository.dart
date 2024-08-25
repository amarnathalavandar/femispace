
import '../../domain/entities/servings_entity.dart';
import '../../domain/repository/servings_repository.dart';
import '../datasources/sample_servings_datasource.dart';


class ServingsRepository implements IServingsRepository {
  final SampleServingsDataSource sampleDataSource;


  ServingsRepository(this.sampleDataSource);

  @override
  Future<List<ServingsEntity>> getServingsStats() async {
   final servingsModel= sampleDataSource.sampleServings;
    List<ServingsEntity> servings = servingsModel.map((model)=>model.toEntity()).toList();
    await Future.delayed(const Duration(seconds: 0)); /// USED FOR DEV DEBUG .
    return servings;
  }
}





