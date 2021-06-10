import 'package:flutter/material.dart';
import 'package:prishma_dating_app/screen/screens.dart';
import 'package:prishma_dating_app/strings.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prishma_dating_app/widgets/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeede4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Welcome to $appName',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
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
          SizedBox(
            height: 10,
          ),
          GradientButton(Text('Login'), Feed()),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUpScreen()),
              );
            },
            child: Text("Don't have an account? Sign Up"),
          )
        ],
      ),
    );
  }
}
