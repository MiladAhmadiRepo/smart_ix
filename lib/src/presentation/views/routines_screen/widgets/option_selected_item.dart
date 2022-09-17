import 'package:flutter/material.dart';

class OptionSelectedItem extends StatefulWidget {
  const OptionSelectedItem({super.key});

  @override
  State<OptionSelectedItem> createState() => _OptionSelectedItemState();
}
enum ActivityState { On, Off }

class _OptionSelectedItemState extends State<OptionSelectedItem> {
  ActivityState? _activity = ActivityState.Off;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.white,
        elevation: 4,
        child: Row(
          children: <Widget>[
            ListTile(
              title: const Text('Turn On'),
              leading: Radio<ActivityState>(
                value: ActivityState.On,
                groupValue: _activity,
                onChanged: (ActivityState? value) {
                  setState(() {
                    _activity = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Turn Off'),
              leading: Radio<ActivityState>(
                value: ActivityState.Off,
                groupValue: _activity,
                onChanged: (ActivityState? value) {
                  setState(() {
                    _activity = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}