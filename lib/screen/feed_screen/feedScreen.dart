import 'package:flutter/material.dart';
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
            
          ],
        ),
      ),
    );
  }
}
