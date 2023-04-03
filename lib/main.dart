import 'package:flutter/material.dart';
import 'package:watsup_ui_only/responsive/responsive_layout.dart';
import 'package:watsup_ui_only/screens/moblie_screen_layout.dart';
import 'package:watsup_ui_only/screens/web_screen_layout.dart';

import 'color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: ResponsiveLayout(
        mobileScreenLayout: const MobileScreenLayout(),
        webScreenLayout: const WebScreenLayout(),
      ),
    );
  }
}
