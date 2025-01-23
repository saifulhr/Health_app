import 'package:flutter/material.dart';
import 'package:healthdemo_app/screens/calendar/calendar_page.dart';
import 'package:healthdemo_app/screens/home/home_page.dart';
import 'package:healthdemo_app/screens/person/person_page.dart';
import 'package:healthdemo_app/screens/text/text_page.dart';

class BottomnavPage extends StatefulWidget {
  const BottomnavPage({super.key});

  @override
  State<BottomnavPage> createState() => _BottomnavPageState();
}

class _BottomnavPageState extends State<BottomnavPage> {
  int _selectedindex = 0;
  final List<Widget> screens = [
    HomePage(),
    CalendarPage(),
    TextPage(),
    PersonPage(),
  ];
  void onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff5873d8),
        unselectedItemColor: Colors.black26,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedindex,
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/home1.png',
              height: 22,
              width: 22,
              fit: BoxFit.cover,
              color: _selectedindex == 0 ? Color(0xff5873d8) : Colors.black26,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/calendar.png',
              height: 22,
              width: 22,
              fit: BoxFit.cover,
              color: _selectedindex == 1 ? Color(0xff5873d8) : Colors.black26,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/text.png',
              height: 22,
              width: 22,
              fit: BoxFit.cover,
              color: _selectedindex == 2 ? Color(0xff5873d8) : Colors.black26,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/person.png',
              height: 22,
              width: 22,
              fit: BoxFit.cover,
              color: _selectedindex == 3 ? Color(0xff5873d8) : Colors.black26,
            ),
            label: '',
          ),
        ],
      ),
   );
  }
}
