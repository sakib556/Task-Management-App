import 'package:flutter/material.dart';
import 'package:task_management_app/constant/colors.dart';
import 'package:task_management_app/views/tab/home/home_screen.dart';
import 'package:task_management_app/views/tab/record/record_screen.dart';
import 'package:task_management_app/views/tab/saved/saved_screen.dart';
import 'package:task_management_app/views/tab/search/search_screen.dart';
import 'package:task_management_app/views/tab/settings/settings_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _selectedIndex = 0;

  final List<BottomNavigationBarItem> _navBarItems = [
     const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Search',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.videocam),
      label: 'Record',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.notifications),
      label: 'Saved',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label:'Settings',
    ),
  ];
  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const RecordScreen(),
    const SavedScreen(),
    const SettingsScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  _screens[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60.0),
            topRight: Radius.circular(60.0),
          ),
          boxShadow: [
      BoxShadow(
        color: Colors.black12,
        spreadRadius: 1,
        blurRadius: 5,
        offset: Offset(0, 3),
      ),
    ],
        ),
        
        child: BottomNavigationBar(
          items: _navBarItems,
          currentIndex: _selectedIndex,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
