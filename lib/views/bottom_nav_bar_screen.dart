import 'package:flutter/material.dart';
import 'package:task_management_app/constant/colors.dart';
import 'package:task_management_app/views/custom_widgets/gradiant_view.dart';
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
      activeIcon: RadiantGradientMask(child: Icon(Icons.home)),
      icon: Icon(Icons.home, color: Color(0xffB4C1C0)),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      activeIcon: RadiantGradientMask(child: Icon(Icons.search)),
      icon: Icon(Icons.search, color: Color(0xffB4C1C0)),
      label: 'Search',
    ),
    const BottomNavigationBarItem(
      activeIcon: RadiantGradientMask(child: Icon(Icons.videocam)),
      icon: Icon(Icons.videocam, color: Color(0xffB4C1C0)),
      label: 'Record',
    ),
    const BottomNavigationBarItem(
      activeIcon: RadiantGradientMask(child: Icon(Icons.notifications)),
      icon: Icon(Icons.notifications, color: Color(0xffB4C1C0)),
      label: 'Saved',
    ),
    const BottomNavigationBarItem(
      activeIcon: RadiantGradientMask(child: Icon(Icons.settings)),
      icon: Icon(
        Icons.settings,
        color: Color(0xffB4C1C0),
      ),
      label: 'Settings',
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
      backgroundColor: backgroundColor,
      extendBody: true,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18.0), // adjust to your liking
            topRight: Radius.circular(18.0), // adjust to your liking
            bottomLeft: Radius.circular(8.0), // adjust to your liking
            bottomRight: Radius.circular(8.0), // adjust to your liking
          ),
          //    color: Co, // put the color here
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: _navBarItems,
            currentIndex: _selectedIndex,
            showUnselectedLabels: true,
            unselectedItemColor: const Color(0xffB4C1C0),
            selectedItemColor: const Color(0xff042E2B),
            //  selectedLabelStyle: const TextStyle(color: Color(0xff042E2B)),
            // unselectedLabelStyle:const TextStyle(color:Color(0xffB4C1C0) ),
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
