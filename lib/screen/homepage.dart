import 'package:flutter/material.dart';
import 'package:prishma_dating_app/screen/login_screen.dart';
import 'package:prishma_dating_app/widgets/plain_button.dart';
import 'package:prishma_dating_app/strings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String appname = '$appName';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffbd00a1),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: Text(
                '$appname',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              '$appSlogan',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          Image(
            image: AssetImage(
              'assets/background_crowd.png',
            ),
            height: MediaQuery.of(context).size.height * 0.75,
            // width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: 10,
          ),
          Button(Text('Get Started'), LoginScreen()),
        ],
      ),
    );
  }
}
