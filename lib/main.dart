import 'package:femi_space_dashboard/utils/theme/FSTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'homescreen.dart';


/*
void main() {
  runApp(DevicePreview(
    isToolbarVisible: true,
    devices: [
      Devices.ios.iPhone13,
      Devices.android.onePlus8Pro,
      Devices.android.samsungGalaxyA50,
      Devices.android.samsungGalaxyNote20Ultra,
    ],
      builder: (context) => const ProviderScope(child: MyApp()
  ),));
}
*/

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FemiSpace',
      theme: FSAppTheme.lightTheme,
      themeMode: ThemeMode.system,
      //home: const Dashboard(),
      home: const HomeScreen(),
    );
  }
}
