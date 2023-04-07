import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';

import 'package:theeaster/views/home/home_page.dart';





class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
  }

  class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 15);
      return Timer(duration, () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) {
            return HomePage();
          }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor:Colors.black,
        body: Center(
         child: ShaderMask(
           blendMode:  BlendMode.srcATop,
           shaderCallback: (Rect bounds) {
             return LinearGradient(
                 colors: [Colors.purple, Colors.white, Color(0xffF6820E)]).createShader(bounds);
           },
           child:SizedBox(
             width: 250.0,
             child: DefaultTextStyle(
               style: const TextStyle(
                 fontSize: 30.0,
                 fontFamily: 'Bobbers',
               ),
               child: AnimatedTextKit(
                 animatedTexts: [
                   TyperAnimatedText('Happy Easter everyone,'),
                   TyperAnimatedText('It is not enough to do your best,'),
                   TyperAnimatedText('Major General victor.C.O '),
                   TyperAnimatedText(' Wish you prosperity and good health'),
                   TyperAnimatedText(' I love you all'),
                   TyperAnimatedText(' LONG LIFE'),
                   TyperAnimatedText(' Stay Safe'),
                 ],
                 onTap: () {
                   print("Tap Event");
                 },
               ),
             ),
           )
         )
        )
         );
           //   Text('''
         //   Happy Easter everyone
         //        Major General victor.C.O
         //        Wish you prosperity and good health
         // I love you all
         // LONG LIFE
         // Stay Safe
         //   ''',style: TextStyle(fontSize: 50,fontStyle: FontStyle.italic),),

    }
  }


