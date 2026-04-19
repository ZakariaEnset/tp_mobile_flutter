import 'package:flutter/material.dart';
import 'package:tp_mobile/pages/animated.graphics.page.dart';
import 'package:tp_mobile/pages/counter.page.dart';
import 'package:tp_mobile/pages/graphics.page.dart';
import 'package:tp_mobile/pages/home.page.dart';
import 'package:tp_mobile/pages/settings.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/settings": (context) => SettingsPage(),
        "/counter": (context) => CounterPage(),
        "/graphics": (context) => GraphicsPage(),
        "/animatedGraphics": (context) => AnimatedGraphicsPage(),
        "/": (context) => HomePage(),
      },
      theme: ThemeData(
        primaryColor: Colors.teal,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 12),
          bodyLarge: TextStyle(fontSize: 22),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}
