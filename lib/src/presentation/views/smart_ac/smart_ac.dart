import 'package:flutter/material.dart';
import 'components/body.dart';

class SmartAC extends StatelessWidget {
  static String routeName = '/smart-ac';
  const SmartAC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SmartACViewModel>(
        onModelReady: (model) => {},
        builder: (context, model, child) {
          return Material(
            child: SlidingUpPanel(
              controller: model.pc,
              backdropEnabled: true,
              boxShadow: const [],
              body: Scaffold(
                backgroundColor: const Color(0xFFF2F2F2),
                body: Body(
                  model: model,
                ),
              ),
              panel: ExpandableBottomSheet(model: model),
            ),
          );
        });
  }
}
