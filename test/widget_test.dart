// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:finpeek/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that HomePage displays welcome text and a Get Started button.
    expect(find.text('Welcome To LedgerOne'), findsOneWidget);
    expect(find.text('Get Started'), findsOneWidget);

    // Tap the 'Get Started' button and wait for navigation.
    await tester.tap(find.text('Get Started'));
    await tester.pumpAndSettle();

    // Verify that we navigated to the Login page.
    expect(find.text('Login'), findsOneWidget);
  });
}
