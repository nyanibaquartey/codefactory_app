import 'package:codefactory_app/profile.dart';
import 'package:codefactory_app/settings.dart';
import 'package:codefactory_app/your_courses.dart';
import 'package:flutter/material.dart';


class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> screens = [
      const YourCourses(),
      const Profile(),
      const Settings()
    ];

    void onTapItem(int index){
      setState(() {
        _selectedItem = index;
      });
    }

    return Scaffold(
      body: screens[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapItem,
          currentIndex: _selectedItem,
          selectedItemColor: Colors.deepOrangeAccent,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          elevation: 10,
          items: const [
        BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Courses"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
      ]),
    );
  }
}
