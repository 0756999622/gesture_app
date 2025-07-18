import 'package:flutter_test/flutter_test.dart';

import 'package:gesture_app/main.dart';

void main() {
  testWidgets('App loads and UI elements are present', (
    WidgetTester tester,
  ) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(GestureApp());

    // Verify the home page title is present.
    expect(find.text('Gesture App Home'), findsOneWidget);

    // Verify navigation buttons are present.
    expect(find.text('Gesture Control'), findsOneWidget);
    expect(find.text('Screen Settings'), findsOneWidget);
    expect(find.text('General Settings'), findsOneWidget);
    expect(find.text('About'), findsOneWidget);
  });
}
