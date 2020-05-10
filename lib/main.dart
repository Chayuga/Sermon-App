library bottom_navy_bar;
import 'package:deliverance_church_utawala/navigation_menus/navigation_bar.dart';
import 'package:deliverance_church_utawala/screens/flash_page/model/flash.dart';
import 'package:deliverance_church_utawala/screens/flash_page/screens/getting_started_screen.dart';
import 'package:deliverance_church_utawala/screens/flash_page/screens/login_screen.dart';
import 'package:deliverance_church_utawala/screens/flash_page/screens/signup_screen.dart';
import 'package:deliverance_church_utawala/screens/map/map_direction.dart';
import 'package:deliverance_church_utawala/screens/sermon/sermon_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GettingStartedScreen(),
      routes: {
        NavigationBar.id : (context) => NavigationBar(),
        LoginScreen.id: (context) => LoginScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        GettingStartedScreen.id: (context) => GettingStartedScreen(),
        //GiveOnline.id: (context) => GiveOnline(),
        FlashScreen.id: (context) => FlashScreen(),
        SermonScreen.id: (context) => SermonScreen(),
        MapDirection.id: (context) => MapDirection(),
      },
    );
  }
}