import 'package:flutter/material.dart';

import '../../../../common/widgets/picture_container.dart';
import '../../../../utils/widgets/box_arrow.dart';
import '../../domain/entities/healthsuggestions_entity.dart';


class FSSuggestionsListView extends StatelessWidget {
  const FSSuggestionsListView({
    super.key,
    required this.healthSuggestionsList,
  });

  final List<HealthSuggestions> healthSuggestionsList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      physics: const AlwaysScrollableScrollPhysics(),
      separatorBuilder: (_, __) => const SizedBox(width: 12),
      itemBuilder: (_, index) {
        return Stack(
          children: [
            // Background image container
             const FSPictureContainer(width: 180,height: 200,imageURL: 'assets/images/container_bg/reprod_ai_1.jpg',),
            // Card at the bottom center, slightly overlapping the bottom of the image
            Positioned(
              bottom: 36,
              // Adjust this value to control how much the card overlaps
              left: 12,
              // Center the card horizontally
              child: Container(
                width: 155,
                height: 100,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: [
                            Text(
                              healthSuggestionsList[index]
                                  .healthTitle,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                  fontSize: 9,
                                  color: Colors.black,
                                  fontWeight:
                                  FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              healthSuggestionsList[index]
                                  .healthDesc,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                  fontSize: 8,
                                  color: Colors.black54,
                                  fontWeight:
                                  FontWeight.w500),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const BoxArrow(
                            height: 30,
                            width: 20,
                            arrowSize: 15,
                            circleRadius: 6)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
