import 'package:flutter/material.dart';

import 'UI/screen/splash_screen.dart';

class TaskMangerApp extends StatelessWidget {
  const TaskMangerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
