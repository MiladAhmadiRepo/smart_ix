import 'package:flutter/material.dart';

import '../../config/colors.dart';

class SmartLabel extends StatelessWidget {
  final String label;
  const SmartLabel(this.label,{
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.headline1!.copyWith(
            fontSize: 45,
            fontFamily: "Poppins",
            color: color_17.withOpacity(0.5),
          ),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.headline1!.copyWith(
            fontFamily: "Lexend",
            fontSize: 50,
          ),
        ),
      ],
    );
  }
}
