import 'package:flutter/material.dart';

class FSSnackBars
{
  static errorSnackBar({required message,}) {
    SnackBar(
      content: Text(message,style:const TextStyle(color: Colors.white),),
      backgroundColor: Colors.red.shade600,
      showCloseIcon: true,
      duration: const Duration(seconds: 3),
      margin:  const EdgeInsets.all(10),
    );
  } 
}

