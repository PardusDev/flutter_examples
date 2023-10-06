import 'package:flutter/material.dart';

class WMenuList extends StatelessWidget {
  const WMenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            height: 240,
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 30.0,
                offset: Offset(0, 8)
              )]
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Notifications", style: TextStyle(color: Colors.black54, fontSize: 20),),
                          Icon(Icons.keyboard_arrow_right, color: Colors.black54, size: 34,)
                        ],
                      ),
                      icon: Icon(Icons.alarm_on_sharp, color: Colors.black54, size: 34,),
                  ),
                  Divider(),
                  TextButton.icon(
                    onPressed: () {},
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Language", style: TextStyle(color: Colors.black54, fontSize: 20),),
                        Icon(Icons.keyboard_arrow_right, color: Colors.black54, size: 34,)
                      ],
                    ),
                    icon: Icon(Icons.language, color: Colors.black54, size: 34,),
                  ),
                  Divider(),
                  TextButton.icon(
                    onPressed: () {},
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("FAQ", style: TextStyle(color: Colors.black54, fontSize: 20),),
                        Icon(Icons.keyboard_arrow_right, color: Colors.black54, size: 34,)
                      ],
                    ),
                    icon: Icon(Icons.book_rounded, color: Colors.black54, size: 34,),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
