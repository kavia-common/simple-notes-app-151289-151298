import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notes_frontend/main.dart';

void main() {
  testWidgets('Shows app bar and FAB', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());

    expect(find.byType(AppBar), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });

  testWidgets('App bar has correct title', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());

    expect(find.text('Notes'), findsOneWidget);
  });
}
