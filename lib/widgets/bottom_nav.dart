import 'package:flutter/material.dart';
import 'package:marketage_v2/screens/home_screen.dart';
import 'package:marketage_v2/screens/inbox.dart';
import 'package:marketage_v2/screens/notification.dart';
import 'package:marketage_v2/screens/profile.dart';
import 'package:marketage_v2/widgets/search.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar:
          BottomNavigationBar(selectedItemColor: Color(0xFFc3232a), items: [
        BottomNavigationBarItem(
          icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Icon(Icons.home)),
          label: 'Home',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InboxScreen()),
              );
            },
            child: Icon(Icons.message),
          ),
          label: 'Inbox',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchScreen()),
              );
            },
            child: Icon(Icons.search),
          ),
          label: 'Search',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationScreen()),
              );
            },
            child: Icon(Icons.notifications),
          ),
          label: 'Notification',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
            child: Icon(Icons.person),
          ),
          label: 'Profile',
          backgroundColor: Colors.blue,
        ),
      ]),
    );
  }
}
