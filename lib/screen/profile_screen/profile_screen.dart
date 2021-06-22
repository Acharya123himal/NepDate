import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:prishma_dating_app/helper/nav_helper.dart';
import 'package:prishma_dating_app/screen/feed_screen/feedScreen.dart';
import 'package:prishma_dating_app/strings.dart';
import 'package:prishma_dating_app/widgets/gradient_button.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffbd00a1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NeumorphicButton(
                  style: NeumorphicStyle(
                    color: Color(0xffbd00a1),
                    shape: NeumorphicShape.convex,
                    boxShape: NeumorphicBoxShape.circle(),
                  ),
                  onPressed: () {
                    setState(() {
                      navHelper(context, FeedScreen());
                    });
                  },
                  padding: EdgeInsets.all(18.0),
                  child: Icon(
                    Icons.arrow_back,
                    size: 20,
                  ),
                ),
                NeumorphicButton(
                  style: NeumorphicStyle(
                    color: Color(0xffbd00a1),
                    shape: NeumorphicShape.convex,
                    boxShape: NeumorphicBoxShape.circle(),
                  ),
                  onPressed: () {
                    setState(() {
                      navHelper(context, FeedScreen());
                    });
                  },
                  padding: EdgeInsets.all(18.0),
                  child: Icon(
                    Icons.settings,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.728,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 300,
                        ),
                        Text('Himal Acharya'),
                        Text('Flutter Developer'),
                        Text('himalacharya12377@gmail.com'),
                        Text('Coding'),
                        Text('Making New Friend'),
                        Text('Travelling'),
                        GradientButton(Text('Update Your Profile'), null),
                      ],
                    ),
                  ),
                ),
              ),
              Neumorphic(
                style: NeumorphicStyle(
                  color: Color(0xffbd00a1),
                  shape: NeumorphicShape.convex,
                  boxShape: NeumorphicBoxShape.circle(),
                ),
                padding: EdgeInsets.all(18.0),
                child: Image(
                  image: NetworkImage(dpImageUrl),
                  height: MediaQuery.of(context).size.height * 0.5,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
