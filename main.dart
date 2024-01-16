import 'package:flutter/material.dart';
import 'package:typeone/pages/home_page.dart';
import 'package:typeone/pages/components_page.dart';
import 'package:typeone/pages/components_info.dart';
import 'package:typeone/pages/plates_page.dart';
import 'package:typeone/pages/switch_page.dart';
import 'package:typeone/pages/layout_page.dart';
import 'package:typeone/pages/settings_page.dart';
import 'package:typeone/pages/gallery_page.dart';
import 'package:typeone/pages/themes_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/home':(context) => HomePage(),
        '/components':(context) => Components(),
        '/info':(context) => Info(),
        '/plates':(context) =>  Plates(),
        '/switches':(context) => Switches(),
        '/layouts':(context) => Layout(),
        '/settings':(context) => Settings(),
        '/themes':(context) => Themes(),
        '/gallery':(context) => Gallery(),
      }
    );  
  }
}