import 'dart:ui';

import 'package:femi_space_dashboard/utils/consts/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/widgets/box_arrow.dart';
import '../../domain/entities/bookmarks_entity.dart';

class BlurredContainer extends ConsumerWidget  {
  const BlurredContainer(
       {
         super.key,
         required this.bookMark,
       });

  final Bookmarks bookMark;

  @override
  Widget build(BuildContext context,ref) {
  double radius = FSConstants.getScreenWidth(context)*.09;
  print('---------');
  print(MediaQuery.of(context).size.width);
  bool isWeb=FSConstants.isWeb(context);
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          /// Dashboard icons, text and right arrow
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// CIRCLE CONTAINER FOR ICONS
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Colors.grey.shade300, // Light source color
                        Colors.grey.shade600, // Shadow side color
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.9),
                        offset: const Offset(1, 1),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Expanded(
                    child: CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(0.8),
                      radius:radius ,
                      child: Icon(bookMark.iconName, color:bookMark.colorName,size:radius*.75,),
                    ),
                  ),
                ),
                /// BOOKMARK NAME
                Text(
                  softWrap: true,
                  bookMark.bookMarkName,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontSize: kIsWeb? 80:12,
                      color: Colors.black54,fontWeight: FontWeight.bold),
                ),
                /// BOX ARROW
                const BoxArrow()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

