import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class NavigationBar extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      // appBar: new AppBar(
      //   title: new Text(widget.title),
      // ),
      body: new Center(
        child: new Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
          ],
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _cIndex,
        type: BottomNavigationBarType.shifting ,
        items: [
          BottomNavigationBarItem(
            icon: Icon(LineIcons.home,color: Color.fromARGB(255, 0, 0, 0)),
            title: new Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.heart_o,color: Color.fromARGB(255, 0, 0, 0)),
            title: new Text('Like')
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.video_camera,color: Color.fromARGB(255, 0, 0, 0)),
            title: new Text('Sermon')
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.search,color: Color.fromARGB(255, 0, 0, 0)),
            title: new Text('Search')
          )
        ],
        onTap: (index){
            _incrementTab(index);
        },
      ) 
    );
  }
}










// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:bubbled_navigation_bar/bubbled_navigation_bar.dart';
// import 'package:flutter/rendering.dart';

// void main() => runApp(NavigationBar());

// class NavigationBar extends StatefulWidget {
//   static const String id = 'navigation_bar';
//   final titles = ['Main', 'Location', 'Info', 'Profile'];
//   final colors = [Colors.red, Colors.teal, Colors.green, Colors.cyan];
//   final icons = [
//     CupertinoIcons.home,
//     CupertinoIcons.location,
//     CupertinoIcons.info,
//     CupertinoIcons.profile_circled
//   ];
//   final pages = [

//   ];

//   NavigationBar({Key key}) : super(key: key);

//   @override
//   _NavigationBarState createState() => _NavigationBarState();
// }

// class _NavigationBarState extends State<NavigationBar> {
//   PageController _pageController;
//   MenuPositionController _menuPositionController;
//   bool userPageDragging = false;

//   @override
//   void initState() {
//     _menuPositionController = MenuPositionController(initPosition: 0);

//     _pageController = PageController(
//       initialPage: 0,
//       keepPage: false,
//       viewportFraction: 1.0
//     );
//     _pageController.addListener(handlePageChange);

//     super.initState();
//   }

//   void handlePageChange() {
//     _menuPositionController.absolutePosition = _pageController.page;
//   }

//   void checkUserDragging(ScrollNotification scrollNotification) {
//     if (scrollNotification is UserScrollNotification && scrollNotification.direction != ScrollDirection.idle) {
//       userPageDragging = true;
//     } else if (scrollNotification is ScrollEndNotification) {
//       userPageDragging = false;
//     }
//     if (userPageDragging) {
//       _menuPositionController.findNearestTarget(_pageController.page);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: NotificationListener<ScrollNotification>(
//         // onNotification: (scrollNotification) {
//         //   checkUserDragging(scrollNotification);
//         // },
//         child: PageView(
//           controller: _pageController,
//           children: widget.colors.map((Color c) => Container(color: c)).toList(),
//           onPageChanged: (page) {

//           },
//         ),
//       ),
//       bottomNavigationBar: BubbledNavigationBar(
//         controller: _menuPositionController,
//         initialIndex: 0,
//         itemMargin: EdgeInsets.symmetric(horizontal: 8),
//         backgroundColor: Colors.white,
//         defaultBubbleColor: Colors.blue,
//         onTap: (index) {
//           _pageController.animateToPage(
//             index,
//             curve: Curves.easeInOutQuad,
//             duration: Duration(milliseconds: 500)
//           );
//         },
//         items: widget.titles.map((title) {
//           var index = widget.titles.indexOf(title);
//           var color = widget.colors[index];
//           return BubbledNavigationBarItem(
//             icon: getIcon(index, color),
//             activeIcon: getIcon(index, Colors.white),
//             bubbleColor: color,
//             title: Text(
//               title,
//               style: TextStyle(color: Colors.white, fontSize: 12),
//             ),
//           );
//         }).toList(),
//       )
//     );
//   }

//   Padding getIcon(int index, Color color) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 3),
//       child: Icon(widget.icons[index], size: 30, color: color),
//     );
//   }
// }




















// import 'package:deliverance_church_utawala/screens/sermon/sermon_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:line_icons/line_icons.dart';

// void main() => runApp(BottomNav());

// class BottomNav extends StatefulWidget {
//   static const String id = 'navigation_bar';
//   @override
//   _BottomNavState createState() => _BottomNavState();
// }

// class _BottomNavState extends State<BottomNav> {
//   int selectedIndex = 0;

//   PageController controller = PageController();

//   List<GButton> tabs = new List();
//   List<Color> colors = [
//     Colors.purple,
//     Colors.pink,
//     Colors.amber[600],
//     Colors.teal
//   ];

//   @override
//   void initState() {
//     super.initState();

//     var padding = EdgeInsets.symmetric(horizontal: 18, vertical: 5);
//     double gap = 10;

//     tabs.add(GButton(
//       gap: gap,
//       iconActiveColor: Colors.purple,
//       iconColor: Colors.black,
//       textColor: Colors.purple,
//       backgroundColor: Colors.purple.withOpacity(.2),
//       iconSize: 24,
//       padding: padding,
//       icon: LineIcons.home,
//       // textStyle: t.textStyle,
//       text: 'Home',
      
//     ));

//     tabs.add(GButton(
//       gap: gap,
//       iconActiveColor: Colors.pink,
//       iconColor: Colors.black,
//       textColor: Colors.pink,
//       backgroundColor: Colors.pink.withOpacity(.2),
//       iconSize: 24,
//       padding: padding,
//       icon: LineIcons.heart_o,
//       // textStyle: t.textStyle,
//       text: 'Likes',
//     ));

//     tabs.add(GButton(
//       gap: gap,
//       iconActiveColor: Colors.amber[600],
//       iconColor: Colors.black,
//       textColor: Colors.amber[600],
//       backgroundColor: Colors.amber[600].withOpacity(.2),
//       iconSize: 24,
//       padding: padding,
//       icon: LineIcons.search,
//       // textStyle: t.textStyle,
//       text: 'Search',
//     ));

//     tabs.add(GButton(
//       gap: gap,
//       iconActiveColor: Colors.teal,
//       iconColor: Colors.black,
//       textColor: Colors.teal,
//       backgroundColor: Colors.teal.withOpacity(.2),
//       iconSize: 24,
//       padding: padding,
//       icon: LineIcons.video_camera,
//       // textStyle: t.textStyle,
//       text: 'Give',
//     ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         extendBody: true,
//         body: PageView.builder(
//           onPageChanged: (page) {
//             setState(() {
//               selectedIndex = page;
//             });
//           },
//           controller: controller,
//           itemBuilder: (context, position) {
//             return Container(
//               color: colors[position],
//             );
//           },
//           itemCount: tabs.length, // Can be null
//         ),
//         // backgroundColor: Colors.green,
//         // body: Container(color: Colors.red,),
//         bottomNavigationBar: SafeArea(
//           child: Container(
//             margin: EdgeInsets.symmetric(horizontal: 10),
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.all(Radius.circular(100)),
//                 boxShadow: [
//                   BoxShadow(
//                       spreadRadius: -10,
//                       blurRadius: 60,
//                       color: Colors.black.withOpacity(.20),
//                       offset: Offset(0, 15))
//                 ]),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
//               child: GNav(
//                   tabs: tabs,
//                   selectedIndex: selectedIndex,
//                   onTabChange: (index) {
//                     print(index);
//                     setState(() {
//                       selectedIndex = index;
//                     });
//                     controller.jumpToPage(index);
//                   }),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }