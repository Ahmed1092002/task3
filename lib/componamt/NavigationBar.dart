import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentPageIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;


  @override
  Widget build(BuildContext context) {
    final gradient = LinearGradient(
      colors: [Color(0xFF5B5EE6), Color(0xFF916CFF)],
      begin: Alignment.topLeft,
      end: Alignment.topRight,
    );

    return Container(

      child: NavigationBar(

        labelBehavior:   NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: currentPageIndex,

        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });

        },
        destinations: <Widget>[


          NavigationDestination(

            icon: IconTheme(
              data: IconThemeData(color: Colors.white),
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return gradient.createShader(bounds);
                },
                child: Icon(Icons.home_outlined),
              ),
            ), label:'home' ,



          ),
          NavigationDestination(
            icon: IconTheme(
              data: IconThemeData(color: Colors.white),
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return gradient.createShader(bounds);
                },
                child: Icon(Icons.stay_current_portrait_rounded),
              ),
            ), label: 'Scroll',

          ),
          NavigationDestination(
            selectedIcon: IconTheme(
              data: IconThemeData(color: Colors.white),
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return gradient.createShader(bounds);
                },
                child: Icon(Ionicons.chatbubble),
              ),
            ),
            icon: IconTheme(
              data: IconThemeData(color: Colors.white),
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return gradient.createShader(bounds);
                },
                child: Icon(Ionicons.chatbubble_outline),
              ),
            ), label: 'Chat',

          ),
          NavigationDestination(
            icon: IconTheme(
              data: IconThemeData(color: Colors.white),
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return gradient.createShader(bounds);
                },
                child: Icon(Ionicons.search_outline),
              ),
            ), label: 'Search',

          ),
          NavigationDestination(
            icon: IconTheme(
              data: IconThemeData(color: Colors.white),
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return gradient.createShader(bounds);
                },
                child: Icon(Icons.person),
              ),
            ), label: 'Profile',

          ),
        ],
      ),
    );
  }
}