import 'package:femi_space_dashboard/utils/consts/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../common/widgets/app_bar.dart';
import '../../../../utils/consts/colors.dart';
import '../../domain/entities/bookmarks_entity.dart';
import '../../domain/entities/healthsuggestions_entity.dart';
import '../Shimmers/grid_shimmer.dart';
import '../Shimmers/listview_shimmer.dart';
import '../providers/bookmark_provider.dart';
import '../providers/healthsuggestions_provider.dart';
import '../widgets/blurred_container.dart';
import '../widgets/suggestions_stack.dart';

class Dashboard extends ConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final bookMarkData = ref.watch(bookmarkDataProvider);
    final healthSuggestionsData = ref.watch(healthSuggestionsDataProvider);
    return Scaffold(
      appBar: const FSAppbar(appColor:FSColors.primary ,title: 'My Dashboard',),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              /// BOOKMARKED SHORTCUTS GRID VIEW
              bookMarkData.when(
                  data: (bookMarkData) {
                    List<Bookmarks> bookmarksList =
                        bookMarkData.map((e) => e).toList();
                   print('BOOKMARKS LENGTH-->${bookmarksList.length}');
                    return GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Number of columns
                        crossAxisSpacing: 10, // Spacing between columns
                        mainAxisSpacing: 10, // Spacing between rows
                        childAspectRatio: 0.88, // Aspect ratio of each item
                      ),
                      itemCount: bookmarksList.length,
                      padding: const EdgeInsets.all(10.0),
                      itemBuilder: (context, index) {
                        return Stack(children: [
                          /// IMAGE CONTAINER
                          Container(
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/container_bg/fs_abstract.jpg'),
                                fit: BoxFit
                                    .cover,
                              ),
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),

                          /// BLURRED CONTAINER
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: BlurredContainer(
                                bookMark: bookmarksList[index],
                              ),
                            ),
                          )
                        ]);
                      },
                    );
                  },
                  error: (error, s) {
                    print('ERROR OCCURRED$error');
                    return Text(error.toString());
                  } ,
                  loading: () => const Center(
                        child: GridShimmer(),
                      )),

              ///AI CO-PILOT GESTURE CONTAINER
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(12)),
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(FSConstants.aiCoPilotString,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.w500,fontSize: 18)),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),

              /// HEALTH SUGGESTIONS LIST VIEW
              healthSuggestionsData.when(
                  data: (healthSuggestionsData) {
                    List<HealthSuggestions> healthSuggestionsList =
                        healthSuggestionsData.map((e) => e).toList();
                    print('LENGTH OF LIST-->${healthSuggestionsList.length}');
                    return SizedBox(
                      height: 250,
                      child: FSSuggestionsListView(healthSuggestionsList: healthSuggestionsList),
                    );
                  },
                  error: (error, s) => Text(error.toString()),
                  loading: () => const Center(
                        child: ListviewShimmer(),
                      )),
            ],
          ),
        ),
      ),
    );
  }
}

