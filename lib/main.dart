import 'package:flutter/material.dart';

import 'mainscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              elevation: 3,
              color: Colors.indigo[700],
              titleTextStyle:
                  const TextStyle(color: Colors.white, fontSize: 25)),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            minimumSize: const Size(200, 50),
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          )),
          textTheme: const TextTheme(
            bodyLarge: TextStyle(fontSize: 60, fontWeight: FontWeight.w300),
            bodyMedium: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
          )),
      home: const mainScreen(),
    );
  }
}
