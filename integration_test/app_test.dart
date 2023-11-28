import 'package:integration_test/integration_test.dart';
import 'package:patrol_finders/patrol_finders.dart';

import '../test/test_shared/counter_fab_helpers.dart';

// this one runs with /Users/Neil.Warner/flutter/bin/flutter --no-color test --machine --start-paused -d emulator-5556 integration_test/app_test.dart
// and provides coverage in inrgration test, widget tests
// and can provide screenshots and test lab etc, even ordinary test lab
// with non-patrol instructions, ie no native automation.
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  patrolWidgetTest(
    'counter is incremented when plus button is tapped',
    (PatrolTester $) async {
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
