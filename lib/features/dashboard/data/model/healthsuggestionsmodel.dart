import 'package:equatable/equatable.dart';
import 'package:femi_space_dashboard/features/dashboard/domain/entities/healthsuggestions_entity.dart';

class HealthSuggestionsModel extends Equatable {
  final String healthTitle;
  final String healthDesc;

  const HealthSuggestionsModel({
    required this.healthTitle,
    required this.healthDesc,
  });

  @override
  List<Object?> get props => [
    healthTitle,
    healthDesc,
  ];

  // Conversion from Entity to Model
  factory HealthSuggestionsModel.fromEntity(HealthSuggestions healthSuggestions)
  {
    return HealthSuggestionsModel(

        healthTitle: healthSuggestions.healthTitle,
        healthDesc: healthSuggestions.healthDesc

    );

  }
  // Conversion from Model to Entity
  HealthSuggestions toEntity() => HealthSuggestions(
      healthTitle:healthTitle,
      healthDesc:healthDesc
  );

}