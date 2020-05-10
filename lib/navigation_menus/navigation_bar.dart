import 'package:deliverance_church_utawala/screens/lipa_na_mpesa/give_online_screen.dart';
import 'package:deliverance_church_utawala/screens/map/map_direction.dart';
import 'package:deliverance_church_utawala/screens/sermon/sermon_screen.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  static const String id = 'navigation_bar';
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = 
  [
    SermonScreen(),
    MapDirection(),
    GiveOnline(),
  ];

  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video, color: Colors.red.shade400,),
            title: Text("Sermon", style: TextStyle(color: Colors.purple),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on,color: Colors.greenAccent.shade400),
            title: Text("Location", style: TextStyle(color: Colors.purple),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline, color: Colors.blueGrey.shade400),
            title: Text("About Us", style: TextStyle(color: Colors.purple),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet, color: Colors.pink.shade300),
            title: Text("Give", style: TextStyle(color: Colors.purple),),
          ),
        ],
        ),
      
    );
  }
}