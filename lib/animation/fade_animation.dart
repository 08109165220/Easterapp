import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_animations/animation_builder/loop_animation_builder.dart';
import 'package:simple_animations/movie_tween/movie_tween.dart';



class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation({required this.delay, required this.child});

  @override
  Widget build(BuildContext context) {
    final tween2 = MovieTween()
      ..scene(
          begin: const Duration(milliseconds: 0),
          duration: const Duration(milliseconds: 500))
          .tween('width', Tween<double>(begin: 0.0, end: 400.0))
          .tween('height', Tween<double>(begin: 500.0, end: 200.0))
          .tween('color', ColorTween(begin: Colors.red, end: Colors.blue))
      ..scene(
          begin: const Duration(milliseconds: 700),
          end: const Duration(milliseconds: 1200))
          .tween('width', Tween<double>(begin: 400.0, end: 500.0));

    return LoopAnimationBuilder<double>(
      tween: Tween(begin: 5.0, end:2.12 ), // 0° to 360° (2π)
      duration: const Duration(seconds: 2), // for 2 seconds per iteration
      builder: (context, value, _) {
        return Transform.rotate(
          angle: value, // use value
          child: Container(decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.orange,Colors.green,Colors.blue,])
          ),
               width: 70, height: 70),
        );
      },
    );
  }
}

