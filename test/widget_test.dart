import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol30_test/main.dart';
import 'package:patrol_finders/patrol_finders.dart';

void main() {
  patrolWidgetTest(
    'counter is incremented when plus button is tapped',
    (PatrolTester $) async {
      await $.pumpWidget(const MyApp());

      expect($('0'), findsOneWidget);
      expect($('11'), findsNothing);

      await $(Icons.add).tap();

      expect($('0'), findsNothing);
      expect($('1'), findsOneWidget);
    },
  );
}
