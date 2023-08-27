// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:counter_app/main.dart';

void main() {
  group('Testing Counter Widget', () { 

    testWidgets('Testing increment Counter Widget', (WidgetTester tester)async{

    //setup
    await tester.pumpWidget(const MyApp());
    //do
    await tester.tap(find.byIcon(Icons.add));
   
    await tester.pump();
    //test

    expect(find.text('0'), findsNothing);
     expect(find.text('1'), findsOneWidget);
  });

  testWidgets('Testing decrement Counter Widget', (WidgetTester tester )async {
//setup
   await tester.pumpWidget(const MyApp());
  //do
  await tester.tap(find.byIcon(Icons.remove));

  await tester.pump();
  //test

 
  expect(find.text('-1'), findsOneWidget);

  });

  });
  
}
