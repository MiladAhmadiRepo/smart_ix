import 'package:flutter/material.dart';

import '../../../blocs/home_screen_view_model.dart';

class SavingsContainer extends StatelessWidget {
  const SavingsContainer({Key? key, required this.model}) : super(key: key);

  final HomeScreenViewModel model;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height:  85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xFFFFFFFF),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal:  10,
              vertical:  6,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Energy Saving',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '+35%',
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            color: Colors.green,
                          ),
                    ),
                    SizedBox(
                      height:  5,
                    ),
                    Text(
                      '23.5 kWh',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
                SizedBox(
                  width:  90,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: Image.asset(
            'assets/images/thunder.png',
            height:  100,
            width:  140,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
