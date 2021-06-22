import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:prishma_dating_app/strings.dart';
import 'package:prishma_dating_app/widgets/appBar.dart';

class SingleMessage extends StatefulWidget {
  final String userName;
  final String message;
  SingleMessage(this.userName, this.message);

  @override
  _SingleMessageState createState() => _SingleMessageState(userName, message);
}

class _SingleMessageState extends State<SingleMessage> {
  final String userName;
  final String message;
  _SingleMessageState(this.userName, this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            CustomAppBar(0xffbd00a1, '', userName, null, Icons.info),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image(
                    image: NetworkImage(dpImageUrl),
                    height: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                  ),
                  padding: EdgeInsets.all(18.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(message),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                  ),
                  padding: EdgeInsets.all(18.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(message),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image(
                    image: NetworkImage(dpImageUrl),
                    height: 40,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image(
                    image: NetworkImage(dpImageUrl),
                    height: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                  ),
                  padding: EdgeInsets.all(18.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(message),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                  ),
                  padding: EdgeInsets.all(18.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(message),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image(
                    image: NetworkImage(dpImageUrl),
                    height: 40,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
