import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:satsang_app/screens/home/profile.dart';
import 'package:satsang_app/screens/wrapper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Business',
      style: optionStyle,
    ),
    ProfileInfo()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:_widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 40.0),
        child: BottomNavigationBar(

          elevation: 0.0,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home,
                size: 40.0,),
                label: 'Home',

              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 40.0,),
                label: 'Profile',
              ),

            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,

            onTap: _onItemTapped
        ),
      )

    );
  }
}
