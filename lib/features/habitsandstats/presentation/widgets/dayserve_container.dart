import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DayServing extends StatelessWidget {
  final String day;
  final int serving;
  final int index;
  final int? badgeNo;

  const DayServing({
    super.key,
    required this.day,
    required this.serving,
    required this.index,
    this.badgeNo = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          day,
          style: const TextStyle(
              fontSize: 16, color: Color.fromARGB(255, 133, 133, 133)),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Badge(
            backgroundColor: badgeNo != 0
                ? const Color.fromARGB(255, 225, 245, 234)
                : Colors.transparent,
            label: badgeNo != 0 ? Text(badgeNo.toString()) : null,
            largeSize: 15,
            textColor: Colors.black,
            textStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            child: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 251, 236, 255,),
              radius: 16,
              child: Text(
                serving.toString(),
                style:  GoogleFonts.montserrat(fontWeight:FontWeight.w500,fontSize: 15,color: serving != 0 ? Colors.black :Color.fromARGB(255,149,149,149)),
          ),
        ),
    ))
      ],
    );
  }
}