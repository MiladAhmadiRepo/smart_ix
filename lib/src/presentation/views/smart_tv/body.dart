import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/colors.dart';
import '../../../core/constants.dart';
import '../../blocs/home/home_bloc.dart';
import '../../widgets/SmartLabel.dart';
import '../../widgets/intensity_slider.dart';
import '../../widgets/mood_toggle_buttons.dart';
import '../../widgets/switch_widget.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool switchOnOff = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
  builder: (context, state) {
    return Stack(
      children: [
        Align(
          alignment: AlignmentDirectional.topEnd,
          child: Padding(
            padding: EdgeInsets.only(top: 50),
            child: Image.asset(
              tvSvgPath,
              height: 450,
              width: 260,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 19, top: 7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 40),
                        InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Icon(Icons.arrow_back_outlined)),
                        const SmartLabel(smartTvString),
                        SizedBox(height: 26),
                        SwitchWidget(context.read<HomeBloc>().switchSmartTv,
                            SwitchSmartTvEvent()),
                        SizedBox(height: 90),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            MoodToggleButtons(modeString ,[tvShowString,moviesString,myListString]),
            SizedBox(height: 20),

            Intensity( ),
          ],
        ),
      ],
    );
  },
);
  }
}
