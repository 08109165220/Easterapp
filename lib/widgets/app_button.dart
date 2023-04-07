import 'package:flutter/cupertino.dart';

import '../config/app_colors.dart';


class AppButton extends StatelessWidget {
  final String text;

  AppButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 60),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: buttonColor),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: whiteColor),
        ),
      ),
    );
  }
}
