// This is a basic Flutter widget test.

// Import necessary packages
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Import the main app file
import 'package:UrbanBasket/main.dart';

void main() {
  // Define a test for the counter increment functionality
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build the MyApp widget and trigger a frame
    await tester.pumpWidget(const MyAmazonCloneApp());

    // Verify that the counter starts at 0
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that the counter has incremented
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

