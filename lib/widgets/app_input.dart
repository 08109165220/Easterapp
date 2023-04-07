import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../config/app_colors.dart';

class AppInput extends StatelessWidget {
  final String hintText;

  const AppInput({required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: borderColor))),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(12)),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.green)),
      ),
    );
  }
}
