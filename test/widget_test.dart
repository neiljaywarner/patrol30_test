import 'package:flutter_test/flutter_test.dart';

import 'test_shared/counter_fab_helpers.dart';

void main() {
  group('end-to-end test', () {
    testWidgets('tap on the floating action button, verify counter', (tester) async {
      await tapFabAndVerifyCounter(tester);
    });
  });
}
