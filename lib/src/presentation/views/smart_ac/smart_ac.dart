import 'package:flutter/material.dart';
import 'body.dart';

class SmartAC extends StatelessWidget {
  const SmartAC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: Body(),
    );
  }
}
