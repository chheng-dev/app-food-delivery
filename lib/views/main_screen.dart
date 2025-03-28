import 'package:flutter/material.dart';
import 'package:food_delivery/views/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    Center(child: Text('Grid Page')),
    Center(child: Text('Cart Page')),
    Center(child: Text('People Page')),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false, 
        showUnselectedLabels: false, 
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value; 
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_sharp),
            label: "Grid"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded),
            label: "Shop"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_sharp),
            label: "User"
          ),
        ],
      ),
    );
  }
}