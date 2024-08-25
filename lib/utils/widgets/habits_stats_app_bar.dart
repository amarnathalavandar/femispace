import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class HabitsStatsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HabitsStatsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 400,
      toolbarHeight: 100,
      leading: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(FluentIcons.arrow_left_32_filled,size: 25,),
              onPressed: () {
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                  'Habits & Stats',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(color:Colors.black)),
            ),

          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(100.0);

}
