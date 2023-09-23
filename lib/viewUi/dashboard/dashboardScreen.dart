import 'package:flutter/material.dart';
import 'package:instagram_pro_max/commonUtils/commonUtils.dart';
import 'package:instagram_pro_max/viewUi/Profile/Profile.dart';
import 'package:instagram_pro_max/viewUi/home/homeScreen.dart';

class DashboardScreen extends StatefulWidget {
  final int currentIndex;

  const DashboardScreen({super.key, required this.currentIndex});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const Profile(),
    const Profile(),
    const Profile(),
    const Profile(),
  ];

  @override
  void initState() {
    _selectedIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context).width;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: size * 0.05),
            activeIcon: Icon(Icons.home, size: size * 0.05),
            label: 'Home',
            // backgroundColor: Colors.green
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined, size: size * 0.05),

            activeIcon: Icon(Icons.search_outlined, size: size * 0.05),

            label: 'Category',
            // backgroundColor: Colors.yellow
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: size * 0.05,
            ),
            activeIcon: Icon(
              Icons.settings,
              size: size * 0.05,
            ),
            label: 'Orders',
            // backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              size: size * 0.05,
            ),
            activeIcon: Icon(
              Icons.shopping_bag_outlined,
              size: size * 0.05,
            ),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: Colors.red.shade200,
              radius: size * 0.05,
              child: CircleAvatar(
                backgroundImage: const NetworkImage(
                    'https://c.ndtvimg.com/2021-02/s10oapdo_budget-2021-memes-budget-jokes_625x300_01_February_21.jpg'),
                radius: size * 0.04,
                backgroundColor: Colors.black,
              ),
            ),
            activeIcon: CircleAvatar(
              backgroundColor: Colors.red.shade200,
              radius: size * 0.05,
              child: CircleAvatar(
                backgroundImage: const NetworkImage(
                    'https://c.ndtvimg.com/2021-02/s10oapdo_budget-2021-memes-budget-jokes_625x300_01_February_21.jpg'),
                radius: size * 0.04,
                backgroundColor: Colors.black,
              ),
            ),
            label: 'Account',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: themeColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        iconSize: 20,
        elevation: 5,
        onTap: _onItemTapped,
      ),
      body: SafeArea(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      if (index == 0 || index == 1 || index == 3 || index == 4) {
        _selectedIndex = index;
      }
    });
  }
}
