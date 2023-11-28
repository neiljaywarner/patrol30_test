import 'package:patrol/patrol.dart';

import '../test/test_shared/counter_fab_helpers.dart';

// must use patrol develop
void main() {
  patrolTest(
    '(patrol) counter is incremented when plus button is tapped',
    (PatrolIntegrationTester $) async {
      // PatrolIntegrationTester extends finders.PatrolTester used in patrolWidgetTest and testShared
      await tapFabAndVerifyCounter($);
    },
  );
}
/*
patrolTest('demo', (PatrolIntegrationTester $) async {
    await $.pumpWidgetAndSettle(AwesomeApp());
    // prepare network conditions
    await $.native.enableCellular();
    await $.native.disableWifi();

    // toggle system theme
    await $.native.enableDarkMode();

    // handle native location permission request dialog
    await $.native.selectFineLocation();
    await $.native.grantPermissionWhenInUse();

    // tap on the first notification
    await $.native.openNotifications();
    await $.native.tapOnNotificationByIndex(0);
  });
 */
