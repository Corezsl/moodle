import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:moodle_clone/main.dart';

void main() {
  testWidgets('App renders dashboard and courses screen correctly',
      (WidgetTester tester) async {
    // Set desktop screen size
    tester.view.physicalSize = const Size(1200, 800);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });

    // Build our app and trigger a frame.
    await tester.pumpWidget(const MoodleCloneApp());

    // Verify that Moodle warning banner text exists.
    expect(find.textContaining('Timeline Upgrade:'), findsOneWidget);

    // Verify that Dashboard title and nav link exist (total 2).
    expect(find.text('Dashboard'), findsNWidgets(2));

    // Navigate to My Courses
    await tester.tap(find.text('My Modules and Courses'));
    await tester.pumpAndSettle();

    // Verify Courses page contains title
    expect(find.text('This is the courses overview page.'), findsOneWidget);
  });
}
