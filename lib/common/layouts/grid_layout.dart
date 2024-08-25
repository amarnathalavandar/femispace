import 'package:flutter/material.dart';

class FSGridLayout extends StatelessWidget {
  const FSGridLayout({
    super.key, required this.itemCount, required this.itemBuilder, this.mainAxisExtent = 288
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        crossAxisSpacing: 10, // Spacing between columns
        mainAxisSpacing: 10, // Spacing between rows
        childAspectRatio: 0.88,
      ),
      itemBuilder: itemBuilder,
    );
  }
}