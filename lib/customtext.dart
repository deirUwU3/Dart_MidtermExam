import 'package:flutter/material.dart';

class Centertext extends StatelessWidget {
  const Centertext({
    super.key,
    required this.name,
    required this.colorname,
    required this.textcolorname,
  });
 
  final String name;
  final Color colorname;
  final Color textcolorname;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorname,
      child: Text(
        name,
        style: TextStyle(
          color: textcolorname,
          fontSize: 25,
        ),
      ),
    );
  }
}



