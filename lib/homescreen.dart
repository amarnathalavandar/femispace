import 'package:femi_space_dashboard/features/habitsandstats/presentation/pages/habits_stats.dart';
import 'package:femi_space_dashboard/features/search/presentation/pages/search.dart';
import 'package:femi_space_dashboard/utils/providers/providers.dart';
import 'package:femi_space_dashboard/utils/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //print("BUILDING WHOLE PAGE - CHECK POINT");
    return Scaffold(
        //appBar: const HabitsStatsAppBar(),
        body: Consumer(
          builder: (context, ref, child) {
            //print('BUILDING STACK ONLY  - CHECK POINT');
            final currentIndex = ref.watch(bottomNavIndexProvider);
            return IndexedStack(
              index: currentIndex,
              children:  [
                const HabitsStatsScreen(),
                const SearchScreen(),
                Center(
                  child: Text('CHAT > COMING SOON..',style: Theme.of(context).textTheme.bodyLarge,),
                ),
                Center(
                    child: Text('BOOKMARK > COMING SOON..',style: Theme.of(context).textTheme.bodyLarge,),
                ),
                Center(
                    child: Text('SETTINGS > COMING SOON..',style: Theme.of(context).textTheme.bodyLarge,),
                )
              ],
            );
          },
        ),
        bottomNavigationBar: Consumer(
          builder: (context, ref, child) {
           return const FSBottomNavigationBar();
          },
        )
    );
  }
}