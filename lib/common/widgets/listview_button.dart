import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FSListViewButton extends StatelessWidget {
  const FSListViewButton({
    super.key,
    required this.isSelected,
    required this.text,
  });

  final bool isSelected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.purple : Colors.grey.withOpacity(0.07),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Text(
            text,
            style: GoogleFonts.montserrat(fontWeight:FontWeight.w500,
            fontSize: 18, color: isSelected ? Colors.white : Colors.black),
      ),
    ),);
  }
}