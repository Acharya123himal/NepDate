import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prishma_dating_app/widgets/appBar.dart';
import 'package:prishma_dating_app/widgets/widgets.dart';

import '../../strings.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffeeede4),
        body: Column(
          children: [
            CustomAppBar(
              0xfffffff0,
              dpImageUrl,
              'Hello, Himal',
              FontAwesomeIcons.solidComment,
              FontAwesomeIcons.ellipsisH,
            ),
            Container(
              color: Color(0xffeeede4),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Message('himal', 'message'),
                    Message('himal', 'message'),
                    Message('himal', 'message'),
                    Message('himal', 'message'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
