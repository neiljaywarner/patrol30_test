import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol30_test/main.dart' as app;

Future<void> tapFabAndVerifyCounter(WidgetTester tester) async {
  // Load app widget.
  app.main();
  await tester.pumpAndSettle();
  // Verify the counter starts at 0.
  expect(find.text('0'), findsOneWidget);

  // Finds the floating action button to tap on.
  final fab = find.byKey(const Key('increment'));

  // Emulate a tap on the floating action button.
  await tester.tap(fab);

  // Trigger a frame.
  await tester.pumpAndSettle();

  // Verify the counter increments by 1.
  expect(find.text('1'), findsOneWidget);
}
