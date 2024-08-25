import 'package:femi_space_dashboard/common/widgets/dropdown.dart';
import 'package:femi_space_dashboard/common/widgets/snackbars.dart';
import 'package:femi_space_dashboard/utils/consts/constants.dart';
import 'package:femi_space_dashboard/utils/helper/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../common/widgets/button.dart';
import '../../../domain/entities/servings_entity.dart';
import '../../providers/servings_provider.dart';
import '../../widgets/section_header.dart';
import '../../widgets/servings_container.dart';

class StatisticsView extends ConsumerWidget {
  const StatisticsView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final servingsData = ref.watch(servingsDataProvider);

    return Column(children: [
      /// STATISTICS DESCRIPTION
      const FSSectionHeader(),
      const SizedBox(
        height: 20,
      ),

      /// SEARCH STATISTICS
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: FSDropdown(
            dropdownValues: ['Select One'],
          )),
          SizedBox(
            width: 12,
          ),
          Expanded(child: FSButton(text: 'Search')),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      /// SERVING CONTAINERS
      servingsData.when(
          data: (servingsData) {
            List<ServingsEntity> bookmarksList =
                servingsData.map((e) => e).toList();
            print('SERVINGS LENGTH-->${bookmarksList.length}');
            return  Column(
              children: [

                ServingsContainer(
                  habitName: bookmarksList[0].habitName,
                  completeStatus: 'Status:${bookmarksList[0].completeStatus}',
                  percentage:bookmarksList[0].percentage,
                  progressPercent:bookmarksList[0].progressPercent,
                  servingsValue:bookmarksList[0].servingsValue,
                  servingList: [
                    [bookmarksList[0].servingList[0][0], bookmarksList[0].servingList[0][1]],
                    [bookmarksList[0].servingList[1][0], bookmarksList[0].servingList[1][1]],
                    [bookmarksList[0].servingList[2][0], bookmarksList[0].servingList[2][1]],
                    [bookmarksList[0].servingList[3][0], bookmarksList[0].servingList[3][1]],
                    [bookmarksList[0].servingList[4][0], bookmarksList[0].servingList[4][1]],
                    [bookmarksList[0].servingList[5][0], bookmarksList[0].servingList[5][1]],
                    [bookmarksList[0].servingList[6][0], bookmarksList[0].servingList[6][1]]
                  ],
                  avgValue: bookmarksList[0].avgValue,
                ),

                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 4,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),

                ServingsContainer(
                  habitName: bookmarksList[1].habitName,
                  completeStatus: 'Status:${bookmarksList[1].completeStatus}',
                  percentage:bookmarksList[1].percentage,
                  progressPercent:bookmarksList[1].progressPercent,
                  servingsValue:bookmarksList[1].servingsValue,
                  servingList: [
                    [bookmarksList[1].servingList[0][0], bookmarksList[1].servingList[0][1]],
                    [bookmarksList[1].servingList[1][0], bookmarksList[1].servingList[1][1]],
                    [bookmarksList[1].servingList[2][0], bookmarksList[1].servingList[2][1]],
                    [bookmarksList[1].servingList[3][0], bookmarksList[1].servingList[3][1]],
                    [bookmarksList[1].servingList[4][0], bookmarksList[1].servingList[4][1]],
                    [bookmarksList[1].servingList[5][0], bookmarksList[1].servingList[5][1]],
                    [bookmarksList[1].servingList[6][0], bookmarksList[1].servingList[6][1]]
                  ],
                  avgValue: FSHelperFunctions.calculateAverage(bookmarksList[1].servingList).toStringAsFixed(1),
                ),

                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 4,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),

                ServingsContainer(
                  habitName: bookmarksList[2].habitName,
                  completeStatus: 'Status:${bookmarksList[2].completeStatus}',
                  percentage:bookmarksList[2].percentage,
                  progressPercent:bookmarksList[2].progressPercent,
                  servingsValue:bookmarksList[2].servingsValue,
                  servingList: [
                    [bookmarksList[2].servingList[0][0], bookmarksList[2].servingList[0][1]],
                    [bookmarksList[2].servingList[1][0], bookmarksList[2].servingList[1][1]],
                    [bookmarksList[2].servingList[2][0], bookmarksList[2].servingList[2][1]],
                    [bookmarksList[2].servingList[3][0], bookmarksList[2].servingList[3][1]],
                    [bookmarksList[2].servingList[4][0], bookmarksList[2].servingList[4][1]],
                    [bookmarksList[2].servingList[5][0], bookmarksList[2].servingList[5][1]],
                    [bookmarksList[2].servingList[6][0], bookmarksList[2].servingList[6][1]]
                  ],
                  avgValue: FSHelperFunctions.calculateAverage(bookmarksList[2].servingList).toStringAsFixed(1),
                ),

                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 4,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),

                ServingsContainer(
                  habitName: bookmarksList[3].habitName,
                  completeStatus: 'Status:${bookmarksList[3].completeStatus}',
                  percentage:bookmarksList[3].percentage,
                  progressPercent:bookmarksList[3].progressPercent,
                  servingsValue:bookmarksList[3].servingsValue,
                  servingList: [
                    [bookmarksList[3].servingList[0][0], bookmarksList[3].servingList[0][1]],
                    [bookmarksList[3].servingList[1][0], bookmarksList[3].servingList[1][1]],
                    [bookmarksList[3].servingList[2][0], bookmarksList[3].servingList[2][1]],
                    [bookmarksList[3].servingList[3][0], bookmarksList[3].servingList[3][1]],
                    [bookmarksList[3].servingList[4][0], bookmarksList[3].servingList[4][1]],
                    [bookmarksList[3].servingList[5][0], bookmarksList[3].servingList[5][1]],
                    [bookmarksList[3].servingList[6][0], bookmarksList[3].servingList[6][1]]
                  ],
                  avgValue: FSHelperFunctions.calculateAverage(bookmarksList[3].servingList).toStringAsFixed(1),
                ),

                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 4,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),

                ServingsContainer(
                  habitName: bookmarksList[4].habitName,
                  completeStatus: 'Status:${bookmarksList[4].completeStatus}',
                  percentage:bookmarksList[4].percentage,
                  progressPercent:bookmarksList[4].progressPercent,
                  servingsValue:bookmarksList[4].servingsValue,
                  servingList: [
                    [bookmarksList[4].servingList[0][0], bookmarksList[4].servingList[0][1]],
                    [bookmarksList[4].servingList[1][0], bookmarksList[4].servingList[1][1]],
                    [bookmarksList[4].servingList[2][0], bookmarksList[4].servingList[2][1]],
                    [bookmarksList[4].servingList[3][0], bookmarksList[4].servingList[3][1]],
                    [bookmarksList[4].servingList[4][0], bookmarksList[4].servingList[4][1]],
                    [bookmarksList[4].servingList[5][0], bookmarksList[4].servingList[5][1]],
                    [bookmarksList[4].servingList[6][0], bookmarksList[4].servingList[6][1]]
                  ],
                  avgValue: FSHelperFunctions.calculateAverage(bookmarksList[4].servingList).toStringAsFixed(1),
                ),

                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 4,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),

                ServingsContainer(
                  habitName: bookmarksList[5].habitName,
                  completeStatus: 'Status:${bookmarksList[5].completeStatus}',
                  percentage:bookmarksList[5].percentage,
                  progressPercent:bookmarksList[5].progressPercent,
                  servingsValue:bookmarksList[5].servingsValue,
                  servingList: [
                    [bookmarksList[5].servingList[0][0], bookmarksList[5].servingList[0][1]],
                    [bookmarksList[5].servingList[1][0], bookmarksList[5].servingList[1][1]],
                    [bookmarksList[5].servingList[2][0], bookmarksList[5].servingList[2][1]],
                    [bookmarksList[5].servingList[3][0], bookmarksList[5].servingList[3][1]],
                    [bookmarksList[5].servingList[4][0], bookmarksList[5].servingList[4][1]],
                    [bookmarksList[5].servingList[5][0], bookmarksList[5].servingList[5][1]],
                    [bookmarksList[5].servingList[6][0], bookmarksList[5].servingList[6][1]]
                  ],
                  avgValue: FSHelperFunctions.calculateAverage(bookmarksList[5].servingList).toStringAsFixed(1),
                ),

                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 4,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),

                ServingsContainer(
                  habitName: bookmarksList[6].habitName,
                  completeStatus: 'Status:${bookmarksList[6].completeStatus}',
                  percentage:bookmarksList[6].percentage,
                  progressPercent:bookmarksList[6].progressPercent,
                  servingsValue:bookmarksList[6].servingsValue,
                  servingList:[
                    [bookmarksList[6].servingList[0][0], bookmarksList[6].servingList[0][1]],
                    [bookmarksList[6].servingList[1][0], bookmarksList[6].servingList[1][1]],
                    [bookmarksList[6].servingList[2][0], bookmarksList[6].servingList[2][1]],
                    [bookmarksList[6].servingList[3][0], bookmarksList[6].servingList[3][1]],
                    [bookmarksList[6].servingList[4][0], bookmarksList[6].servingList[4][1]],
                    [bookmarksList[6].servingList[5][0], bookmarksList[6].servingList[5][1]],
                    [bookmarksList[6].servingList[6][0], bookmarksList[6].servingList[6][1]]
                  ],
                  avgValue: FSHelperFunctions.calculateAverage(bookmarksList[6].servingList).toStringAsFixed(1),
                ),

                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 4,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),

                ServingsContainer(
                  isReducedToxins:true,
                  habitName: bookmarksList[7].habitName,
                  completeStatus: 'Status:${bookmarksList[7].completeStatus}',
                  percentage:bookmarksList[7].percentage,
                  progressPercent:bookmarksList[7].progressPercent,
                  servingsValue:bookmarksList[7].servingsValue,
                  servingList: [
                    [bookmarksList[7].servingList[0][0], bookmarksList[7].servingList[0][1]],
                    [bookmarksList[7].servingList[1][0], bookmarksList[7].servingList[1][1]],
                    [bookmarksList[7].servingList[2][0], bookmarksList[7].servingList[2][1]],
                  ],
                ),
              ],
            );
          },
          // NEED TO IMPLEMENT SHIMMER EFFECT IN FUTURE FOR LOADING
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, s) {
            return FSSnackBars.errorSnackBar(message: FSConstants.errorText);
          })
    ]);
  }
}
