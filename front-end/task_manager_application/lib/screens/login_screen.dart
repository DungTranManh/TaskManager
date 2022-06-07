// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_manager_application/screens/home_screen.dart';
import 'package:task_manager_application/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final getEmailInput = TextEditingController();
  final getPasswordInput = TextEditingController();
  String _urlFacebookIcon =
      'https://cdchuaphucsinh.org/wp-content/uploads/2021/11/facebook-icon.png';
  String _urlGoogleIcon =
      'https://upload.wikimedia.org/wikipedia/commons/0/09/IOS_Google_icon.png';
  // ignore: non_constant_identifier_names
  Widget _InputEmail() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(top: 40.0, left: 25.0),
          child: Text(
            "Email:",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "OpenSans",
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(9.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: TextField(
              controller: getEmailInput,
              style: TextStyle(color: Colors.white),
              obscureText: false,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Colors.white,
                ),
                border: InputBorder.none,
                hintText: " Enter your Email...",
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontFamily: "OpenSans",
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _InputPassword() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(top: 40.0, left: 25.0),
          child: Text(
            "Password:",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "OpenSans",
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(9.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: TextField(
              controller: getPasswordInput,
              style: TextStyle(color: Colors.white),
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Colors.white,
                ),
                border: InputBorder.none,
                hintText: " Enter your Password...",
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontFamily: "OpenSans",
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _SubmitButton() {
    return Column(
      children: [
        SizedBox(height: 30.0),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          child: MaterialButton(
            elevation: 7.0,
            child: Text(
              "Sign In",
              style: TextStyle(
                fontFamily: "OpenSans",
                color: Colors.blue,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            color: Colors.white,
            padding: EdgeInsets.all(15.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
          ),
        )
      ],
    );
  }

  Widget _SocialNetworkLogin(_urlIcon) {
    return GestureDetector(
      onTap: () {
        if (_urlIcon == _urlFacebookIcon) {
          print("Login with Facebook Account");
        } else {
          print("Login with Google Account");
        }
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 6.0,
              offset: Offset(0, 2),
            ),
          ],
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(_urlIcon),
          ),
        ),
      ),
    );
  }

  Widget _SignUpButton() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RegisterScreen()),
        );
      },
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an Account? ',
              style: TextStyle(
                color: Colors.white,
                fontFamily: "OpenSans",
              ),
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: Colors.white,
                fontFamily: "OpenSans",
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: (() => FocusScope.of(context).unfocus()),
          child: Scaffold(
            backgroundColor: Color(0xff6ebbe8),
            body: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: 70.0,
                    ),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontFamily: "OpenSans",
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  _InputEmail(),
                  _InputPassword(),
                  _SubmitButton(),
                  SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    "- OR -",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "OpenSans",
                      fontWeight: FontWeight.w400,
                      fontSize: 10.0,
                    ),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    "Sign in with",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "OpenSans",
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _SocialNetworkLogin(_urlFacebookIcon),
                      _SocialNetworkLogin(_urlGoogleIcon),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  _SignUpButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
