import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/colors.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/utils/screen_config.dart';
import '../../../blocs/routines/routines_bloc.dart';

class OptionSelectedItem extends StatefulWidget {
  final String whenOrThen;

  const OptionSelectedItem(this.whenOrThen, {super.key});

  @override
  State<OptionSelectedItem> createState() => _OptionSelectedItemState();
}

enum ActivityState { On, Off }

class _OptionSelectedItemState extends State<OptionSelectedItem> {
  ActivityState? _activityState = ActivityState.Off;

  @override
  void didChangeDependencies() {
    _activityState = ActivityState.values
        .byName(context.read<RoutinesBloc>().getWhenOrThenOptionValue("On",ActivityState, widget.whenOrThen));
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoutinesBloc, RoutinesState>(builder: (BuildContext context, state) {
      if (state is LoadOptionSelectedItemState) {
        return SizedBox(
          width: SizeConfig.screenWidth,
          height: getTenPercentOfHeight(),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: color_0,
            elevation: 4,
            child: Row(
              children: <Widget>[
                Flexible(
                  child: ListTile(
                    title: const Text(turnOnString),
                    leading: Radio<ActivityState>(
                      value: ActivityState.On,
                      groupValue: _activityState,
                      onChanged: (ActivityState? value) {
                        setState(() {
                          _activityState = value;
                          context.read<RoutinesBloc>().setWhenOrThenOptionValue(
                              ActivityState.values[value!.index].name, widget.whenOrThen);
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: ListTile(
                    title: const Text(turnOffString),
                    leading: Radio<ActivityState>(
                      value: ActivityState.Off,
                      groupValue: _activityState,
                      onChanged: (ActivityState? value) {
                        setState(() {
                          _activityState = value;
                          context.read<RoutinesBloc>().setWhenOrThenOptionValue(
                              ActivityState.values[value!.index].name, widget.whenOrThen);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
      return Container();
    });
  }
}
