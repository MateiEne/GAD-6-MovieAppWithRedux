import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:teest_api/data/movies_api.dart';
import 'package:teest_api/epics/app_epics.dart';
import 'package:teest_api/models/app_state.dart';
import 'package:teest_api/presentation/movie_details.dart';
import 'package:teest_api/presentation/movies_page.dart';
import 'package:teest_api/reducer/reducer.dart';

void main() {
  final MoviesApi moviesApi = MoviesApi();
  final AppEpics epics = AppEpics(moviesApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: <Middleware<AppState>>[
      (
        Store<AppState> store,
        dynamic action,
        NextDispatcher next,
      ) {
        next(action);
        print("Action: $action, state: ${store.state}");
      },
      EpicMiddleware<AppState>(epics.epics),
    ],
  );

  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        theme: ThemeData.dark(),
        routes: {
          '/': (context) {
            return const MoviesPage();
          },
          '/movieDetails': (context) {
            return const MovieDetails();
          }
        },
      ),
    );
  }
}
