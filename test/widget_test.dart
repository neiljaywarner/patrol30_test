import 'package:patrol_finders/patrol_finders.dart';

import 'test_shared/counter_fab_helpers.dart';

void main() {
  patrolWidgetTest(
    'counter is incremented when plus button is tapped',
    (PatrolTester $) async {
      await tapFabAndVerifyCounter($);
    },
  );
}
