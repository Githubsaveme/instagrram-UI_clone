import 'package:flutter/material.dart';
import 'package:instagram_pro_max/viewUi/Profile/Profile.dart';
import 'package:instagram_pro_max/viewUi/dashboard/dashboardScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(
        currentIndex: 0
      ),
    );
  }
}
