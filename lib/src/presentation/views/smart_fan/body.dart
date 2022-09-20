import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_ix/src/core/constants.dart';

import '../../../config/colors.dart';
import '../../blocs/home/home_bloc.dart';
import '../../widgets/SmartLabel.dart';
import '../../widgets/mood_toggle_buttons.dart';
import '../../widgets/switch_widget.dart';


class Body extends StatefulWidget {
    Body({Key? key, }) : super(key: key);
  bool isFanOff = false;
  final List<bool> isSelected = [true, false, false];
  double speed = 2;
  final List<int> duration = [10000, 1000, 800, 600, 400, 200];
  int selectedIndex = 0;
  Color lightColor = const Color(0xFF7054FF);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final AnimationController _noController;

  int getDuration(double speed) {
    if (widget.speed == 0) return widget.duration[0].toInt();
    if (widget.speed > 0 && widget.speed <= 1) {
      return widget.duration[1].toInt();
    }
    if (widget.speed > 1 && widget.speed <= 2) {
      return widget.duration[2].toInt();
    }
    if (widget.speed > 2 && widget.speed <= 3) {
      return widget.duration[3].toInt();
    }
    if (widget.speed > 3 && widget.speed <= 4) {
      return widget.duration[4].toInt();
    }
    if (widget.speed > 4 && widget.speed <= 5) {
      return widget.duration[5].toInt();
    } else {
      return 0;
    }
  }

  @override
  void initState() {
    super.initState();
    _noController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1000),
    )..repeat();
    if (kDebugMode) {
      print(widget.speed);
    }
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: getDuration(widget.speed)),
    )..repeat();
  }

  void changespeed(AnimationController c) {
    c.duration = Duration(milliseconds: getDuration(widget.speed));
    if (c.isAnimating) c.forward();
    c.repeat();
  }

  @override
  void dispose() {
    _noController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                top: 7,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 40),
                        InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Icon(Icons.arrow_back_outlined)),
                        const SmartLabel(smartFanString),
                        const SizedBox(height: 26),
                        SwitchWidget(context.read<HomeBloc>().switchSmartFan,
                            SwitchSmartFanEvent()),
                        SizedBox(height: 20),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  SizedBox(height: 105),
                ],
              ),
            ),
            // SizedBox(width: 10,),
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 260,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Lottie.asset(
                    fanLottiePath,
                    fit: BoxFit.fill,
                    animate: widget.isFanOff ? true : false,
                    controller: widget.isFanOff ? _controller : _noController,
                  ),
                )
              ],
            ),
            const Padding(
                padding: EdgeInsets.only(
              right: 10,
            )),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MoodToggleButtons(modeString ,[airString,mildString,breezeString]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Speed',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontFamily: "Lexend",
                      fontSize: 30,
                    ),                  ),
                  Text(
                    '${widget.speed.toInt()}',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontFamily: "Lexend",
                      fontSize: 30,
                    ),                  ),
                ],
              ),
              SliderTheme(
                data: const SliderThemeData(
                    trackHeight: 5,
                    thumbColor: color_16,
                    activeTrackColor: color_16,
                    inactiveTrackColor: color_0,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8)),
                child: Slider(
                  min: 0,
                  max: 5,
                  onChanged: (val) {
                    changespeed(_controller);
                    // widget.changeSpeed(val);
                  },
                  value: widget.speed,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      offString,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      oneHundredString,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

