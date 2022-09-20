
import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';

class AddNewDevice extends StatelessWidget {
  const AddNewDevice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: Container(
        height:  55,
        width: double.maxFinite,
        color: const Color(0xFFF2F2F2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.add,
              color: Color(0xFFBDBDBD),
            ),
            Text(
              insertNewDeviceString,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
