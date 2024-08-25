import 'package:flutter/material.dart';
import '../model/bookmarksmodel.dart';
import '../model/healthsuggestionsmodel.dart';

class SampleDataSource{



  final sampleBookMarks = [
    const BookmarksModel(
        iconName: Icons.dashboard_customize_sharp,
        bookMarkName: 'Total Health \n dashboards',
        colorName: Colors.purpleAccent
    ),
    BookmarksModel(
        iconName: Icons.local_restaurant_rounded,
        bookMarkName: 'Nutrition',
        colorName: Colors.pink.shade300
    ),
     BookmarksModel(
        iconName: Icons.directions_bike_outlined,
        bookMarkName: 'Cycle',
        colorName: Colors.purple.shade800
    ),
    BookmarksModel(
        iconName: Icons.directions_run_outlined,
        bookMarkName: 'Exercises & \nMindfulness',
        colorName: Colors.deepPurpleAccent.shade100
    ),
    BookmarksModel(
        iconName: Icons.medication,
        bookMarkName: 'Medication',
        colorName: Colors.blueAccent.shade200
    ),
    BookmarksModel(
        iconName:Icons.biotech_outlined,
        bookMarkName: 'Biomarkers',
        colorName: Colors.greenAccent.shade200
    ),
  ];


  final sampleHealthSuggestions = [
    const HealthSuggestionsModel(
      healthTitle: 'Brain & Mental Health',
      healthDesc: 'Comprehensive guides\n on managing stress\n anxiety, and depression',
    ),
    const HealthSuggestionsModel(
      healthTitle: 'Body Health',
      healthDesc: 'Complete Nutrition \n guide & video sessions',
    ),
    const HealthSuggestionsModel(
      healthTitle: 'Cardio Health',
      healthDesc: 'Follow these guides \n and audio to keep your \n heart healthy',
    ),
  ];
}