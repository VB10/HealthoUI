// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:healthoui/main.dart';
import 'package:healthoui/ui/shared/widget/rounded_button_widget.dart';
import 'package:healthoui/ui/views/login/phone_view.dart';

void main() {
  testWidgets('Phone number field fill and navigate new page.',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: PhoneView(),
    ));

    expect(find.byType(TextFormField), findsOneWidget);
    await tester.enterText(find.byType(TextFormField), "1234");
    await tester.tap(find.byType(RoundedButtonWidget));

    expect(tester.testTextInput.editingState, isNotNull);
    expect(find.text('Enter your Mobile Number'), findsOneWidget);
    expect(find.text('VERIFY'), findsOneWidget);
  });
}
