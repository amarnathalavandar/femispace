import 'package:flutter/material.dart';

import '../../../../utils/widgets/bottom_navigation_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text('COMING SOON!! FROM \n   SEPARATE SEARCH SCREEN',style: Theme.of(context).textTheme.bodyLarge),
      ),
    );
  }
}
