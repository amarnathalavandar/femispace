import 'package:equatable/equatable.dart';
import 'package:femi_space_dashboard/features/dashboard/domain/entities/bookmarks_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookmarksModel extends Equatable {
  final IconData iconName;
  final String bookMarkName;
  final Color colorName;

  const BookmarksModel({
    required this.iconName,
    required this.bookMarkName,
    required this.colorName
  });

  @override
  List<Object?> get props => [
    iconName,
    bookMarkName,
  ];

  // Conversion from Entity to Model
  factory BookmarksModel.fromEntity(Bookmarks bookMarks)
  {
    return BookmarksModel(
      iconName: bookMarks.iconName,
      colorName: bookMarks.colorName,
      bookMarkName: bookMarks.bookMarkName,
    );

  }
  // Conversion from Model to Entity
  Bookmarks toEntity() => Bookmarks(
    iconName:iconName,
    bookMarkName: bookMarkName,
    colorName: colorName,

  );

}