import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../consts/constants.dart';

class BoxArrow extends StatelessWidget {

   const BoxArrow({
    super.key,
     this.width=35,
     this.height=40,
     this.arrowSize=20,
     this.circleRadius=10,
  });

  final double? width;
  final double? height;
  final double? arrowSize;
  final double? circleRadius;

  @override
  Widget build(BuildContext context) {
    double screenSize = FSConstants.getScreenWidth(context);
    return Container(
      width:kIsWeb? screenSize * width! : width,
      height:kIsWeb? screenSize * height! : height,
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(circleRadius!),
      ),
      child:  Icon(
        size: arrowSize,
        Icons.arrow_forward_ios_outlined,
        color: Colors.white,

      ),
    );
  }
}