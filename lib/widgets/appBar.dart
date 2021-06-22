import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prishma_dating_app/helper/nav_helper.dart';
import 'package:prishma_dating_app/screen/message_screen/message_screen.dart';
import 'package:prishma_dating_app/screen/profile_screen/profile_screen.dart';

class CustomAppBar extends StatelessWidget {
  final int color;
  final String image;
  final String title;
  final IconData firstIcon;
  final IconData secondIcon;
  CustomAppBar(
      this.color, this.image, this.title, this.firstIcon, this.secondIcon);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Color(color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              navHelper(context, ProfileScreen());
            },
            child: image == ''
                ? SizedBox()
                : CircleAvatar(
                    radius: 30,
                    foregroundImage: NetworkImage(
                      image,
                    ),
                  ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 5,
            child: Text(title),
          ),
          GestureDetector(
            onTap: () {
              navHelper(context, MessageScreen());
            },
            child: Icon(
              firstIcon,
              color: Colors.black,
              size: 30,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              if (secondIcon == Icons.info) {
                navHelper(context, ProfileScreen());
              } else if (secondIcon == FontAwesomeIcons.ellipsisH) {
                // navHelper(context, routeName)
              }
            },
            child: Icon(
              secondIcon,
              size: 30,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
