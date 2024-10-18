import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hala/pages/login.dart';
import 'package:hala/sitic/custom_color.dart';

import '../pages/home_page.dart';


class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  List<Widget>title=[

    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child:title[_currentIndex] ,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 7,
                  blurRadius: 12,
                  offset: Offset(0,3)
              )
            ]
        ),
        child: BottomNavigationBar(
          backgroundColor: CustomColor.NavColor,

          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [

            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: _currentIndex == 0 ? Colors.green : Colors.grey),
              label: 'حسابي',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.shoppingCart, color: _currentIndex == 1 ? Colors.green : Colors.grey),
              label: 'السلة',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: _currentIndex == 2 ? Colors.green : Colors.grey),
              label: 'المفضلة',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: _currentIndex == 3 ? Colors.green : Colors.grey),
              label: 'الرئيسية',
            ),
          ],
        ),
      ),
    );
  }
}
