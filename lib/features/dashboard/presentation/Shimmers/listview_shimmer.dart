import 'package:flutter/material.dart';

import '../../../../common/shimmers/shimmer_effect.dart';

class ListviewShimmer extends StatelessWidget {
  const ListviewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const FSShimmerEffect(
            width: 155,
            height: 100,
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 12),
      ),
    );
  }
}
