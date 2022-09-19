
import 'package:flutter/material.dart';

import '../../../config/colors.dart';
import 'components/body.dart';

class SmartTV extends StatelessWidget {
  const SmartTV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: color_15,
      body: Body(),
    );
  }
}
