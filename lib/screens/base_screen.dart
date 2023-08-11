import 'package:flutter/material.dart';
import 'package:uas_20210120064/constants/colors.dart';
import 'package:uas_20210120064/screens/course_screen.dart';
import 'package:uas_20210120064/screens/favorite_screen.dart';
import 'package:uas_20210120064/screens/home_screen.dart';
import 'package:uas_20210120064/screens/profile_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CourseScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Pallete.whiteColor,
        selectedItemColor: Pallete.blue,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              weight: 24.0,
            ),
            activeIcon: Icon(
              Icons.home,
              weight: 24.0,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment,
              weight: 24.0,
            ),
            activeIcon: Icon(
              Icons.assignment,
              weight: 24.0,
            ),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              weight: 24.0,
            ),
            activeIcon: Icon(
              Icons.favorite,
              weight: 24.0,
            ),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              weight: 24.0,
            ),
            activeIcon: Icon(
              Icons.person,
              weight: 24.0,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
