import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

// run from patrol test -t integration_test/example_test.dart
// see https://patrol.leancode.co/getting-started
void main() {
  patrolTest(
    'minimum example patrol test with the word app',
    ($) async {
      await $.pumpWidgetAndSettle(
        MaterialApp(
          home: Scaffold(
            appBar: AppBar(title: const Text('app')),
            backgroundColor: Colors.blue,
          ),
        ),
      );

      expect($('app'), findsOneWidget);
      await $.native.pressHome();
    },
  );
}
