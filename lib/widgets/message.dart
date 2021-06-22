import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:prishma_dating_app/helper/nav_helper.dart';
import 'package:prishma_dating_app/screen/message_screen/single_message.dart';
import 'package:prishma_dating_app/strings.dart';

class Message extends StatelessWidget {
  final userName;
  final message;
  Message(this.userName, this.message);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: NeumorphicButton(
        onPressed: () {
          navHelper(context, SingleMessage(userName, message));
        },
        style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image(
                image: NetworkImage(dpImageUrl),
                height: 30,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text(
                  userName,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Text(
                  message,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
