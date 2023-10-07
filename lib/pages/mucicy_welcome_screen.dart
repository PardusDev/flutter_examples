import 'package:flutter/material.dart';

class MucicyWelcomeScreen extends StatefulWidget {
  const MucicyWelcomeScreen({super.key});

  @override
  State<MucicyWelcomeScreen> createState() => _MucicyWelcomeScreenState();
}

class _MucicyWelcomeScreenState extends State<MucicyWelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Image.network('https://images.pexels.com/photos/1699161/pexels-photo-1699161.jpeg', height: double.infinity, fit: BoxFit.fitHeight,),
            Padding(
              padding: const EdgeInsets.only(top: 36.0, right: 22.0, bottom: 22.0, left: 22.0),
              child: RichText(text: TextSpan(
                  children: [
                    TextSpan(text: "The ", style: TextStyle(color: Colors.white, fontSize: 62, fontWeight: FontWeight.w700),),
                    TextSpan(text: "rhythm ", style: TextStyle(color: Color.fromRGBO(168, 231, 121, 1.0), fontSize: 62, fontWeight: FontWeight.w700),),
                    TextSpan(text: "of life with the ", style: TextStyle(color: Colors.white, fontSize: 62, fontWeight: FontWeight.w700),),
                    TextSpan(text: "Music\n", style: TextStyle(color: Color.fromRGBO(168, 231, 121, 1.0), fontSize: 62, fontWeight: FontWeight.w700),),
                    TextSpan(text: "in your\nlife", style: TextStyle(color: Colors.white, fontSize: 62, fontWeight: FontWeight.w700),),
                  ]
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 26, height: 26, child: Image.network('https://i.hizliresim.com/j8y1za8.png')),
                  SizedBox(width: 12,),
                  Text("Mucicy.", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0, right: 16.0, bottom: 32.0, left: 16.0),
                child: MaterialButton(
                    onPressed: () {},
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text("Explore", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
