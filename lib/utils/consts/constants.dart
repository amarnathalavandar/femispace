import 'package:flutter/material.dart';

/// This class contains all the App Text in String formats.
class FSConstants {

  static const String aiCoPilotString = "AI Co-Pilots";
  static const String statTEXT='Excess sugar consumption is a'
      ' cause of many\ndiseases including obesity'
      ',diabetes,cardio-\nvascular conditions,hormonal imbalances '
      'and other life-threatening illnesses.';

  static const String freeLifeButtonText='Go to Toxin-freelife page';
  static const String preWeekText='Pre. Week';
  static const String current='Current';
  static const String change='Change';
  static const String errorText='Error Occurred, Please try again later!';



  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static bool isWeb(BuildContext context) {
    return MediaQuery.of(context).size.width > 600;
  }
}

