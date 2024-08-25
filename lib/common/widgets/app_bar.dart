import 'package:flutter/material.dart';

class FSAppbar extends StatelessWidget implements PreferredSizeWidget  {
  const FSAppbar({
    super.key,
    required this.title,
    required this.appColor,
    this.arrowColor=Colors.white,
    this.iconStyle=Icons.arrow_back_ios_outlined,

  });

  final String title;
  final Color appColor;
  final Color arrowColor;
  final IconData iconStyle;

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(title,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(color:arrowColor)),
      centerTitle: true,
      toolbarHeight: 100,
      automaticallyImplyLeading: true,
      leading: Icon(iconStyle,color: arrowColor,) ,
      backgroundColor:appColor,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(100.0);
}



