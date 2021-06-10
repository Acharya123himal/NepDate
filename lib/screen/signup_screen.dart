import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prishma_dating_app/widgets/widgets.dart';
import 'screens.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool termsCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeede4),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
            child: Text(
              'Create a new account',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xffbd00a1),
                  child: Icon(
                    FontAwesomeIcons.envelope,
                    size: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text(
                    'Email/ Phone Number',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
            child: Neumorphic(
              drawSurfaceAboveChild: false,
              style: NeumorphicStyle(
                depth: -20,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: TextField(
                  obscureText: true,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xffbd00a1),
                  child: Icon(
                    FontAwesomeIcons.key,
                    size: 18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text(
                    'Password',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
            child: Neumorphic(
              drawSurfaceAboveChild: false,
              style: NeumorphicStyle(
                depth: -20,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: TextField(
                  obscureText: true,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xffbd00a1),
                  child: Icon(
                    FontAwesomeIcons.key,
                    size: 18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text(
                    'Confirm Password',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
            child: Neumorphic(
              drawSurfaceAboveChild: false,
              style: NeumorphicStyle(
                depth: -20,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: TextField(
                  obscureText: true,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GradientButton(Text('Sign Up'), Feed()),
          Row(
            children: [
              Neumorphic(
                child: NeumorphicCheckbox(
                  style:
                      NeumorphicCheckboxStyle(selectedColor: Colors.blueGrey),
                  value: termsCheck,
                  onChanged: (value) {
                    setState(
                      () {
                        if (termsCheck == false) {
                          termsCheck = true;
                        } else
                          termsCheck = false;
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text('I have agreed to Terms and Condition'),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NeumorphicButton(
                style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.stadium(),
                ),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                child: Text(
                  "f",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  _fbLogin();
                },
              ),
              SizedBox(
                width: 10,
              ),
              NeumorphicButton(
                style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.stadium(),
                ),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                child: Text(
                  "g",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  _googleLogin();
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text("Already Have Account? Log In"),
          )
        ],
      ),
    );
  }

  _fbLogin() {
    //Fb Login Here
  }
  _googleLogin() {
    //Fb Login Here
  }
}
