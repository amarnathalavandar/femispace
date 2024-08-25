import 'package:flutter/material.dart';
import '../../../../common/widgets/listview_button.dart';

class HorizontalListHeader extends StatelessWidget {
  final String text;
  final bool isSelected;
  const HorizontalListHeader({super.key, required this.text, required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: 50,
          child:  ListView(
            scrollDirection: Axis.horizontal,
            children: const [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:5.0),
              child: FSListViewButton(isSelected: false, text: 'Catalog'),
            ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:5.0),
                child: FSListViewButton(isSelected: true, text: 'Statistics'),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:5.0),
                child: FSListViewButton(isSelected: false, text: 'Articles And News'),
              )

            ],
          )
      );
  }
}

