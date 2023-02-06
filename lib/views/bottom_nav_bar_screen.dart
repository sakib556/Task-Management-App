import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_management_app/constant/colors.dart';
import 'package:task_management_app/constant/icons.dart';
import 'package:task_management_app/views/custom_widgets/ashcolor_view.dart';
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
     BottomNavigationBarItem(
      activeIcon: GradiantView(child: SvgPicture.asset(homeIcon)),
      icon: AshColorView(child: SvgPicture.asset(homeIcon)),
      label: 'Home',
    ),
     BottomNavigationBarItem(
      activeIcon: GradiantView(child: SvgPicture.asset(searchIcon)),
      icon:  SvgPicture.asset(searchIcon),
      label: 'Search',
    ),
     BottomNavigationBarItem(
      activeIcon: GradiantView(child: SvgPicture.asset(recordIcon)),
      icon:  SvgPicture.asset(recordIcon),
      label: 'Record',
    ),
     BottomNavigationBarItem(
      activeIcon: GradiantView(child: SvgPicture.asset(savedIcon)),
      icon:  SvgPicture.asset(savedIcon),
      label: 'Saved',
    ),
     BottomNavigationBarItem(
      activeIcon: GradiantView(child:  SvgPicture.asset(settingsIcon)),
      icon: SvgPicture.asset(settingsIcon),
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
      backgroundColor: MyColors.backgroundColor,
      extendBody: true,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: MyColors.whiteColor,
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
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
