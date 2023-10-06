import 'package:flutter/material.dart';

class AIInformationScreen extends StatelessWidget {
  const AIInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(31, 31, 31, 1.0),
      appBar: AppBar(
        title: Text("Explore", style: TextStyle(fontSize: 26),),
        leading: Icon(Icons.arrow_back),
        backgroundColor: Color.fromRGBO(31, 31, 31, 1.0),
        shadowColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InformationContainer(icon: Icon(Icons.language, color: Colors.purple, size: 42,), title: "Translation", desc: "Can provide fast and accurate translations from one language to another",),
              SizedBox(height: 10,),
              InformationContainer(icon: Icon(Icons.code, color: Colors.blue, size: 42,), title: "Coding", desc: "Helps with syntax, provides code debugging, and gives advice an how to improve code effiency",),
              SizedBox(height: 10,),
              InformationContainer(icon: Icon(Icons.search, color: Colors.yellow, size: 42,), title: "Finding information", desc: "Assistant uses his database to find the most relevant results",),
              SizedBox(height: 10,),
              InformationContainer(icon: Icon(Icons.accessibility, color: Colors.deepOrange, size: 42,), title: "Accessibility", desc: "ChatGPT is made accessible through an API and web-based platforms, making it easy for developers and users to access",),
            ],
          ),
        ),
      ),
    );
  }
}

class InformationContainer extends StatelessWidget {
  final Icon icon;
  final String title;
  final String desc;

  const InformationContainer({super.key, required this.icon, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(25, 25, 25, 1.0),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, right: 16.0, bottom: 30.0, left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                this.icon,
                Icon(Icons.more_horiz_rounded, color: Colors.white,)
              ],
            ),
            SizedBox(height: 20,),
            Text(this.title, style: TextStyle(color: Colors.white, fontSize: 18),),
            SizedBox(height: 8,),
            Text(this.desc, style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 12),),
          ],
        ),
      ),
    );
  }
}
