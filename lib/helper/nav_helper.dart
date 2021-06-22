import 'package:flutter/material.dart';

dynamic navHelper(context, routeName) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => routeName),
  );
}
