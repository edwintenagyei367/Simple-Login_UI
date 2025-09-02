import 'package:flutter/material.dart';

class MyIcons extends StatelessWidget {
  final String path;
  const MyIcons({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: Colors.grey[200]
        ),
        child: Image.asset(path, height: 46))
      );
  }
}