import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_2/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.grey[300],
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.grey[300],
          elevation: 0,
          toolbarHeight: 25
          // systemOverlayStyle: SystemUiOverlayStyle(
          //
          // )
        )
      ),
      home: HomeScreen(),
    );
  }
}