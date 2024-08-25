import 'package:equatable/equatable.dart';

import '../../domain/entities/servings_entity.dart';

class ServingsModel extends Equatable {

  final String habitName;
  final String completeStatus;
  final String percentage;
  final double progressPercent;
  final String servingsValue;
  final List<List<int>> servingList;
  final String avgValue;

  const ServingsModel({
    required this.habitName,
    required this.completeStatus,
    required this.percentage,
    required this.progressPercent,
    required  this.servingsValue,
    required  this.servingList,
    required  this.avgValue,
  });

  @override
  List<Object?> get props => [
  ];

  // Conversion from Entity to Model
  factory ServingsModel.fromEntity(ServingsModel servings)
  {
    return ServingsModel(
      avgValue: servings.avgValue,
      servingsValue: servings.servingsValue,
      servingList: servings.servingList,
      completeStatus: servings.completeStatus,
      habitName: servings.habitName,
      percentage: servings.percentage,
      progressPercent: servings.progressPercent
    );
  }
  // Conversion from Model to Entity
  ServingsEntity toEntity() => ServingsEntity(
    habitName: habitName,
    completeStatus:completeStatus,
    progressPercent: progressPercent,
    percentage: percentage,
    avgValue: avgValue,
    servingList: servingList,
    servingsValue: servingsValue
  );
}