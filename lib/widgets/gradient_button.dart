import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

class GradientButton extends StatelessWidget {
  final Widget route;
  final Widget function;
  GradientButton(this.function, this.route);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: GradientColors.darkPink),
          // colors: [Color(0xffb901a2),Color(0xff8e00bc)],
        ),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => route),
            );
          },
          child: function,
        ),
      ),
    );
  }
}
