import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol30_test/main.dart' as app;
import 'package:patrol_finders/patrol_finders.dart';

Future<void> tapFabAndVerifyCounter(PatrolTester $) async {
  // Load app widget.
  app.main();
  await $.pumpAndSettle();
  expect($('0'), findsOneWidget);
  expect($('11'), findsNothing);

  await $(Icons.add).tap();

  expect($('0'), findsNothing);
  expect($('1'), findsOneWidget);
}
