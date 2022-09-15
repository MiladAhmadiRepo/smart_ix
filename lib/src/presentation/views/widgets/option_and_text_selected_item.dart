import 'package:flutter/material.dart';

class OptionAndTextSelectedItem extends StatefulWidget {
  const OptionAndTextSelectedItem({super.key});

  @override
  State<OptionAndTextSelectedItem> createState() => _MyStatefulWidgetState();
}

enum ActivityState { Equal, LessThan, MoreThan }

class _MyStatefulWidgetState extends State<OptionAndTextSelectedItem> {
  ActivityState? _activity = ActivityState.Equal;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.white,
        elevation: 4,
        child: Column(
          children: [
            Row(
              children: <Widget>[
                ListTile(
                  title: const Text('Turn On'),
                  leading: Radio<ActivityState>(
                    value: ActivityState.Equal,
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
                    value: ActivityState.LessThan,
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
                    value: ActivityState.MoreThan,
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
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a term',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
