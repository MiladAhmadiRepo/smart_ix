import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:smart_ix/src/core/constants.dart';

import '../../blocs/home/home_bloc.dart';
import '../../widgets/SmartLabel.dart';
import '../../widgets/mood_toggle_buttons.dart';
import '../../widgets/switch_widget.dart';

class Body extends StatelessWidget {

  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 19, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(Icons.arrow_back_outlined)),
                const SmartLabel(airConditionerString),
                SizedBox(height: 30),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SleekCircularSlider(
              min: 5,
              max: 40,
              initialValue: 23,
              appearance: CircularSliderAppearance(
                size: 200,
                startAngle: 250,
                angleRange: 360,
                customColors: CustomSliderColors(
                  trackColor: const Color(0xFFBDBDBD),
                  progressBarColor: const Color(0xFF464646),
                  shadowColor: const Color(0xFFBDBDBD).withOpacity(0.1),
                  shadowMaxOpacity: 1,
                  shadowStep: 10,
                ),
                customWidths: CustomSliderWidths(
                  progressBarWidth: 15,
                  handlerSize: 20,
                  trackWidth: 15,
                  shadowWidth: 20,
                ),
              ),
              onChange: (double value) {
                // callback providing a value while its being changed (with a pan gesture)
              },
              onChangeStart: (double startValue) {
                // callback providing a starting value (when a pan gesture starts)
              },
              onChangeEnd: (double endValue) {
                // ucallback providing an ending value (when a pan gesture ends)
              },
              innerWidget: (double value) {
                return Padding(
                  padding: EdgeInsets.only(left: 12, top: 45),
                  child: Column(
                    children: [
                      Text(
                        '${value.toInt()}°',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Text(
                        'Celcius',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 30),
          SwitchWidget(context.read<HomeBloc>().switchAc,
              SwitchAcEvent()),
          SizedBox(height: 30),
          MoodToggleButtons(modeString, [
            airString,
            coolString,
            ecoString,
            hotString,
          ]),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
