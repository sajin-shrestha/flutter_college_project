import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:test_application/dashboard.dart';
import 'package:test_application/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // to remove debug banner from top
      // home: Dashboard(),
      home: MyHomePage(),
    );
  }
}

class MobilelikeScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
