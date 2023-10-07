import 'package:flutter/material.dart';

Future removeNavigate(BuildContext context, Widget child) {
  return Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (_) => child,
    ),
        (route) => false,
  );
}

Future navigate(BuildContext context, Widget child) {
  return Navigator.push(context, MaterialPageRoute(builder: (_) => child));
}