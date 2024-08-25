import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';


class FSShimmerEffect extends StatelessWidget {
  const FSShimmerEffect({
    super.key,
    required this.width,
    required this.height,
    this.radius = 15,
    this.color,
  });

  final double width, height, radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor:  Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? (Colors.white),
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
