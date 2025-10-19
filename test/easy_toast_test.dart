import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:easy_toast_plus/easy_toast.dart';

void main() {
  testWidgets('EasyToast.show displays a toast message', (
    WidgetTester tester,
  ) async {
    // Build a simple test widget
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: Center(child: Text('Test App'))),
      ),
    );

    // Show a toast
    EasyToast.show(
      tester.element(find.text('Test App')),
      'Hello Test Toast',
      duration: const Duration(milliseconds: 500),
    );

    // Rebuild widget tree to show overlay
    await tester.pump();

    // Verify that toast text appears
    expect(find.text('Hello Test Toast'), findsOneWidget);

    // Wait for the toast duration to expire
    await tester.pump(const Duration(seconds: 1));

    // Verify that the toast is removed
    expect(find.text('Hello Test Toast'), findsNothing);
  });
}
