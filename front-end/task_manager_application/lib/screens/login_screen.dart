import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(190, 33, 149, 243),
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontFamily: "OpenSans",
                  ),
                ),
                height: 55.0,
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  "Email:",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontFamily: "OpenSans",
                  ),
                ),
                height: 55.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.blue,
                child: TextField(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
