import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../animation/fade_animation.dart';


class WelcomeTextSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      delay: 1,
      child: Text(
        'Hello there, \nWelcome back',
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
