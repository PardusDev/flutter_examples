import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPageVPN extends StatefulWidget {
  const LoginPageVPN({super.key});

  @override
  State<LoginPageVPN> createState() => _LoginPageVPNState();
}

class _LoginPageVPNState extends State<LoginPageVPN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                color: Color.fromRGBO(241, 246, 246, 1.0),
                child: SafeArea(
                    child: Image.network(
                  'https://i.ibb.co/6ZJKBBf/login-vpn-1.png',
                ))),
            SizedBox(height: 40),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Stay Anonymous and Safe",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 32.0),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "You can browse sites all over the world\nsecurely with NetVPN",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 20,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(49, 149, 144, 1.0),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      
                    ),
                    SizedBox(width: 5,),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade200
                      ),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade200
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(350, 65),
                    foregroundColor: Colors.black,
                    textStyle: TextStyle(fontSize: 22.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {},
                  label: Text(
                    "Continue with Facebook",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  icon: Icon(
                    Icons.facebook,
                    color: Colors.blue,
                    size: 32,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(350, 65),
                    foregroundColor: Colors.black,
                    textStyle: TextStyle(fontSize: 22.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {},
                  label: Text(
                    "Continue with Google",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  icon: FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.green,
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        height: 20,
                        thickness: 2,
                        indent: 30,
                        endIndent: 15,
                        color: Colors.grey.shade200,
                      ),
                    ),
                    Text("or", style: TextStyle(color: Colors.grey.shade400, fontSize: 18, fontWeight: FontWeight.w500),),
                    Expanded(
                      child: Divider(
                        height: 20,
                        thickness: 2,
                        indent: 15,
                        endIndent: 30,
                        color: Colors.grey.shade200,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(350, 65),
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromRGBO(49, 149, 144, 1.0),
                    textStyle: TextStyle(fontSize: 22.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Registration",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
