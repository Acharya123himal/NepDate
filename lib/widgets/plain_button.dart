import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Widget route;
  final Widget function;
  Button(this.function, this.route);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xffbd00a1),
          ),
          child: function,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => route),
            );
          },
        ),
      ),
    );
  }
}
