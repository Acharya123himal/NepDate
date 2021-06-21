import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prishma_dating_app/strings.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffeeede4),
        body: Column(
          children: [
            Container(
              color: Color(0xFF928C80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      radius: 30,
                      foregroundImage: NetworkImage(
                        dpImageUrl,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 5,
                    child: Text("Hello, Sadish"),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      FontAwesomeIcons.solidComment,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      FontAwesomeIcons.ellipsisH,
                      size: 20,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    color: Colors.white70,
                    child: Column(
                      children: [
                        Image(
                          image: NetworkImage(
                              'https://webdroidit.com/wp-content/uploads/2021/05/himal.jpg'),
                        ),
                        Text(
                          'Himal Acharya',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffBD00A1)),
                        ),
                        Text(
                          'I am cool',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff484848)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Flutter Developer',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff4D4D4D)),
                            ),
                            Text(
                              'Travelling',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff4D4D4D)),
                            ),
                            Text(
                              'Music',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff4D4D4D)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 17,
                    child: Icon(
                      FontAwesomeIcons.solidHeart,
                      color: Colors.red,
                      size: 20,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 17,
                    child: Icon(FontAwesomeIcons.redoAlt),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 17,
                    child: Icon(
                      FontAwesomeIcons.heartBroken,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
