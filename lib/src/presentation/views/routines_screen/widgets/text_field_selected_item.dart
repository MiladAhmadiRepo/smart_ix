import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/colors.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/utils/screen_config.dart';
import '../../../blocs/routines/routines_bloc.dart';

class TextFieldSelectedItem extends StatefulWidget {
  final String whenOrThen;
  const TextFieldSelectedItem(this.whenOrThen,{super.key});

  @override
  State<TextFieldSelectedItem> createState() => _TextFieldSelectedItemState();
}

class _TextFieldSelectedItemState extends State<TextFieldSelectedItem> {
  TextEditingController _textEditingController=TextEditingController();

  @override
  void didChangeDependencies() {
    _textEditingController.text= context.read<RoutinesBloc>().getWhenValue();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoutinesBloc, RoutinesState>(builder: (BuildContext context, state) {
      if (state is LoadTextFieldSelectedItemState) {
        return SizedBox(
          width: SizeConfig.screenWidth,
          height: getTenPercentOfHeight (),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: color_0,
            elevation: 4,
            child:   TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: enterAValueString,
              ),
            )
          ),
        );
      }
      return Container();
    });
  }
}