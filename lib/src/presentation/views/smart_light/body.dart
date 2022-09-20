import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_ix/src/presentation/blocs/home/home_bloc.dart';
import 'package:smart_ix/src/presentation/widgets/switch_widget.dart';

import '../../../core/constants.dart';
import '../../widgets/SmartLabel.dart';
import '../../widgets/intensity_slider.dart';
import '../../widgets/mood_toggle_buttons.dart';

class Body extends StatefulWidget {
  Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // bool switchOnOff = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 40),
                                InkWell(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Icon(Icons.arrow_back_outlined)),
                                const SmartLabel(smartLightString),
                                const SizedBox(height: 26),
                                SwitchWidget(context.read<HomeBloc>().switchSmartLight,
                                    SwitchSmartLightEvent()),
                                const SizedBox(height: 90),
                                Text(colorString,
                                    style: Theme.of(context).textTheme.headline2!.copyWith(
                                          fontFamily: "Lexend",
                                          fontSize: 30,
                                        )),
                                const SizedBox(height: 7),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(colorWheelPath, height: 22),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Image.asset(
                          lampPath,
                          height: 180,
                          width: 140,
                          fit: BoxFit.contain,
                        ),
                        context.read<HomeBloc>().switchSmartLight
                            ? Image.asset(
                                purplePath,
                                height: 190,
                                width: 140,
                                fit: BoxFit.contain,
                                alignment: Alignment.topCenter,
                              )
                            : const SizedBox(height: 190, width: 140),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MoodToggleButtons(toneGlowString, [
                      warmString,
                      coldString,
                    ]),
                    const SizedBox(height: 20),
                    Intensity(),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
