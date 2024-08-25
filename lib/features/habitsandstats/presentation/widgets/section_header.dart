import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../common/widgets/dropdown.dart';
import '../../../../utils/consts/constants.dart';
class FSSectionHeader extends StatelessWidget {
  const FSSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Statistics',
                style: GoogleFonts.albertSans(
                  color:  Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 26,
                )
            ),
            const FSDropdown(dropdownValues: ['Monthly ', 'Weekly ', 'Daily ', 'Yearly '],),
          ],
        ),
        const SizedBox(height: 12,),
        Text(FSConstants.statTEXT,style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey.shade500,fontSize:14),)
      ],
    );
  }
}


