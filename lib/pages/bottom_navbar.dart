import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BottomNavigationBar(
          selectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          iconSize: 32.0,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_rounded),
                label: "Save",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.article_outlined),
                label: "News"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: "Account"
            ),
          ]
        ),
      ),
    );
  }
}
