import 'package:flutter/material.dart';
class ServingsEntity{

  final String habitName;
  final String completeStatus;
  final String percentage;
  final double progressPercent;
  final String servingsValue;
  final List<List<int>> servingList;
  final String avgValue;


  ServingsEntity({
  required this.habitName,
  required this.completeStatus,
  required this.percentage,
  required  this.progressPercent,
  required this.servingsValue,
  required this.servingList,
  required this.avgValue,
  });
}