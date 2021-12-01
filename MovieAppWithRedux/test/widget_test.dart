// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:teest_api/data/movies_api.dart';
import 'package:teest_api/epics/app_epics.dart';

import 'package:teest_api/main.dart';
import 'package:teest_api/models/app_state.dart';
import 'package:teest_api/reducer/reducer.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.

    final MoviesApi moviesApi = MoviesApi();
    final AppEpics epics = AppEpics(moviesApi);

    final Store<AppState> store = Store<AppState>(
      reducer,
      initialState: AppState(),
      middleware: <Middleware<AppState>>[
        EpicMiddleware<AppState>(epics.epics),
      ],
    );

    await tester.pumpWidget(MyApp(store: store));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
