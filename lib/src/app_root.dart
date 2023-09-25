import 'package:flutter/material.dart';
import 'package:travelea/sreens/main_screen.dart';
import 'package:travelea/sreens/welcome_screen.dart';


class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}
