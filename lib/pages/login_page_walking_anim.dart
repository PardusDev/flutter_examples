import 'package:flutter/material.dart';

class LoginPageWalkingAnimation extends StatefulWidget {
  const LoginPageWalkingAnimation({super.key});

  @override
  State<LoginPageWalkingAnimation> createState() =>
      _LoginPageWalkingAnimationState();
}

class _LoginPageWalkingAnimationState extends State<LoginPageWalkingAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 120),
              Image.network(
                  "https://cdn.dribbble.com/users/516449/screenshots/4959355/media/191d0267fb8c33e7a2cc7b1cf45ec00d.gif"),
              SizedBox(height: 40),
              TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: "Username or e-mail",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIcon:
                        Icon(Icons.person, color: Colors.black, size: 18),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey.shade200, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    floatingLabelStyle:
                        TextStyle(color: Colors.black, fontSize: 18),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.5),
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(height: 20),
              TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIcon: Icon(Icons.key, color: Colors.black, size: 18),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey.shade200, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    floatingLabelStyle:
                        TextStyle(color: Colors.black, fontSize: 18),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.5),
                        borderRadius: BorderRadius.circular(10))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text("Forgot Password?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )))
                ],
              ),
              SizedBox(height: 30),
              MaterialButton(
                  onPressed: () {},
                  height: 45,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.black,
                  child: Text("Login",
                      style: TextStyle(
                        color: Colors.white,
                      ))),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don\'t have an account?", style: TextStyle(color: Colors.grey.shade600, fontSize: 14)),
                  TextButton(onPressed: () {}, child: Text("Register", style: TextStyle(color: Colors.blue, fontSize: 14.0, fontWeight: FontWeight.w600)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
