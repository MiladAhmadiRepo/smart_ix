import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_ix/src/core/utils/screen_config.dart';

import '../../../../core/constants.dart';
import '../../../../core/utils/utils.dart';
import '../../../blocs/routines/routines_bloc.dart';

class OptionAndTextSelectedItem extends StatefulWidget {
  final String whenOrThen;

  const OptionAndTextSelectedItem(this.whenOrThen, {super.key});

  @override
  State<OptionAndTextSelectedItem> createState() => _MyStatefulWidgetState();
}

enum ActivityState { Equal, LessThan, MoreThan }

class _MyStatefulWidgetState extends State<OptionAndTextSelectedItem> {
  late ActivityState? _activityState = ActivityState.Equal;
  TextEditingController _textEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void didChangeDependencies() {
    _activityState = ActivityState.values
        .byName(context.read<RoutinesBloc>().getWhenOrThenOptionValue("Equal",ActivityState, widget.whenOrThen));
    _textEditingController.text =
        context.read<RoutinesBloc>().getWhenOrThenTextFieldValue(widget.whenOrThen);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoutinesBloc, RoutinesState>(builder: (BuildContext context, state) {
      if (state is LoadOptionAndTextItemState) {
        return SizedBox(
          width: SizeConfig.screenWidth,
          height: getFortyPercentOfHeight(),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Colors.white,
            elevation: 4,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: RadioListTile<ActivityState>(
                      title: const Text(equalString),
                      value: ActivityState.Equal,
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
                  Flexible(
                    child: RadioListTile<ActivityState>(
                      title: const Text(lessThanString),
                      value: ActivityState.LessThan,
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
                  Flexible(
                    child: RadioListTile<ActivityState>(
                      title: const Text(moreThanString),
                      value: ActivityState.MoreThan,
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
                  const SizedBox(
                    height: 10,
                  ),
                  Flexible(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: getSeventyPercentOfWidth(),
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                          child: TextFormField(
                            onChanged: (value) {
                              context
                                  .read<RoutinesBloc>()
                                  .setWhenOrThenValue(value, widget.whenOrThen);
                            },
                            validator: (value) {
                              return numberValidation(value);
                            },
                            controller: _textEditingController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: enterAValueString,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
      return Container();
    });
  }
}
