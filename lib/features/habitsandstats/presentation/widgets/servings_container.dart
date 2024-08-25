import 'package:femi_space_dashboard/utils/consts/colors.dart';
import 'package:femi_space_dashboard/utils/consts/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dayserve_container.dart';

class ServingsContainer extends StatelessWidget {
  const ServingsContainer(
      {super.key,
      required this.habitName,
      required this.completeStatus,
      required this.percentage,
      required this.progressPercent,
      required this.servingsValue,
      this.isReducedToxins = false,
      required this.servingList,
      this.avgValue,
      });

  final String habitName;
  final String completeStatus;
  final String percentage;
  final double progressPercent;
  final String servingsValue;
  final bool isReducedToxins;
  final List<List<int>> servingList;
  final String? avgValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// HABIT NAME AND STATUS HEAD
            Text(
              habitName,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            Text(
              completeStatus,
              style: const TextStyle(fontSize: 12, color: Colors.pink),
            ),
          ],
        ),
        const SizedBox(height: 10),

        /// PROGRESS BAR
        Row(
          children: [
            Text(
              percentage,
              style:const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    height: 8,
                    decoration: BoxDecoration(
                      color: FSColors.secondary.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return Container(
                        width: constraints.maxWidth * progressPercent,
                        height: 8,
                        decoration: BoxDecoration(
                          color: FSColors.progressBar,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 18),

        /// DAYS AND SERVING
        !isReducedToxins
            ?  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DayServing(day: 'Mon', serving: servingList[0][0], index: 0, badgeNo: servingList[0][1],),
                  DayServing(day: 'Tue', serving: servingList[1][0], index: 1, badgeNo: servingList[1][1],),
                  DayServing(day: 'Wed', serving: servingList[2][0], index: 2, badgeNo: servingList[2][1],),
                  DayServing(day: 'Thu', serving: servingList[3][0], index: 3, badgeNo: servingList[3][1],),
                  DayServing(day: 'Fri', serving: servingList[4][0], index: 4, badgeNo: servingList[4][1],),
                  DayServing(day: 'Sat', serving: servingList[5][0], index: 5, badgeNo: servingList[4][1],),
                  DayServing(day: 'Sun', serving: servingList[6][0], index: 6, badgeNo: servingList[5][1],),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Avg.',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      CircleAvatar(
                        backgroundColor: FSColors.primary,
                        radius: 16,
                        child: Text(
                          avgValue!,
                          style:  GoogleFonts.montserrat(fontWeight:FontWeight.w500,fontSize: 14,color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            :  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   DayServing(day: FSConstants.preWeekText, serving:servingList[0][0], index: 0),
                   DayServing(day: FSConstants.current, serving: servingList[1][0], index: 1,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        FSConstants.change,
                        style: TextStyle(fontSize: 16, color: FSColors.secondary),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      CircleAvatar(
                        backgroundColor: FSColors.primary,
                        radius: 16,
                        child: Text(
                          servingList[2][0].toString(),
                          style: GoogleFonts.montserrat(fontWeight:FontWeight.w500,fontSize: 15,color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
       /// REDUCED TOXINS SPECIFIC
        const SizedBox(height: 8),
        if (isReducedToxins)
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(4),
                backgroundColor: Colors.blue[50],
                shape: RoundedRectangleBorder(
                  // Set the shape to rectangle
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    FSConstants.freeLifeButtonText,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: FSColors.primary,fontWeight: FontWeight.w500)
                  ),
                  const SizedBox(width: 3),
                  const Icon(
                    Icons.arrow_forward,
                    size: 35,
                    color: FSColors.primary,
                  ),
                ],
              ),
            ),
          ),
        const SizedBox(height: 8),
        Text(
          servingsValue,
            style:  GoogleFonts.montserrat(fontWeight:FontWeight.w500,fontSize: 16,color: Colors.black),
        ),
      ],
    );
  }
}
