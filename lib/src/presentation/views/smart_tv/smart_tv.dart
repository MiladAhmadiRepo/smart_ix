
import 'package:flutter/material.dart';

import 'components/body.dart';

class SmartTV extends StatelessWidget {
  static String routeName = '/smart-tv';
  const SmartTV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: Body(
        // model: model,
      ),
    );
  }
}
