import 'package:flutter/material.dart';



class FSHelperFunctions{

  static double calculateAverage(List<List<int>> valueList) {
    if (valueList.isEmpty) {
      return 0.0;
    }

    int sum = 0;
    for (var subValueList in valueList) {
      if (subValueList.isNotEmpty) {
        sum += subValueList[0];
      }
    }

    return sum / valueList.length;
  }
}