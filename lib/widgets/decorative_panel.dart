import 'package:flutter/cupertino.dart';

import '../animation/fade_animation.dart';


class DecorativeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Stack(
        children: [
          Positioned(
              child: FadeAnimation(
            delay: 1,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('assets/images/background.png'))),
            ),
          ))
        ],
      ),
    );
  }
}
