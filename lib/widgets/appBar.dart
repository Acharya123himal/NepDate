import 'package:flutter/material.dart';

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
          Expanded(
            flex: 1,
            child: CircleAvatar(
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
          Expanded(
            flex: 1,
            child: Icon(
              firstIcon,
              color: Colors.black,
            ),
          ),
          Expanded(
            flex: 1,
            child: Icon(
              secondIcon,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
