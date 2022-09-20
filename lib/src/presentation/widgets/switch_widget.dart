import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_ix/src/presentation/blocs/home/home_bloc.dart';

import '../../config/colors.dart';
import '../../core/constants.dart';

class SwitchWidget extends StatefulWidget {
  bool switchOnOff;

  HomeEvent switchOnOffRelatedToBlocEvent;

  SwitchWidget(this.switchOnOff, this.switchOnOffRelatedToBlocEvent, {Key? key}) : super(key: key);

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          powerString,
          style: Theme.of(context).textTheme.headline2!.copyWith(
            fontFamily: "Lexend",
            fontSize: 30,
          ),
        ),
        const SizedBox(height: 4),
        Switch.adaptive(
          inactiveThumbColor: color_18,
          inactiveTrackColor: color_0,
          activeColor: color_16,
          activeTrackColor: color_16,
          value: widget.switchOnOff,
          onChanged: (value) {
            context.read<HomeBloc>().add(widget.switchOnOffRelatedToBlocEvent);
          },
        )
      ],
    );
  }
}
