import 'package:femi_space_dashboard/common/layouts/grid_layout.dart';
import 'package:flutter/material.dart';
import '../../../../common/shimmers/shimmer_effect.dart';

class GridShimmer extends StatelessWidget {
  const GridShimmer({
    super.key,
    this.itemCount = 6,
  });

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return FSGridLayout(
      itemCount: itemCount,
      itemBuilder: (_, __) => const SizedBox(
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Image
            FSShimmerEffect(width: 180, height: 180),
            SizedBox(height: 10),

            /// Text
            //FSShimmerEffect(width: 160, height: 15),
            SizedBox(height: 10 / 2),
            //FSShimmerEffect(width: 110, height: 15),
          ],
        ),
      ),
    );
  }
}

