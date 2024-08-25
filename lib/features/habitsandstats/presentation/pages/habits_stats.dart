import 'package:femi_space_dashboard/features/habitsandstats/presentation/pages/statistics/statistics_view.dart';
import 'package:femi_space_dashboard/utils/widgets/bottom_navigation_bar.dart';
import 'package:femi_space_dashboard/utils/widgets/habits_stats_app_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/horizontal_listview.dart';

class HabitsStatsScreen extends StatelessWidget {
  const HabitsStatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
        appBar:HabitsStatsAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),

            child: Column(children: [

              /// HORIZONTAL LIST VIEW
              HorizontalListHeader(text: 'Catalog', isSelected: false),
              SizedBox(height: 20,),

              /// STATISTICS
              StatisticsView(),
              ]
          ),
        ),),
    );

  }
}



