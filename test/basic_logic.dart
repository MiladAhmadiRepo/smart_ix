// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:smart_ix/main.dart';
import 'package:smart_ix/src/presentation/blocs/home/home_bloc.dart';

void main() {
  test('field Validation', () {
    final homeBloc = HomeBloc();
    String? result = homeBloc.fieldValidation(null, true);
    expect(result, null);
  });
}
